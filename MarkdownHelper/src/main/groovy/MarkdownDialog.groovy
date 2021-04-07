package edofro.MarkDownHelper

import groovy.swing.SwingBuilder
import javax.swing.*
import java.awt.*
import java.awt.BorderLayout as BL
import javax.swing.filechooser.FileNameExtensionFilter
import org.freeplane.core.ui.components.UITools
import org.freeplane.plugin.script.proxy.ScriptUtils
import org.freeplane.core.util.MenuUtils
import org.freeplane.features.mode.Controller

import java.awt.event.ActionEvent
import java.awt.event.KeyEvent


class MarkdownDialog{
    
    //TODO: usar dato de librería
    static final String MDNodeStyle   = 'MarkdownHelperNode' 
    static final String MDNodeLinkStyle   = 'MarkdownHelperLink'
    
    static final Map icon = [
            leaf            : 'emoji-1F343' ,
            ignoreNode      : 'emoji-26D4'  ,
            ignoreContent   : 'emoji-1F648' ,
            newLine         : 'emoji-21A9'  ,
            number          : 'emoji-1F522' ,
            bullet          : 'emoji-1F537' ,
            centered        : 'emoji-2194'  ,
            alignRight      : 'emoji-27A1'  ,
            completed       : 'emoji-2714'  ,
            isTask          : 'emoji-1F532' ,
            removeFirst     : 'RemoveIcon_0_Action',
            removeLast      : 'RemoveIconAction',
            removeAll       : 'RemoveAllIconsAction',
            help            : 'emoji-2753'  ,
            save            : 'emoji-1F4BE' ,
            gotoMD          : 'emoji-1F519' ,
            toPlain         : 'emoji-1F4DD' ,
            rootFolder      : 'emoji-1F4CD' ,
            linked          : 'emoji-1F517'
        ]

    // definiciones botones iconos
    //TODO: usar datos de libreria para iconos ( y acciones)
    static final ArrayList tbActions = ['RemoveIcon_0_Action', 'RemoveIconAction', 'RemoveAllIconsAction', 'IconAction.emoji-1F343', 'IconAction.emoji-1F648', 'IconAction.emoji-26D4'
                    , 'IconAction.emoji-1F522', 'IconAction.emoji-1F537', 'IconAction.emoji-27A1', 'IconAction.emoji-2194', 'IconAction.emoji-21A9'
                    , 'IconAction.emoji-2714', 'IconAction.emoji-1F532']
    static final ArrayList tbIcons   = ['RemoveIcon_0_Action', 'RemoveIconAction', 'RemoveAllIconsAction', 'IconAction.emoji-1F343', 'IconAction.emoji-1F648', 'IconAction.emoji-26D4'
                    , 'IconAction.emoji-1F522', 'IconAction.emoji-1F537', 'IconAction.emoji-27A1', 'IconAction.emoji-2194', 'IconAction.emoji-21A9'
                    , 'IconAction.emoji-2714', 'IconAction.emoji-1F532']
    static final ArrayList tbLabels  = ['Remove first icon', 'Remove Last Icon', 'Remove all icons'
                    , "behave as leaf node (don't look at its descendant)", 'ignore content', 'ignore node and its descendant'
                    , 'numbered list', 'bulleted list'
                    , 'align right', 'align centered'
                    , 'add new line'
                    , 'completed', 'is Task']


    // definiciones botones nodos MD
    static final ArrayList formulas  = ['= edofro.MarkDownHelper.MDH.document(node)','= edofro.MarkDownHelper.MDH.TOC(node)','= edofro.MarkDownHelper.MDH.webLink(node)'
                    ,'= edofro.MarkDownHelper.MDH.webImageLink(node)','= edofro.MarkDownHelper.MDH.fileLink(node)','= edofro.MarkDownHelper.MDH.imageLink(node)'
                    ,'= edofro.MarkDownHelper.MDH.list(node)','= edofro.MarkDownHelper.MDH.plainTaskList(node)','= edofro.MarkDownHelper.MDH.nestedTaskList(node)'
                    ,'= edofro.MarkDownHelper.MDH.table(node)','= edofro.MarkDownHelper.MDH.codeBlock(node)','= edofro.MarkDownHelper.MDH.textBlock(node)'
                    ,'-----','= edofro.MarkDownHelper.MDH.comment(node)']
    static final ArrayList labels    = ['Markdown document.md','ToC','web link'
                    ,'web Image','link to local file','local image'
                    ,'list','plain task list','nested task list'
                    ,'table','code block','text block'
                    ,'horizontal line','Comment']
    static final ArrayList atributos = [['headersToUnderline':2,'hideFolded':false,'headerNumbering':true,'topHeadersNumbered':false,'topHeaderStartingNumber':1,'fileLinksRelative':false]
                    ,['TOClevels':2,'TOCindent':false]
                    ,[:],[:],[:],[:],[:],[:],[:],[:],[:],[:],[:],[:]]

    //return " F: ${formulas.size()} - L: ${labels.size()} - L: ${atributos.size()}"

    static final String dialogName = 'MarkDownHelperDialog'
    static final String MDRootAttr = 'MarkdownRootFolder'
    static final String MDNodeAttr = 'fileLinksRelative'
    static final String MDBranchAttr = 'MDHGithubBranch'
    
    
    
    static final SwingBuilder swingBuilder = new SwingBuilder() //TODO: no sé si este va aquí
    
    static String lastNodeID


    //region: --------------- botones MD ---------------------------------------------------------------------------------
    def static creaBotonMD(label, formula, atributos){
        def boton = swingBuilder.button(
            text : label,
            //icon: includeIcon?MenuUtils.getMenuItemIcon(iconos[i]):null,
            toolTipText: "Adds a '${label}' node to the map",
            //preferredSize: prefDimension,
            //minimumSize: minDimension,
            horizontalAlignment:SwingConstants.LEFT,
            margin:new Insets(0,5,0,5),
            borderPainted: false,
            actionPerformed : {
                crearNodoMD(label, formula, atributos)
                focusMap()
            }
        )
        //boton.toolTipText = boton.getBorder().toString()
        return boton
    }

    def static creaContenidoMD(formulas, labels, atributos){
        return swingBuilder.panel(
                layout: new GridLayout(0,1)
            ){
                 formulas.eachWithIndex{f,i ->
                    /*widget(*/    creaBotonMD(labels[i], f, atributos[i])   //)
                    //separator()
                 }
        }
    }

    //formulas.eachWithIndex{f,i ->
    //    crearNodoMD(node,labels[i], f, atributos[i])
    //}

    def static crearNodoMD(label, formula, atributos){
        def nodo = ScriptUtils.c().selected
        def tgtN =  nodo.createChild(label)
        tgtN.style.name = MDNodeStyle
        tgtN.attributes = atributos
        tgtN.noteText = formula

        //TODO: cambiar noteContentType a 'Markdown'
        ScriptUtils.c().select(tgtN)
    }

    //region: --------------- botones Iconos ---------------------------------------------------------------------------------
    def static creaBotonIcon(acc, ic, lab){
        def boton = swingBuilder.button(
            //text : includeText?textoLabel(labels[i]):null,
            icon: MenuUtils.getMenuItemIcon(ic),
            toolTipText: lab,
            // preferredSize: prefDimension,
            margin:new Insets(0,2,0,2),
            borderPainted: false,
            actionPerformed : {
                MenuUtils.executeMenuItems([acc])
                focusMap()
            }
        )
        //boton.toolTipText = boton.getBorder().toString()
        return boton
    }

    def static creaContenidoIcon(actions, icons, labels){
        return swingBuilder.panel(
                layout: new GridLayout(0,5)
            ){
    //           toolBar(
    //           layout: new FlowLayout(FlowLayout.LEFT, 0, 0)
    //
    //            ,layout: new GridLayout(0,1)
    //        ){
                 actions.eachWithIndex{ a, j ->
                    /*widget(*/    creaBotonIcon(a, icons[j], labels[j])   //)
                    //separator()
                 }
     //       }
        }
    }

    //region:
    def static getNodoMarkdown(n){
        def nMD = n.pathToRoot.find{it.attributes.containsKey('headerNumbering')}
    //    UITools.informationMessage(nMD.toString())
        return nMD
    }

    def static creaContenidoPanelInferior(){
        def panelInferior = swingBuilder.panel(
                    layout: new GridLayout(0,5)
            ){
                button(  //HELP
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + icon.help),
                    toolTipText: 'Help information about selected Markdown Node',
                    preferredSize: new Dimension(30, 30),
                    margin:new Insets(0,2,0,2),
                    borderPainted: false,
                    actionPerformed : {
                        //TODO: Help action
                        focusMap()
                    }
                )
                button(  //copy to node
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + icon.toPlain),
                    toolTipText: 'copy Markdown to new node',
                    preferredSize: new Dimension(30, 30),
                    margin:new Insets(0,2,0,2),
                    borderPainted: false,
                    actionPerformed : {
                        def srcN = ScriptUtils.c().selected
                        def i = srcN.parent.getChildPosition(srcN)
                        def tgtN =  srcN.parent.createChild(i+1)
                        tgtN.text = srcN.text
                        tgtN.note = srcN.note
                        tgtN.icons.add(icon.leaf)
                        ScriptUtils.c().select(tgtN)
                        focusMap()
                    }
                )
                button(  //ir a nodo Markdown
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + icon.gotoMD),
                    toolTipText: 'jump to Markdown document node and back',
                    preferredSize: new Dimension(30, 30),
                    margin:new Insets(0,2,0,2),
                    borderPainted: false,
                    actionPerformed : {
                        def srcN = ScriptUtils.c().selected
                        def nMD = getNodoMarkdown(srcN)
                        //UITools.informationMessage(nMD.toString())
                        if(!nMD) {
                            ScriptUtils.c().statusInfo = ' No Markdown document node found!!'
                            if (lastNodeID){
                                def tgtN = srcN.map.node(lastNodeID)
                                ScriptUtils.c().select(tgtN)
                            }
                        } else {
                            if(srcN.equals(nMD)){
                                if (lastNodeID){
                                    def tgtN = srcN.map.node(lastNodeID)
                                    ScriptUtils.c().select(tgtN)
                                }
                            } else {
                                ScriptUtils.c().select(nMD)
                                lastNodeID = srcN.id
                            }
                        }
                        focusMap()
                    }
                )
                button(  //save Markdown to file
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + icon.save),
                    toolTipText: 'save note to file',
                    preferredSize: new Dimension(30, 30),
                    margin:new Insets(0,2,0,2),
                    borderPainted: false,
                    actionPerformed : {
                        saveFile(ScriptUtils.c().selected)
                        focusMap()
                   }
                )
                button(  //path to MD root folder
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + icon.rootFolder),
                    toolTipText: "Adds an attribute to the selected node containing a proposed uri as Root Directory",
                    preferredSize: new Dimension(30, 30),
                    margin:new Insets(0,2,0,2),
                    borderPainted: false,
                    actionPerformed : {
                        def nodo = ScriptUtils.c().selected
                        if ( UITools.showConfirmDialog(null, "Add attribute to selected node: \n\n  $nodo ?", "Markdown root folder", 2, 2)==0) {
                            def nFolder
                            nFolder = nodo.link.file?nodo:null
                            nFolder = nFolder?:nodo.pathToRoot.reverse().find{it.link?.file?.directory}
                            nFolder = nFolder?:nodo.find{(it.link.file?true:false) && it.attributes.containsKey(MDNodeAttr)}
                            nFolder = nFolder?:nodo.find{(it.link.file?true:false)}
                            def file = nFolder.link.file
                            def uri
                            if (file?.directory){
                                uri = file.canonicalFile.toURI()
                            } else if (file) {
                                uri = file.parentFile.canonicalFile.toURI()
                            } else {
                                uri = ''
                            }
                            nodo[MDRootAttr] = uri
                            nodo[MDBranchAttr] = ''
                        } else {
                            ScriptUtils.c().statusInfo = " action aborted"
                        }
                        focusMap()
                    }
                )
                button(  //node to be linked
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + icon.linked),
                    toolTipText: 'Inserts node to be linked to node with actual link.\nIt helps in the map organization',
                    preferredSize: new Dimension(30, 30),
                    margin:new Insets(0,2,0,2),
                    borderPainted: false,
                    actionPerformed : {
                        def nodo = ScriptUtils.c().selected
                        def tgtN =  nodo.createChild()
                        tgtN.text = "= edofro.MarkDownHelper.MDH.linkedNodeText(node)"
                        tgtN.style.name = MDNodeLinkStyle
                        ScriptUtils.c().select(tgtN)
                        focusMap()
                    }
                )
            }
    return panelInferior
}


    //region: --------------- Dialogo ---------------------------------------------------------------------------------
    
    def static showDialog(){
        showDialog(false)
    }
    
    def static showDialog(rebuild){
        def nuevo = false
        def dialogo = UITools.frame.ownedWindows.find{it.name == dialogName && it.type.toString()=='NORMAL'}
        if(!dialogo) {
            dialogo = swingBuilder.dialog(
                title : 'Markdown helper',
                //id:'myDialog',
                name: dialogName,
                modal:false,
                locationRelativeTo:UITools.frame,
                minimumSize: new Dimension(30,70),
                owner:UITools.frame,
                defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
                pack : true,
            ) {}
            rebuild = true
            nuevo = true
        }
        
        if(rebuild){
            if(!nuevo) dialogo.getContentPane().removeAll()
            dialogo.getContentPane().setLayout(new BorderLayout())
            dialogo.add(creaContenidoIcon(tbActions, tbIcons, tbLabels), BorderLayout.PAGE_START)
            dialogo.add(creaContenidoMD(formulas, labels, atributos), BorderLayout.CENTER)
            dialogo.add(creaContenidoPanelInferior(), BorderLayout.PAGE_END)
            dialogo.pack()
        }   
            
        dialogo.show()
        if(rebuild){
            addArrowMoves(dialogo)
            addEscapeAction(dialogo)
        }
    }

    //Region: ---------------------------- MDI ----------------------------------------
    def static correctFileName(s){
        def t = s.toString().replace('\n','_').replace('\t','_').replace('/','_').replace('\\','_').replace(' ','-').replace("'",'')
        while (t.contains('__')){
            t = t.replace('__','_')
        }
        return t.toString()
    }

    //Region: ---------------------------- FileChooser ----------------------------------------
    def static getFileFromDialog(fileName){
        def chooser = new SwingBuilder().fileChooser(
            dialogTitle: "Save Markdown document to file",
            fileSelectionMode: JFileChooser.FILES_ONLY,
            fileFilter: new FileNameExtensionFilter('Markdown', 'md', 'mkd', 'mkdn', 'mdwn', 'mdown', 'markdown', 'mdtxt', 'mdtext', 'text', 'Rmd', 'txt'),
        )
        def mdExtensions = chooser.fileFilter.extensions
        def i    = fileName.lastIndexOf('.')
        def ext  = i>0?fileName.substring(i+1):null
        fileName = fileName + (mdExtensions.contains(ext)?'':'.md')
        chooser.selectedFile =  new File(fileName)

        File file
        switch ( chooser.showSaveDialog() )
        {
           case JFileChooser.APPROVE_OPTION:
              file = chooser.selectedFile
              break;
           case JFileChooser.CANCEL_OPTION:
           case JFileChooser.ERROR_OPTION:
              break;
        }
        return file
    }

    def static saveFile(nodo){
        saveFile(nodo, false)
    }
    
    def static saveFile(nodo, overwriteConfirmed){
        def file
        // getting file
        def texto = nodo.note?.plain
        if (texto && texto != '' && !texto.startsWith('=')){
            if (nodo.link?.uri?.scheme == 'file'){
                file = nodo.link.file
            } else {
                def fPath
                try{
                    fPath = MDI_redux.obtainPathFromMap(nodo)
                    MDI_redux.createPath(fPath)
                } catch(e){}
                if(fPath && fPath != ''){
                    def fileName = correctFileName(nodo.text)
                    file = new File(fPath + fileName)
                    if (!file) {file = getFileFromDialog(correctFileName(nodo.text))}
                } else {
                    file = getFileFromDialog(correctFileName(nodo.text))
                }
            }
        } else {
            ScriptUtils.c().statusInfo = 'no valid Note in selected node'
            // UITools.informationMessage("no valid note in node $nodo ")
            return 0
        }

        //saving file
        if (file){
            if ( overwriteConfirmed || UITools.showConfirmDialog(null, "export text to: \n\n  ${file} ?", "Overwrite/save file with node's note?", 2, 2)==0) {
               file.setText(texto.toString(), 'UTF-8')
               nodo.link.file = file
               nodo.text = file.name
               return 1
            } else {
                ScriptUtils.c().statusInfo = " Note's export aborted"
            }
        } else {
            ScriptUtils.c().statusInfo = 'no file defined. Not saved!!'
        }
        return 0
    }
    
    def static focusMap(){
        /*org.freeplane.features.mode.*/
        Controller
            .getCurrentController()
            .getMapViewManager()
            .getSelectedComponent()
            .requestFocus()    
    }

    // --- keyStrokes --------------------------
    
    def static addArrowMoves(dialogo){
        // get all the dialog's buttons
        def buttons = getButtons(dialogo)
        
        // and their coordinates
        def Y =  buttons.locationOnScreen.y
        def X =  buttons.locationOnScreen.x
        
        //assign key stroke actions for each button in dialog
        
        buttons.each{myButton ->
            //getting the coordinates of the button
            def yS = myButton.locationOnScreen.y
            def xS = myButton.locationOnScreen.x
            
            //getting the buttons next to it
            def nextPos 
            //--Up
            nextPos = Y.findAll{ it < yS }.max()
            def bttnUP    = buttons.findAll{ it.locationOnScreen.y == nextPos}.sort{Math.abs(it.locationOnScreen.x - xS)}[0]
            //--Right
            nextPos = X.findAll{ it > xS }.min()
            def bttnRIGHT = buttons.findAll{ it.locationOnScreen.x == nextPos}.sort{Math.abs(it.locationOnScreen.y - yS)}[0]
            //--Down
            nextPos = Y.findAll{ it > yS }.min()
            def bttnDOWN  = buttons.findAll{ it.locationOnScreen.y == nextPos}.sort{Math.abs(it.locationOnScreen.x - xS)}[0]
            //--Left
            nextPos = X.findAll{ it < xS }.max()
            def bttnLEFT  = buttons.findAll{ it.locationOnScreen.x == nextPos}.sort{Math.abs(it.locationOnScreen.y - yS)}[0]
            
            //adding the arrow movements for the button
            addArrowMove( myButton, bttnUP    , KeyEvent.VK_UP    ,'moveUp'   )
            addArrowMove( myButton, bttnRIGHT , KeyEvent.VK_RIGHT ,'moveRight')
            addArrowMove( myButton, bttnDOWN  , KeyEvent.VK_DOWN  ,'moveDown' )
            addArrowMove( myButton, bttnLEFT  , KeyEvent.VK_LEFT  ,'moveLeft' )
        }
        def i =((buttons.size() - 1) / 2).toInteger()
        buttons[13].requestFocus()
    }    
    
    def static addArrowMove(compFrom, compTo, keyStroke, actionName){
        if(!compTo) return
        compFrom.getInputMap().put(KeyStroke.getKeyStroke(keyStroke, 0), actionName);
        compFrom.getActionMap().put(actionName, new AbstractAction() {
             @Override public void actionPerformed(ActionEvent e) {
                  compTo.requestFocus();
             }
        })
    }

    //getting all the buttons of the dialog recursivelly 
    def static getButtons(c){
        def bots = []
        c.components.each{comp ->
            if(comp instanceof JButton){
                bots << comp
            } else {
                if (comp.componentCount >0){
                    bots.addAll(getButtons(comp))
                }
            }
        }
        return bots
    }    
    
    def static addEscapeAction(dialogo){
        dialogo.contentPane.getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "escape")
        dialogo.contentPane.getActionMap().put("escape", new AbstractAction() {
             @Override public void actionPerformed(ActionEvent e) {
                  dialogo.dispose();
             }
        })
    }    
    
}