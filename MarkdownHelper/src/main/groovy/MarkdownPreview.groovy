package edofro.MarkDownHelper

//region: imports

import groovy.swing.SwingBuilder
import javax.swing.*

import java.awt.*
// import java.awt.Dimension
// import java.awt.Desktop
// import java.awt.BorderLayout
// import java.awt.Color

import java.awt.event.WindowAdapter
import java.awt.event.WindowEvent

import javax.swing.event.HyperlinkEvent
import javax.swing.event.HyperlinkListener

import org.freeplane.features.map.INodeSelectionListener;
import org.freeplane.features.map.INodeChangeListener
import org.freeplane.features.map.NodeChangeEvent
import org.freeplane.features.map.NodeModel
import org.freeplane.features.mode.Controller

import org.freeplane.core.util.MenuUtils
import org.freeplane.core.ui.components.UITools
import org.freeplane.plugin.script.proxy.ScriptUtils
import org.freeplane.plugin.script.proxy.NodeProxy

import io.github.gitbucket.markedj.Marked

//end:

class MarkdownPreview {

    //region: properties
    
    SwingBuilder swing = new SwingBuilder()
    def dialogName = 'frameNota'
    def myPaneName = 'myContentPanel'
    def iniMsg = '----- select the node with the note you want to view and click the button ----'
    def c = ScriptUtils.c()
    final String htmlStyle         =
        """
            table {border: 0; border-spacing: 0;}
            th, td {border: 1px solid;}
            pre {
                background-color: rgb(230, 230, 230);
                border: 1px solid rgb(0, 0, 0);
                display: block;
                padding: 10px;
            }
            code {
                font-family: Consolas,"courier new";
                color: rgb(0, 80, 0);
            }
        """
    
    //end:

    //region: constructor
    
    public MarkdownPreview(){
        
        def newEditorPane = { t ->
            def com = swing.editorPane(
                editable    : false,
                contentType : "text/html",                
                //background: Color.pink,
                text : t,
                //preferredSize: new Dimension(30, 50),
            ){}
            com.addHyperlinkListener(e -> {
                if (HyperlinkEvent.EventType.ACTIVATED.equals(e.getEventType())) {
                    Desktop desktop = Desktop.getDesktop();
                    try {
                        desktop.browse(e.getURL().toURI());
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            })
            return com
        }
        
        def editorPane

        def scrollPane = {
            def com = swing.scrollPane(
                //background: Color.blue,
            ){
                editorPane = newEditorPane(iniMsg)
            }
            com.verticalScrollBar.unitIncrement = 16 
            return com
        }

        def noteFrame
        def bttnFollow

        def buttonPanel = {
           swing.panel(
               constraints : BorderLayout.NORTH,
               //background: Color.yellow,
           ) {
              gridLayout()
              toggleButton(
                  text : 'Turn ON',
                  //margin      : new Insets(10,15,10,15),
                  actionPerformed : {e ->
                        def bttn = e.source
                        def off = !bttn.selected
                        bttn.text = activateChangeListener(editorPane, c.selected, off)
                        if(off){
                            bttnFollow.selected = false
                            deactivateSelectionListener()
                            bttnFollow.text = 'Follow'
                        }
                        bttnFollow.enabled = !off
                        MarkdownDialog.focusMap()
                 }   
              )
              bttnFollow = toggleButton(
                  text : 'Follow',
                  enabled : false ,
                  actionPerformed : {e ->
                        def bttn = e.source
                        bttn.text = activateSelectionListener(editorPane, !bttn.selected)
                        MarkdownDialog.focusMap()
                 },
              )
              // button(
                  // text : 'botón',
              // )
              toggleButton(
                  text : 'alwaysOnTop',
                  actionPerformed : {e ->
                        def bttn = e.source
                        noteFrame.alwaysOnTop = bttn.selected
                        MarkdownDialog.focusMap()
                 }
              )
           }
        }

        noteFrame = swing.frame(
            title : 'MarkdownHelper Preview',
            name: dialogName,
            locationRelativeTo: UITools.frame,
            preferredSize: new Dimension(450,400),
            //background: Color.green,
            iconImage : MenuUtils.getMenuItemIcon('IconAction.MarkdownHelper/copyPlain').imageIcon.image,
            defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
            pack : true,
            show : true,
           // id:'myDialog',
           // modal:false,
           // owner:UITools.frame,
        ) {
            borderLayout()
            buttonPanel()
            scrollPane()
        }
        
        noteFrame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                // System.out.println("WindowClosingDemo.windowClosing");
                // System.exit(0);
                deactivateSelectionListener()
                deactivateChangeListener()
            }
        })
        MarkdownDialog.addArrowMoves( noteFrame, 0 )
    }
    
    //end:
    
    //region: methods

    def activateChangeListener(comp, nodo, boolean deactivate = false){
        def mapController = Controller.currentModeController.mapController;
        deactivateChangeListener()
        if (deactivate) {
            comp.text = iniMsg
            return 'Turn On'
        }
        if(nodo){
            def myChgListener = new MDHNodeChangeListener(comp, nodo );
            mapController.addNodeChangeListener(myChgListener);
            comp.text = getHtmlFromNote(nodo)
        }
        return 'Turn Off'
    }
    
    def deactivateChangeListener(){
        def mapController = Controller.currentModeController.mapController;
        def listenerFound = false;
        (mapController.nodeChangeListeners.findAll { it.class.name == MDHNodeChangeListener.class.name }).each {
            mapController.removeNodeChangeListener(it);
            listenerFound = true;
        }
        return listenerFound
    }

    def activateSelectionListener(comp, boolean deactivate = false){
        def mapController = Controller.currentModeController.mapController;
        deactivateSelectionListener()
        if (deactivate) {
            return 'Follow'
        }
        def mySelListener = new MDHSelectionListener(comp);
        mapController.addNodeSelectionListener(mySelListener);
        activateChangeListener(comp, getMDNode(c.selected)) // activar el panel para nodo MDH sobre seleccionado
        return 'Unfollow'
    }

    def deactivateSelectionListener(){
        def mapController = Controller.currentModeController.mapController;
        def listenerFound = false;
        (mapController.nodeSelectionListeners.findAll { it.class.name == MDHSelectionListener.class.name }).each {
            mapController.removeNodeSelectionListener(it);
            listenerFound = true;
        }
        return listenerFound
    }

    def getHtmlFromNote(nodo){
        if(!nodo?.note) return null
        def noteType = nodo.noteContentType
        def html
        switch (noteType){
            case ['auto','html']:
                html = nodo.plainNote.startsWith('=')?nodo.note.plain:nodo.note.html
                break
            case 'markdown':
                html = """<html>
                            <style>${htmlStyle}</style>
                            <body>
                                ${Marked.marked(nodo.note.plain)}
                            </body>
                        </html>"""
                break
            default:
                html = "Node's note not recognized"
                break
        }
        return html
    }

    def getMDNode(NodeModel nM){
        def n = c.selected.mindMap.node(nM.ID)
        return getMDNode(n)
    }

    def getMDNode(NodeProxy n){
        return n.parent?.pathToRoot?.reverse().find{it.style.name == 'MarkdownHelperNode'}
    }

    //end:
    
    //region: listeners

    class MDHNodeChangeListener implements INodeChangeListener {
        def comp
        def node
        
        MDHNodeChangeListener(def component, nodo) {
            comp = component
            node = nodo
        }
        
        public void nodeChanged(NodeChangeEvent event) {
            Object property = event.property
            def id = event.node.getID()
            if (id == node.id) {
                comp.text = getHtmlFromNote(node)
            }
        }
    }

    class MDHSelectionListener implements INodeSelectionListener {
        def comp   //component, en este caso editorPane
        def node    //nodo MDH que está mirando actualmente
        def sNode   //último nodo seleccionado
        
        MDHSelectionListener(def component) {
            comp = component;
        }
        
        void onSelect(NodeModel selNode) {
            if (sNode != selNode){  //si el nuevo nodo seleccionado es otro que el anterior seleccionado
                //busca el nodo MDH más cercano
                def mdNode = getMDNode(selNode)
                // si el nuevo nodo MDH es diferente al actual nodo MDH
                if (mdNode && node != mdNode){
                    activateChangeListener(comp, mdNode) // activar el panel para el nuevo nodo MDH
                    node = mdNode
                }
                sNode = selNode
            }
        }
        void onDeselect(NodeModel deselNode) {
            //
        }
    }
    
    //end:







}

