import groovy.swing.SwingBuilder
import javax.swing.*
import java.awt.*
import java.awt.BorderLayout as BL
import javax.swing.filechooser.FileNameExtensionFilter

estilo   = 'MarkdownHelperNode' //TODO: usar dato de librería
Map icon = [
        leaf            : 'emoji-1F343' ,
        ignoreNode      : 'emoji-26D4'  ,
        ignoreContent   : 'emoji-1F648' ,
        newLine         : 'emoji-21A9'  ,
        number          : 'emoji-1F522' ,
        bullet          : 'emoji-1F537' ,
        centered        : 'emoji-2194'  ,
        alignRight      : 'emoji-27A1'  ,
        comment         : 'emoji-1F4AC' ,
        completed       : 'emoji-2714'  ,
        isTask          : 'emoji-1F532' ,
        removeFirst     : 'RemoveIcon_0_Action',
        removeLast      : 'RemoveIconAction',
        removeAll       : 'RemoveAllIconsAction',
        help            : 'emoji-2753',
        save            : 'emoji-1F4BE',
        gotoMD          : 'emoji-1F519',
        toPlain         : 'emoji-1F4DD',
    ]

// definiciones botones iconos
//TODO: usar datos de libreria para iconos ( y acciones)
def tbActions = ['RemoveIcon_0_Action', 'RemoveIconAction', 'RemoveAllIconsAction', 'IconAction.emoji-1F343', 'IconAction.emoji-1F648', 'IconAction.emoji-26D4'
                , 'IconAction.emoji-1F522', 'IconAction.emoji-1F537', 'IconAction.emoji-27A1', 'IconAction.emoji-2194', 'IconAction.emoji-21A9', 'IconAction.emoji-1F4AC'
                , 'IconAction.emoji-2714', 'IconAction.emoji-1F532']
def tbIcons   = ['RemoveIcon_0_Action', 'RemoveIconAction', 'RemoveAllIconsAction', 'IconAction.emoji-1F343', 'IconAction.emoji-1F648', 'IconAction.emoji-26D4'
                , 'IconAction.emoji-1F522', 'IconAction.emoji-1F537', 'IconAction.emoji-27A1', 'IconAction.emoji-2194', 'IconAction.emoji-21A9', 'IconAction.emoji-1F4AC'
                , 'IconAction.emoji-2714', 'IconAction.emoji-1F532']
def tbLabels  = ['Remove first icon', 'Remove Last Icon', 'Remove all icons'
                , "behave as leaf node (don't look at its descendant)", 'ignore content', 'ignore node and its descendant'
                , 'numbered list', 'bulleted list'
                , 'align right', 'align centered'
                , 'add new line'
                , 'comment (creo que no debe ir)'
                , 'completed', 'is Task']


// definiciones botones nodos MD
def formulas  = ['= MarkDownHelper.document(node)','= MarkDownHelper.TOC(node)','= MarkDownHelper.webLink(node)','= MarkDownHelper.webImageLink(node)'
                ,'= MarkDownHelper.fileLink(node)','= MarkDownHelper.imageLink(node)','= MarkDownHelper.list(node)','= MarkDownHelper.plainTaskList(node)'
                ,'= MarkDownHelper.nestedTaskList(node)','= MarkDownHelper.table(node)','= MarkDownHelper.codeBlock(node)','= MarkDownHelper.textBlock(node)','----']
def labels    = ['Markdown document.md','ToC','web link','web Image'
                ,'link to local file','local image','list','plain task list'
                ,'nested task list','table','code block','text block','horizontal line']
def atributos = [['headersToUnderline':2,'hideFolded':false,'headerNumbering':true,'topHeadersNumbered':false,'topHeaderStartingNumber':1,'fileLinksRelative':false],['TOClevels':2],[:]
                ,[:],[:],[:],[:],[:],[:],[:],[:],[:],[:]]

//return " F: ${formulas.size()} - L: ${labels.size()} - L: ${atributos.size()}"

dialogName = 'MarkDownHelperDialog'
swingBuilder = new SwingBuilder()

//region: --------------- botones MD ---------------------------------------------------------------------------------
def creaBotonMD(label, formula, atributos){
    def boton = swingBuilder.button(
        text : label,
        //icon: includeIcon?menuUtils.getMenuItemIcon(iconos[i]):null,
        toolTipText: "Adds a '${label}' node to the map",
        //preferredSize: prefDimension,
        //minimumSize: minDimension,
        horizontalAlignment:SwingConstants.LEFT,
        margin:new Insets(0,5,0,5),
        borderPainted: false,
        actionPerformed : {
            crearNodoMD(label, formula, atributos)
        }
    )
    //boton.toolTipText = boton.getBorder().toString()
    return boton
}

def creaContenidoMD(formulas, labels, atributos){
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

def crearNodoMD(label, formula, atributos){
    def nodo = c.selected
    def tgtN =  nodo.createChild(label)
    tgtN.style.name = estilo
    tgtN.attributes = atributos
    tgtN.noteText = formula

    //TODO: cambiar noteContentType a 'Markdown'
    c.select(tgtN)
}

//region: --------------- botones Iconos ---------------------------------------------------------------------------------
def creaBotonIcon(acc, ic, lab){
    def boton = swingBuilder.button(
        //text : includeText?textoLabel(labels[i]):null,
        icon: menuUtils.getMenuItemIcon(ic),
        toolTipText: lab,
        // preferredSize: prefDimension,
        margin:new Insets(0,2,0,2),
        borderPainted: false,
        actionPerformed : {
            menuUtils.executeMenuItems([acc])
        }
    )
    //boton.toolTipText = boton.getBorder().toString()
    return boton
}

def creaContenidoIcon(actions, icons, labels){
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
def getNodoMarkdown(n){
    def nMD = n.pathToRoot.find{it.attributes.containsKey('headerNumbering')}
//    ui.informationMessage(nMD.toString())
    return nMD
}

def lastNodeID


def panelInferior = swingBuilder.panel(
            layout: new GridLayout(0,4)
    ){
        button(  //HELP
            //text : includeText?textoLabel(labels[i]):null,
            icon: menuUtils.getMenuItemIcon('IconAction.' + icon.help),
            toolTipText: 'Help information about selected Markdown Node',
            preferredSize: new Dimension(30, 30),
            margin:new Insets(0,2,0,2),
            borderPainted: false,
            actionPerformed : {
                //TODO: Help action
            }
        )
        button(  //copy to node
            //text : includeText?textoLabel(labels[i]):null,
            icon: menuUtils.getMenuItemIcon('IconAction.' + icon.toPlain),
            toolTipText: 'copy Markdown to new node',
            preferredSize: new Dimension(30, 30),
            margin:new Insets(0,2,0,2),
            borderPainted: false,
            actionPerformed : {
                def srcN = c.selected
                def i = srcN.parent.getChildPosition(srcN)
                def tgtN =  srcN.parent.createChild(i+1)
                tgtN.text = srcN.text
                tgtN.note = srcN.note
                tgtN.icons.add(icon.leaf)
                c.select(tgtN)
            }
        )
        button(  //ir a nodo Markdown
            //text : includeText?textoLabel(labels[i]):null,
            icon: menuUtils.getMenuItemIcon('IconAction.' + icon.gotoMD),
            toolTipText: 'jump to Markdown document node and back',
            preferredSize: new Dimension(30, 30),
            margin:new Insets(0,2,0,2),
            borderPainted: false,
            actionPerformed : {
                def srcN = c.selected
                def nMD = getNodoMarkdown(srcN)
                //ui.informationMessage(nMD.toString())
                if(!nMD) {
                    c.statusInfo = ' No Markdown document node found!!'
                    if (lastNodeID){
                        def tgtN = srcN.map.node(lastNodeID)
                        c.select(tgtN)
                    }
                } else {
                    if(srcN.equals(nMD)){
                        if (lastNodeID){
                            def tgtN = srcN.map.node(lastNodeID)
                            c.select(tgtN)
                        }
                    } else {
                        c.select(nMD)
                        lastNodeID = srcN.id
                    }
                }
           }
        )
        button(  //ir a nodo Markdown
            //text : includeText?textoLabel(labels[i]):null,
            icon: menuUtils.getMenuItemIcon('IconAction.' + icon.save),
            toolTipText: 'save note to file',
            preferredSize: new Dimension(30, 30),
            margin:new Insets(0,2,0,2),
            borderPainted: false,
            actionPerformed : {
                saveFile(c.selected)
           }
        )
    }


//region: --------------- Dialogo ---------------------------------------------------------------------------------
def dialogo = ui.frame.ownedWindows.find{it.name == dialogName && it.type.toString()=='NORMAL'}

if(!dialogo) {
    c.statusInfo=' se crea dialogo'
    dialogo = swingBuilder.dialog(
        title : 'Markdown helper',
//        id:'myDialog',
        name: dialogName,
        modal:false,
        locationRelativeTo:ui.frame,
        minimumSize: new Dimension(30,70),
        owner:ui.frame,
        defaultCloseOperation: JFrame.DISPOSE_ON_CLOSE,
        pack : true,
//        show: true
    ) {}
} else {
    c.statusInfo = ' se reutiliza dialogo'
    dialogo.getContentPane().removeAll()
}

dialogo.getContentPane().setLayout(new BorderLayout())
dialogo.add(creaContenidoIcon(tbActions, tbIcons, tbLabels), BorderLayout.PAGE_START)
dialogo.add(creaContenidoMD(formulas, labels, atributos), BorderLayout.CENTER)
dialogo.add(panelInferior, BorderLayout.PAGE_END)
dialogo.pack()
dialogo.show()

//Region: ---------------------------- MDI ----------------------------------------
def correctFileName(s){
    def t = s.replace('\n','_').replace('\t','_').replace('/','_').replace('\\','_').replace('__','_')
    return t.toString()
}

//Region: ---------------------------- FileChooser ----------------------------------------
def getFileFromDialog(fileName){
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

def saveFile(nodo){
    def file
    // getting file
    def texto = nodo.note?.plain
    if (texto && texto != ''){
        if (nodo.link?.uri?.scheme == 'file'){
            file = nodo.link.file
        } else {
            def fPath
            try{
                fPath = MDI.obtainPathFromMap(nodo)
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
        c.statusInfo = 'no Note in selected node'
        return 'No tiene nota'
    }

    //saving file
    if (file){
        if ( ui.showConfirmDialog(null, "export text to: \n\n  ${file} ?", "Overwrite/save file with node's note?", 2, 2)==0) {
           file.setText(texto.toString(), 'UTF-8')
           nodo.link.file = file
           nodo.text = file.name
        } else {
            c.statusInfo = " Note's export aborted"
        }

    } else {
        c.statusInfo = 'no file defined. Not saved!!'
    }
}