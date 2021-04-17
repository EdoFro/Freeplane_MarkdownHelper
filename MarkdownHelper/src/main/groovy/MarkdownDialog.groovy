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
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties

import java.awt.event.ActionEvent
import java.awt.event.KeyEvent



class MarkdownDialog{
    
    static final String dialogName   = 'MarkDownHelperDialog'
    static       int    iconsSet     = 0
    static String lastNodeID

    // definiciones botones iconos
    static final ArrayList tbIconKeys = ['removeFirst', 'removeLast', 'removeAll'
                    , 'leaf', 'ignoreContent', 'ignoreNode'
                    , 'number', 'bullet'
                    , 'alignRight', 'centered'
                    , 'newLine'
                    , 'isTask', 'completed']
    static final ArrayList tbLabels  = ['Remove first icon', 'Remove Last Icon', 'Remove all icons'
                    , "behave as leaf node (don't look at its descendant)", 'ignore content', 'ignore node and its descendant'
                    , 'numbered list', 'bulleted list'
                    , 'align right', 'align centered'
                    , 'add new line'
                    , 'is Task', 'completed']


    // definiciones botones nodos MD
    static final ArrayList formulas  = ['= edofro.MarkDownHelper.MDH.document(node)','= edofro.MarkDownHelper.MDH.TOC(node)','= edofro.MarkDownHelper.MDH.webLink(node)'
                    ,'= edofro.MarkDownHelper.MDH.webImageLink(node)','= edofro.MarkDownHelper.MDH.fileLink(node,true)','= edofro.MarkDownHelper.MDH.imageLink(node,true)'
                    ,'= edofro.MarkDownHelper.MDH.list(node)','= edofro.MarkDownHelper.MDH.plainTaskList(node)','= edofro.MarkDownHelper.MDH.nestedTaskList(node)'
                    ,'= edofro.MarkDownHelper.MDH.table(node)','= edofro.MarkDownHelper.MDH.codeBlock(node)','= edofro.MarkDownHelper.MDH.textBlock(node)'
                    ,'-----','= edofro.MarkDownHelper.MDH.comment(node)']
    static final ArrayList labels    = ['Markdown document.md','ToC','web link'
                    ,'web Image','link to local file','local image'
                    ,'list','plain task list','nested task list'
                    ,'table','code block','text block'
                    ,'horizontal line','Comment']
    // static final ArrayList atributos = [['headersToUnderline':2,'hideFolded':false,'headerNumbering':true,'topHeadersNumbered':false,'topHeaderStartingNumber':1,'fileLinksRelative':false]
                    // ,['TOClevels':2,'TOCindent':false]
                    // ,[:],[:],[:],[:],[:],[:],[:],[:],[:],[:],[:],[:]]


    static final ArrayList atributos = [
        [
            'headersToUnderline':'markdownHelper_headersToUnderline,int'
            ,'hideFolded':'markdownHelper_hideFolded,bool'
            ,'headerNumbering':'markdownHelper_headerNumbering,bool'
            ,'topHeadersNumbered':'markdownHelper_topHeadersNumbered,bool'
            ,'topHeaderStartingNumber':'markdownHelper_topHeaderStartingNumber,int'
            ,'fileLinksRelative':'markdownHelper_fileLinksRelative,bool'
        ]
        ,[
            'TOClevels':'markdownHelper_TOClevels,int'
            ,'TOCindent':'markdownHelper_TOCindent,bool'
        ]
        ,[:],[:],[:],[:],[:],[:],[:],[:],[:],[:],[:],[:]
    ]


    //return " F: ${formulas.size()} - L: ${labels.size()} - L: ${atributos.size()}"

    
    static final SwingBuilder swingBuilder = new SwingBuilder()
    static final ConfigProperties config = new ConfigProperties()



    //region: --------------- botones MD ---------------------------------------------------------------------------------
    def static creaBotonMD(label, formula, atributs){
        def atribs2 = atributs.collectEntries{k,v -> [k,getConfigValue(v)]}
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
                crearNodoMD(label, formula, atribs2)
                focusMap()
            }
        )
        //boton.toolTipText = boton.getBorder().toString()
        return boton
    }
    
    def static getConfigValue(prop){
        def p = prop.split(',')
        def result
        switch (p[1].toLowerCase()){
            case 'bool':
                result = config.getBooleanProperty(p[0])
                break;
            case 'int':
                result = config.getIntProperty(p[0])
                break;
            case 'string':
                result = config.getProperty(p[0])
                break;
            default:
                result = null
                break;
        }
       return result
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

    def static crearNodoMD(label, formula, atribs){
        def nodo = ScriptUtils.c().selected
        def tgtN =  nodo.createChild(label)
        tgtN.style.name = MDH.MDNodeStyle
        tgtN.attributes = atribs
        tgtN.noteText = formula
        ScriptUtils.c().select(tgtN)
    }

    //region: --------------- botones Iconos ---------------------------------------------------------------------------------
    def static creaBotonIcon(acc, lab){
        def boton = swingBuilder.button(
            //text : includeText?textoLabel(labels[i]):null,
            icon: MenuUtils.getMenuItemIcon(acc),
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

    def static creaContenidoIcon(iconKeys, labels){
        def actions  = iconKeys.collect{key -> iconAction(MDH.icon[key][iconsSet])} 
        return swingBuilder.panel(
                layout: new GridLayout(0,5)
            ){
    //           toolBar(
    //           layout: new FlowLayout(FlowLayout.LEFT, 0, 0)
    //
    //            ,layout: new GridLayout(0,1)
    //        ){
                 actions.eachWithIndex{ a, j ->
                    /*widget(*/    creaBotonIcon(a, labels[j])   //)
                    //separator()
                 }
     //       }
        }
    }
    
    def static iconAction(icono){
        return icono.toLowerCase().endsWith('action')?icono:'IconAction.' + icono
    }


    //region:
    def static getNodoMarkdown(n){
        def nMD = n.pathToRoot.reverse().find{it.attributes.containsKey('headerNumbering')}
    //    UITools.informationMessage(nMD.toString())
        return nMD
    }
    
    // --- panel inferior ----------------------------------------

    def static creaContenidoPanelInferior(){
        def panelInferior = swingBuilder.panel(
                    layout: new GridLayout(0,5)
            ){
                button(  //HELP
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + MDH.icon.help[iconsSet]),
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
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + MDH.icon.toPlain[iconsSet]),
                    toolTipText: 'copy Markdown to new node',
                    preferredSize: new Dimension(30, 30),
                    margin:new Insets(0,2,0,2),
                    borderPainted: false,
                    actionPerformed : {
                        def srcN = ScriptUtils.c().selected
                        def i = srcN.parent.getChildPosition(srcN)
                        def tgtN =  srcN.parent.createChild(i+1)
                        tgtN.text = srcN.text
                        tgtN.noteContentType = 'markdown'
                        tgtN.note = srcN.note
                        tgtN.icons.add(MDH.icon.leaf[iconsSet])
                        ScriptUtils.c().select(tgtN)
                        focusMap()
                    }
                )
                button(  //ir a nodo Markdown
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + MDH.icon.gotoMD[iconsSet]),
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
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + MDH.icon.save[iconsSet]),
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
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + MDH.icon.rootFolder[iconsSet]),
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
                            nFolder = nFolder?:nodo.find{(it.link.file?true:false) && it.attributes.containsKey(MDH.MDNodeAttr)}
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
                            nodo[MDH.MDRootAttr]   = uri
                            nodo[MDH.MDBranchAttr] = nodo[MDH.MDBranchAttr]?:''
                            nodo[MDH.MDPreAttr]    = nodo[MDH.MDPreAttr]?:''
                        } else {
                            ScriptUtils.c().statusInfo = " action aborted"
                        }
                        focusMap()
                    }
                )
                button(  //node to be linked
                    //text : includeText?textoLabel(labels[i]):null,
                    icon: MenuUtils.getMenuItemIcon('IconAction.' + MDH.icon.linked[iconsSet]),
                    toolTipText: 'Inserts node to be linked to node with actual link.\nIt helps in the map organization',
                    preferredSize: new Dimension(30, 30),
                    margin:new Insets(0,2,0,2),
                    borderPainted: false,
                    actionPerformed : {
                        def nodo = ScriptUtils.c().selected
                        def tgtN =  nodo.createChild()
                        tgtN.text = "= edofro.MarkDownHelper.MDH.linkedNodeText(node)"
                        tgtN.style.name = MDH.MDNodeLinkStyle
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
            if(nuevo){
                iconsSet = (config.getBooleanProperty('markdownHelper_useMDHicons'))?1:0
            } else {
                dialogo.getContentPane().removeAll()
                iconsSet = (config.getBooleanProperty('markdownHelper_useMDHicons'))?1:0
//                iconsSet = UITools.showConfirmDialog(null,'Do you want to use standard emoji collection icons?','Markdown Helper',0,3)
            }
            dialogo.getContentPane().setLayout(new BorderLayout())
            dialogo.add(creaContenidoIcon(tbIconKeys, tbLabels), BorderLayout.PAGE_START)
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
    
    // --- focus map ---------------------------
    
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