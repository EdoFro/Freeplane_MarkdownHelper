package edofro.MarkDownHelper

//region: imports

import groovy.swing.SwingBuilder
import javax.swing.*

import java.awt.*
// import java.awt.GraphicsEnvironment
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
import io.github.gitbucket.markedj.Options

//end:

class MarkdownPreview {

    //region: properties
    
    SwingBuilder swing    = new SwingBuilder()
    def static dialogName = 'MDHPreviewDialog_013'
    def myEditorName      = 'MDHPreviewPanel'
    def iniMsg            = "----- select the node with the note you want to view and click the 'Turn ON' button ----"
    def c                 = ScriptUtils.c()
    Options options       = new Options()
    
    //end:

    //region: constructor
    
    public MarkdownPreview(){
        options.getWhitelist().addProtocols("img", "src", "http", "https", "file")
        
        def newEditorPane = { t ->
            def com = swing.editorPane(
                editable    : false,
                contentType : "text/html",                
                //background: Color.pink,
                text : t,
                //preferredSize: new Dimension(30, 50),
                name: myEditorName,
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
        def noteFrame
        def bttnOnOff
        def bttnFollow
        def bttnPanel
        def previousBounds

        def scrollPane = {
            def com = swing.scrollPane(
                //background: Color.blue,
            ){
                editorPane = newEditorPane(iniMsg)
            }
            com.verticalScrollBar.unitIncrement = 16 
            return com
        }

        def buttonPanel = {
           swing.panel(
               constraints : BorderLayout.NORTH,
               //background: Color.yellow,
           ) {
                flowLayout(
                    alignment : FlowLayout.RIGHT,
                )
                bttnOnOff = toggleButton(
                    text : 'Turn ON',
                    toolTipText: "(in)activates the preview panel. It links it to the node that was selected when clicking the button and shows its note.",
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
                    toolTipText: "when active it 'follows' the selected node and shows the nearest MDH node above it. Click again to unfollow",
                    enabled : false ,
                    actionPerformed : {e ->
                          def bttn = e.source
                          bttn.text = activateSelectionListener(editorPane, !bttn.selected)
                          MarkdownDialog.focusMap()
                   },
                )
                toggleButton(
                    text : 'Maximize panel',
                    toolTipText: 'Maximizes the preview panel to fit the screen. You can also drag the borders to resize the panel.',
                    actionPerformed : {e ->
                          def bttn = e.source
                          if(bttn.selected){
                              previousBounds   = new Rectangle(noteFrame.bounds)
                              noteFrame.bounds = noteFrame.graphicsConfiguration.bounds
                              bttn.text = 'Back to previous size'
                          } else {
                              noteFrame.bounds = previousBounds
                              bttn.text = 'Maximize panel'
                          }
                          MarkdownDialog.focusMap()
                   },                  
                )
                toggleButton(
                    text : 'alwaysOnTop',
                    toolTipText: "(in)activate the 'Allways on Top' state for the preview panel",
                    actionPerformed : {e ->
                          def bttn = e.source
                          noteFrame.alwaysOnTop = bttn.selected
                          MarkdownDialog.focusMap()
                   }
                )
            }
        }

        noteFrame = swing.dialog(
            title : 'MarkdownHelper Preview',
            name: dialogName,
            locationRelativeTo: UITools.frame,
            preferredSize: new Dimension(450,400),
            //background: Color.green,
            iconImage : MenuUtils.getMenuItemIcon('IconAction.MarkdownHelper/MarkdownHelper-icon').imageIcon.image,
            defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
            pack : true,
            show : true,
            // id:'myDialog',
            modal:false,
            owner:UITools.frame,
        ) {
            borderLayout()
            bttnPanel = buttonPanel()
            scrollPane()
        }
        
        noteFrame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                // System.out.println("WindowClosingDemo.windowClosing");
                // System.exit(0);
                deactivateSelectionListener()
                deactivateChangeListener()
                bttnOnOff.selected  = false
                bttnOnOff.text      = 'Turn ON'
                bttnFollow.enabled  = false
                bttnFollow.selected = false
                bttnFollow.text     = 'Follow'
                editorPane.text     = iniMsg
            }
        })
        
        // MarkdownDialog.addArrowMoves( bttnPanel, 0 ) // no vale la pena. no supe hacerlo funcionar acá
        
        EditorStyle.updateFormat(editorPane, EditorStyle.getUserStyleNode(MDH.MDHPreviewStyle))
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
                // <style>${htmlStyle}</style>
                html = """<html>
                            <body>
                                ${Marked.marked(nodo.note.plain, options)}
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
    
    def static showMDHPreview(){
        def MDHPreviewDialog = UITools.frame.ownedWindows.find{ it.name == MarkdownPreview.dialogName }
        if (MDHPreviewDialog){
            MDHPreviewDialog.show()
            def editorPane =  MDHPreviewDialog.contentPane.components[1].components[0].components[0]
            def styleNode = EditorStyle.getUserStyleNode(MDH.MDHPreviewStyle)
            EditorStyle.updateFormat(editorPane, styleNode)
            return MDHPreviewDialog.name
        } else {
            new MarkdownPreview()
            return 'build'
        }    
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

