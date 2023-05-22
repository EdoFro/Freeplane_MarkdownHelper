// MarkDownHelper
// edo frohlich
// 2021

package edofro.MarkDownHelper
//imports
import org.freeplane.view.swing.features.progress.mindmapmode.ProgressUtilities



class MDH{

//region public properties
// ver ejemplo en WSE.groovy

//endregion

//region private properties / definitions
    static final Map markdown = [
        format      : 'markdownPatternFormat',
        contentType : 'markdown'
    ]
    
    static final Map icon = [
            leaf            : [ 'emoji-1F343'          ,'MarkdownHelper/leaf'            ],
            ignoreNode      : [ 'emoji-26D4'           ,'MarkdownHelper/doNotEnter'      ],
            ignoreContent   : [ 'emoji-1F648'          ,'MarkdownHelper/dontLook'        ],
            newLine         : [ 'emoji-21A9'           ,'MarkdownHelper/newLine'         ],
            number          : [ 'emoji-1F522'          ,'MarkdownHelper/numbered'        ],
            bullet          : [ 'emoji-1F537'          ,'MarkdownHelper/buletted'        ],
            centered        : [ 'emoji-2194'           ,'MarkdownHelper/centered'        ],
            alignRight      : [ 'emoji-27A1'           ,'MarkdownHelper/right'           ],
            completed       : [ 'emoji-2714'           ,'MarkdownHelper/completed'       ],
            isTask          : [ 'emoji-1F532'          ,'MarkdownHelper/isTask'          ],
            removeFirst     : [ 'RemoveIcon_0_Action'  ,'RemoveIcon_0_Action'            ],
            removeLast      : [ 'RemoveIconAction'     ,'RemoveIconAction'               ],
            removeAll       : [ 'RemoveAllIconsAction' ,'RemoveAllIconsAction'           ],
            help            : [ 'emoji-2753'           ,'MarkdownHelper/help'            ],
            save            : [ 'emoji-1F4BE'          ,'MarkdownHelper/save'            ],
            gotoMD          : [ 'emoji-1F519'          ,'MarkdownHelper/toDocAndBack'    ],
            toPlain         : [ 'emoji-1F4DD'          ,'MarkdownHelper/copyPlain'       ],
            rootFolder      : [ 'emoji-1F4CD'          ,'MarkdownHelper/pin'             ],
            linked          : [ 'emoji-1F517'          ,'MarkdownHelper/linked'          ],
            addMissingAttr  : [ 'emoji-1FA79'          ,'MarkdownHelper/patchAttributes' ],
            param           : [ 'emoji-1F524'          ,'MarkdownHelper/textBlockParam'  ],
            wiki            : [ 'emoji-1F4DA'          ,'MarkdownHelper/wiki'            ],
            collapsible     : [ 'emoji-1F53B'          ,'emoji-1F53B'                    ]
    ]

    static final Map mdType = [
            webLink    :  'webLink',
            webImage   : 'webImage',
            localLink  : 'localLink',
            localImage : 'localImage',
            list       : 'list'
    ]

    static final String ind             = '   '
    static final String MDNodeStyle     = 'MarkdownHelperNode'
    static final String MDNodeLinkStyle = 'MarkdownHelperLink'
    static final String MDHPreviewStyle = 'MarkdownHelperPreview'
    static final String MDRootAttr      = 'MarkdownRootFolder'
    static final String MDNodeAttr      = 'fileLinksRelative'
    static final String MDBranchAttr    = 'MDHGithubBranch'
    static final String MDPreAttr       = 'MDHTargetRootPath'
    static final String MDTypeAttr      = 'MDHType'
    static final String[] TaskWordInStyle = ['tarea','task']
    static final ArrayList MdhStyleNames   = [MDNodeStyle,MDNodeLinkStyle,MDHPreviewStyle]

    static class MDParams{
        int     TOClevels
        Boolean TOCindent
        Boolean topHeadersNumbered  
        Boolean headerNumbering     
        Boolean hideFolded
        int     headersToUnderline
        Boolean fileLinksRelative
        Boolean isToc
        int     topHeaderStartingNumber
        Boolean lineOverHeader
        Boolean ignoreHeaderDetails
        Boolean ignoreHeaderNotes
        Boolean ignoreLeafDetails
        Boolean ignoreHeaderImageObjects
        
        
        
        
        public MDParams(nodoMD, nodoTOC, isToc){
            this.hideFolded          = nodoMD['hideFolded'         ].bool
            this.headerNumbering     = nodoMD['headerNumbering'    ].bool
            this.topHeadersNumbered  = nodoMD['topHeadersNumbered' ].bool
            this.fileLinksRelative   = nodoMD['fileLinksRelative'  ].bool
            this.headersToUnderline  = nodoMD['headersToUnderline' ].num0
            this.TOClevels           = isToc?nodoTOC['TOClevels'   ].num0:9999
            this.TOCindent           = isToc?nodoTOC['TOCindent'   ].bool:false
            this.isToc               = isToc
            this.topHeaderStartingNumber  = nodoMD['topHeaderStartingNumber' ].num0
            this.lineOverHeader           = nodoMD['lineOverHeader'          ].bool
            this.ignoreHeaderDetails      = nodoMD['ignoreHeaderDetails'     ].bool
            this.ignoreHeaderNotes        = nodoMD['ignoreHeaderNotes'       ].bool
            this.ignoreLeafDetails        = nodoMD['ignoreLeafDetails'       ].bool
            this.ignoreHeaderImageObjects = nodoMD['ignoreHeaderImageObjects'].bool
        }
        
        public MDParams(){
            this.hideFolded          = false
            // this.headerNumbering     = nodoMD['headerNumbering'    ].bool
            // this.topHeadersNumbered  = nodoMD['topHeadersNumbered' ].bool
            // this.fileLinksRelative   = nodoMD['fileLinksRelative'  ].bool
            // this.headersToUnderline  = nodoMD['headersToUnderline' ].num0
            // this.TOClevels           = isToc?nodoTOC['TOClevels'   ].num0:9999
            // this.TOCindent           = isToc?nodoTOC['TOCindent'   ].bool:false
            // this.isToc               = isToc
            // this.topHeaderStartingNumber  = nodoMD['topHeaderStartingNumber' ].num0
            // this.lineOverHeader           = nodoMD['lineOverHeader'          ].bool
            // this.ignoreHeaderDetails      = nodoMD['ignoreHeaderDetails'     ].bool
            // this.ignoreHeaderNotes        = nodoMD['ignoreHeaderNotes'       ].bool
            this.ignoreLeafDetails        = false
            // this.ignoreHeaderImageObjects = nodoMD['ignoreHeaderImageObjects'].bool
        }            
    }

    static final ProgressUtilities progUtil  = new ProgressUtilities()

    
//endregion

//region TOC
    def static getNodoMarkdown(n){
        return getNodoMarkdown(n,false)
    }
    
    def static getNodoMarkdown(n,reverse){
        return getNodeByAttr(n,'headerNumbering',reverse)
    }

    def static getNodeByAttr(n,a){
        return getNodeByAttr(n,a,false)
    }
    
    def static getNodeByAttr(n,a,reverse){
        def nodos = reverse?n.pathToRoot.reverse():n.pathToRoot
        return nodos.find{it.attributes.containsKey(a)}
    }
    
    def static TOC(nodo){
        return collectMD(nodo, true)
    }
    
    def static document(nodo){
        return collectMD(nodo, false)
    }

    def static collectMD(nodo,isToc){    
        def nodoMarkdown = isToc?getNodoMarkdown(nodo, true):nodo
        if(!nodoMarkdown) return failMessage('No Markdown node found!!')
        def myPar = new MDParams(nodoMarkdown, nodo, isToc)
        def reportText = new StringBuilder()
        def nodos = nodoMarkdown.children.findAll{!ignoreNode(it,myPar)}
        def headerNum = myPar.topHeaderStartingNumber - 1
        headerNum = headerNum>=0?headerNum:0
        nodos.each{n ->
            def resp = linea(n,1,'',headerNum,myPar)
            headerNum += resp[0]
            reportText << resp[1]
        }
        return reportText.toString() 
    }
//        return nodos.toString() //  <------------ probando

// ---- methods ----

    /**
     * Recursive function that builds the Markdown text of a branch
     *
     * @param n node
     * @param headerLevel
     * @param numParent string with the numbering used for the node's parent header
     * @param headerNum number for header numbering
     * @param thisMDParams MDParams
     * @return array [an integer (0: for leafs, 1: for titles) ,  reportText]
     */
    def static linea(n,headerLevel,numParent,headerNum,thisMDParams){
        if ( headerLevel > thisMDParams.TOClevels ) return [0,'']  //if header is deeper than max deep level than exits
        def reportText = new StringBuilder()
        def objeto = n.externalObject
        def isCollapsible = isCollapsibleNode(n)
        if (!isLeaf(n,thisMDParams)){ // case is parent (header)  ignoreHeaderImageObjects
            def hNum = numParent
            def m = 0
            if(!ignoreContent(n)){
                hNum = headerNumbering(numParent,headerNum,headerLevel,thisMDParams)
                m = 1
                def header = (separated(hNum) + n.text).trim()
                if (thisMDParams.isToc){
                    reportText << "${thisMDParams.TOCindent?(ind * headerLevel) + '* ':''}[${header}](#${header.replace(' ','-').replace('.','').replace("'",'')})\n\n"  //'
                } else {
                    if (isCollapsible){
                        reportText
                                << "<details><summary><h${headerLevel}>${header}</h${headerLevel}></summary>\n\n"

                    } else {
                        reportText
                                << (thisMDParams.lineOverHeader?( headerLevel <= thisMDParams.headersToUnderline?('-----\n\n'):'' ):'')
                                << "#" * headerLevel  + ' ' + header + '\n\n'
                                << (!thisMDParams.lineOverHeader?( headerLevel <= thisMDParams.headersToUnderline?('-----\n\n'):'' ):'')
                    }
                    reportText
                            << DetailsAndNotes(n, thisMDParams.ignoreHeaderDetails,thisMDParams.ignoreHeaderNotes)
                            << (!thisMDParams.ignoreHeaderImageObjects?objeto?"![${n.details}](${objeto.uri}) \n\n":'':'')
                }
             }
            def k = 0
            n.children.findAll{!ignoreNode(it,thisMDParams)}.each{nd ->
                def resp = linea(nd,headerLevel + m, hNum, k,thisMDParams)
                k += resp[0]
                reportText << resp[1]
            }
            reportText << (isCollapsible ? "</details>\n" : '')
            return [1, reportText]
        } else { //case is final node (leaf)
            if(!thisMDParams.isToc && !ignoreContent(n)){
                def detailsAndNotes = DetailsAndNotes(n,thisMDParams.ignoreLeafDetails,false)
                def usarTexto = (!detailsAndNotes && !objeto)//?true:false
                reportText
                        << (isCollapsible ? "<details><summary>${n.value.toString()}</summary>\n\n" : '' )
                        << (usarTexto?(n.value.toString() + '\n\n'):'')
                        << detailsAndNotes
                        << (objeto?"![${n.details}](${objeto.uri}) \n\n":'')
                        << (isCollapsible ? "</details>\n" : '')
            }
            return [0, reportText]
        }
    }

    /**
     *
     * @param parentNumbering header numbering of parent header
     * @param headerNum number of previous header of same level
     * @param headerLevel header level
     * @param thisMDParams MDParams
     * @return a string representing a header numbering
     */
    def static headerNumbering(parentNumbering, headerNum, headerLevel, thisMDParams){
        if (!thisMDParams.headerNumbering) return ''
        return  (headerLevel >= (thisMDParams.topHeadersNumbered?1:2))?(parentNumbering + (headerNum+1).toString() +'.') :''
    }

    def static separated(w){
        return (w?(w + ' '):'')
    }

    /**
     *
     * @param m node
     * @param ignoreDetails boolean
     * @param ignoreNote boolean
     * @return
     */
    def static DetailsAndNotes(m,ignoreDetails,ignoreNote) {
        def details = m.details
        def notes = m.note
        def addContent = new StringBuilder()
        if (details && !ignoreDetails) {
            addContent << details + '\n\n'
        }
        if (notes && !ignoreNote) {
            addContent << notes + '\n\n'
        }
        while(addContent.contains('\n\n\n')){
            addContent = addContent.toString().replace('\n\n\n','\n\n')
        }
        return addContent.toString()
    }
    
    def static isLeaf(n){
        return (
            n.isLeaf()                              // node is leaf ..
            || !n.icons.icons.disjoint(icon.leaf)   // ... or it has the leaf icon
            || n.hasStyle(MDNodeStyle)              // ... or it is a MDH node
        )
    }

    def static isLeaf(n,par){
        return (isLeaf(n)                               // isLeaf(n) or..
            || !n.children.any{!ignoreNode(it,par)})    // .. "it has no children that has not to be ignored"
                                                        // (in other words: "it has no children that has to be considered" or "has only ignorable children")
    }

    def static ignoreNode(n,par){
        return (!n.icons.icons.disjoint(icon.ignoreNode)  // has ignore icon
            || (par.hideFolded && n.isFolded()))          // or (parameter "hide folded" is true and it is folded)
    }

    def static ignoreContent(n){
        return (!n.icons.icons.disjoint(icon.ignoreContent)) // has ignoreContent icon
    }

    def static isCollapsibleNode(n){
        return (!n.icons.icons.disjoint(icon.collapsible)) // has collapsible icon
    }
//endregion

// region MD unified
    def static inator(nodo){
        def resp = switch(nodo[MDTypeAttr]){
            case mdType.webLink -> webLink(nodo, nodo)
            case mdType.webImage -> webImageLink(nodo, nodo)
            case mdType.localLink -> fileLink(nodo, true)
            case mdType.localImage -> imageLink(nodo, true)
            case mdType.list -> nodo.text + '\n  ' + list(nodo)
            default -> failMessage('No valid mdType found!!')
        }
        return resp
    }
//endregion

//region MD Nodes

    //region MD LINK Nodes
    // returns absolute link
    def static webLink(nodo){
        def n = nodo.children.find{it.link?true:false}
        if(!n) return failMessage('No link found!!')
        def post = !nodo.icons.icons.disjoint(icon.newLine)?'\n\n':''

        return "[$n.text]($n.link.uri)$post".toString()
    }

    // returns absolute Image link
    def static webImageLink(nodo){
        def n = nodo.children.find{it.link?true:false}
        if(!n) return failMessage('No image found!!')
        def post = !nodo.icons.icons.disjoint(icon.newLine)?'\n\n':''

        return "![$n.text]($n.link.uri)$post".toString()
   }  
    
    // returns file link in absolute or relative format
    def static fileLink(nodo){
        fileLink(nodo, '','')
    }
    
    def static fileLink(nodo, String pre){
        fileLink(nodo, (String) pre, '')
    }
    
    def static fileLink(nodo, boolean getBranchAndPre){
        def branch = ''
        def nB = getBranchAndPre?getNodeByAttr(nodo,MDBranchAttr):null
        if(nB) {
            branch = nB[MDBranchAttr].toString()
        }
        fileLink(nodo, (boolean) getBranchAndPre, (String) branch)
    }
    
    def static fileLink(nodo, boolean getPre, boolean getBranch){
        def branch = ''
        def nB = getBranch?getNodeByAttr(nodo,MDBranchAttr):null
        if(nB) {
            branch = nB[MDBranchAttr].toString()
        }
        fileLink(nodo, (boolean) getPre, (String) branch)
    }    
    
    def static fileLink(nodo, String pre, boolean getBranch){
        def branch = ''
        def nB = getBranch?getNodeByAttr(nodo,MDBranchAttr):null
        if(nB) {
            branch = nB[MDBranchAttr].toString()
        }
        fileLink(nodo, (String) pre, (String) branch)
    }   

    def static fileLink(nodo, boolean getPre, String branch){
        def pre = ''
        def nB = getPre?getNodeByAttr(nodo,MDPreAttr):null
        if(nB) {
            pre = nB[MDPreAttr].toString()
        }
        fileLink(nodo, (String) pre, (String) branch)    
    }

    def static fileLink(nodo,String pre, String branch){
        def n = getNodeWithLinkToFile(nodo)?:                           //getting link to file from node (or node's linked nodes)
                nodo.children.findResult{getNodeWithLinkToFile(it)}?:   //getting it from any of its children
                null
        
        if(!n) return failMessage('No file found!!')
        def post = !nodo.icons.icons.disjoint(icon.newLine)?'\n\n':''


        def nodoMarkdown = getNodoMarkdown(nodo)
        if(!nodoMarkdown) return failMessage('No Markdown node found!!')                                                                        
        //in MDI use formula in Attribute:
        // =node.link.file.canonicalFile.toURI()

        def fileLinksRelative = nodoMarkdown[MDNodeAttr].bool
        branch = branch==''?'':branch[-1]=='/'?branch:branch + '/'
        return "[$n.text](${fileLinksRelative?(pre + branch):''}${getFileLink(nodo, n, fileLinksRelative)})$post".toString()  
    }
        
    def static getFileLink(nodo, n, fileLinksRelative){
        def fImage = n.link.file?:null //TODO: QA Add Image Object
        def uri = fImage?fImage.canonicalFile.toURI().toString():n.externalObject.uri
        if(uri){
            if(fileLinksRelative){
                def nodoMdRoot = getNodeByAttr(nodo,MDRootAttr)
                if(!nodoMdRoot || !nodoMdRoot[MDRootAttr]) return failMessage('No Markdown root folder defined!!')
                uri = getRelativeUri(nodoMdRoot[MDRootAttr].toString(),uri)
            }
            return "$uri".toString()
        } else {
            return failMessage('No file found!!')
        }
    }
    
    def static getRelativeUri(baseUri, fileUri){
        def uriRoot = baseUri[-1]=='/'?baseUri:(baseUri + '/')
        return fileUri - uriRoot
    }
    

    // returns image link in absolute or relative format
    def static imageLink(nodo){
        def result =  fileLink(nodo)
        return "!$result".toString()
    }
    
     def static imageLink(nodo, pre){
        def result =  fileLink(nodo, pre)
        return "!$result".toString()
    }
    
     def static imageLink(nodo, pre, branch){
        def result =  fileLink(nodo, pre, branch)
        return "!$result".toString()
    }
     // def static imageLink(nodo, pre,Boolean branch){
        // def result =  fileLink(nodo, pre, branch)
        // return "!$result".toString()
    // }
     // def static imageLink(nodo,Boolean pre, branch){
        // def result =  fileLink(nodo, pre, branch)
        // return "!$result".toString()
    // }
    

    //endregion
    
    //region MD LIST Nodes
    //returns list
    def static list(nodo){
        def nodoMarkdown = getNodoMarkdown(nodo, true)
        def myPar
        if(nodoMarkdown) {
            myPar = new MDParams(nodoMarkdown, nodo, false)
        } else {
            myPar = new MDParams()
        }
        def reportText = new StringBuilder()
        def bullet = '-'
        reportText << listaNodo(nodo, 0, getBullet(nodo,bullet), myPar)
        if(!reportText) return failMessage('No list items found!!')
        reportText << "\n"
        return reportText.toString()
    }

    def static listaNodo(ndo,L, bullet, par){
        //TODO: si lista tiene más de un nivel o cada item de lista es multilinea, entonces debe agregar un salto de línea entre items de primer nivel (L==0)
        def texto = new StringBuilder()
        ndo.children.findAll{!ignoreNode(it,par)}.each{n ->
            def tab
            if(ignoreContent(n)){
                tab = 0
            } else {
                def linea = isTask(n)? "${tarea(n, par)}": "${bullet} ${oneLiner(n.note?:n.text  + (n.details && !par.ignoreLeafDetails ? '  \n' + n.details : '' ))}\n"
                texto << "${ind * L}${linea}"
                tab = 1
            }
            if(!isLeaf(n)){
                texto << listaNodo(n, L + tab, getBullet(n,bullet), par)
            }
        }
        return texto
    }

    def static getBullet(n,b){
        def ic = n.icons.icons
        def newBullet = !ic.disjoint(icon.number)?'1.': !ic.disjoint(icon.bullet)?'-':null
        return newBullet?:b
    }
    
    def static plainTaskList(nodo){
        def nodoMarkdown = getNodoMarkdown(nodo, true)
        def myPar
        if(nodoMarkdown) {
            myPar = new MDParams(nodoMarkdown, nodo, false)
        } else {
            myPar = new MDParams()
        }
        def reportText = new StringBuilder()
        def rootNodes = nodo.children.findAll{!it.icons.icons.disjoint(icon.ignoreContent)} + nodo //
        def allChildren = rootNodes*.children.flatten()                                     //
        def nodos = allChildren.findAll{isTask(it)} //TODO: QA agregar condicion icon.task 
        nodos.each{
            reportText << tarea(it, myPar)
        }
        if(!reportText) return failMessage('No tasks found!!')
        reportText << "\n"
        return reportText.toString()
    }

    def static tarea(n, par){
        def pre
        def post
        if (hasTaskStyle(n)){
            def st = n.style.name //TODO: QA agregar condicion icon.task
            switch(st){
                case ['Tarea pendiente','pendingTask']:
                    pre  = '- [ ] '   // '- [ ] <FONT COLOR=#198cb3>'  // this formating won't show up in GitHub
                    post = ''         // '</FONT>'
                break
                case ['Siguiente tarea','nextTask']:
                    pre  = '- [ ] **'   // '- [ ] **<FONT COLOR=#FF4500>'
                    post = '**'         // '</FONT>**'
                break
                case ['maybeTask']:
                    pre  = '- [ ] *'   // '- [ ] *<FONT COLOR=#477585>'
                    post = '*'         // '</FONT>*'
                break
                case ['Tarea finalizada','completedTask']:
                    pre  = '- [x] '
                    post = ''
                break
                case ['Tarea Descartada','discardedTask']:
                    pre  = '- [ ] *<del>'     // '- [ ] *<FONT COLOR=#808080><del>'
                    post = '</del>*'          // '</del></FONT>*'
                break
            }
        } else {
            if (!n.icons.icons.disjoint(icon.completed)){
                pre ='- [x] '
                post = ''
            } else {
                pre ='- [ ] ' //<FONT COLOR=#198cb3>'
                post = ''     //</FONT>'
            }
        }
        def wipText = isWorkInProgress(n)?" (working on it: ~${taskProgress(n)})".toString():''
        // return "$pre${oneLiner(n.text.trim())}${wipText}$post\n"
        return "$pre${oneLiner(n.note?:n.text  + (n.details && !par.ignoreLeafDetails ? '  \n' + n.details : '' ))}${wipText}$post\n"
    }
    
    def static nestedTaskList(nodo){
        def nodoMarkdown = getNodoMarkdown(nodo, true)
        def myPar
        if(nodoMarkdown) {
            myPar = new MDParams(nodoMarkdown, nodo, false)
        } else {
            myPar = new MDParams()
        }
        def reportText = new StringBuilder()
        reportText << listaTareas(nodo,0, myPar)
        if(!reportText) return failMessage('No tasks found!!')
        reportText << "\n"
        return reportText.toString()
    }
    
    def static listaTareas(nodo,L, par){
        def reportText = new StringBuilder()
        def rootNodes = nodo.children.findAll{!it.icons.icons.disjoint(icon.ignoreContent)} + nodo //
        def allChildren = rootNodes*.children.flatten()                                     //
        def nodos = allChildren.findAll{isTask(it)} //TODO: QA agregar condicion icon.task 
        //return 'hola   ' + nodos.toString()
        nodos.each{
            reportText << "${ind * L}${tarea(it, par)}"
            reportText << listaTareas(it, L + 1, par)
        }
        return reportText
    }
    
    def static isTask(n){
        hasTaskStyle(n) || !n.icons.icons.disjoint(icon.isTask)
    }
    
    def static hasTaskStyle(n){
//        return  n.style.name?.toLowerCase()?.contains(TaskWordInStyle.toLowerCase())
        return  n.style.name? (TaskWordInStyle*.toLowerCase().any{n.style.name.toLowerCase().contains(it)}) : false
    }

    def static isWorkInProgress(n){
        return progUtil.hasProgressIcons(n.delegate) && !progUtil.hasOKIcon(n.delegate)
    }

    def static taskProgress(n){
       return isWorkInProgress(n)? n.icons.icons.find{it.endsWith('%')} : ''
    }
    
    //endregion
    
    //region other MD Nodes

    def static codeBlock(n){
        def reportText = new StringBuilder()
        def nodo = n.children?.find{it.details[0]=='.'}
        if(!nodo) return failMessage('No code found!!')
        def lang = nodo.details.drop(1)
        lang = lang.takeBefore(' ')?:lang
        lang = lang.takeBefore('\n')?:lang
        reportText
            << "Code: **'${nodo.text}'**\n\n"
            << "```${lang}\n"
            << nodo.note
            << "\n```\n\n"
        return reportText.toString()
    }

    def static textBlock(n){
        def nodo = n.children.find{it.note}
        if(!nodo) return failMessage('No node with note found!!')

        def nota = nodo.note
        nodo.children.collect{it.note?:it.text}.eachWithIndex{r, i ->
            nota = nota.replace("\$${i+1}".toString(),oneLiner(r.toString()))
        }
        return (nota + '\n\n').toString()
    }
    
    def static comment(nodo){
        def textos = nodo.children.collect{it.note?:it.text}.join('\n\n')//.replace('\n\n\n\n','\n\n').replace('\n\n\n','\n\n') // <--- esto puede ser que se necesite, no he cachado aún
        return '> ' + textos.replace('\n','\n> ')//.replace('\n> \n','\n\n')
    }

    def static table(n){
        def nodos = n.children
        if(!nodos || nodos.size()< 2) return failMessage('Not enough rows found!!')
        def t = new StringBuilder()
        t << row(nodos[0]) 
        t << row(nodos[0], true)
        nodos[1..-1].each{
            t << row(it)
        }
        t << '\n'
        return t.toString()
    }             

    def static row(n){
        return row(n, false)
    }

    def static row(n, isDashRow){
        def texto = new StringBuilder()
        def pre = ''
        def post = ''
        texto << '|'
        n.children.each{
            def txt
            if(!isDashRow){
                txt = oneLiner(it.note?:it.displayedText)
            } else {
                pre = !it.icons.icons.disjoint(icon.centered)?':':''
                post = (!it.icons.icons.disjoint(icon.alignRight) ||  !it.icons.icons.disjoint(icon.centered))?':':''
                txt = "${pre}----${post}"
            }
            texto << "${txt}|"
        }    
        texto << '\n'
        return texto.toString()
    }

    //endregion

//endregion

//region helpnode

    def static linkedNodeText(nodo){
        def n = getNodeWithLinkToFile(nodo)
        if (n){
            return n.text
        } else {
            return  'to be linked to node with file'
        }
    }
    
    def static getNodeWithLinkToFile(n){
        return (n.link && n.link.uri.scheme=='file')?n: //TODO: QA Add Iamage Object
               n.externalObject.uri?n:
               n.connectorsOut.target.findResult{getNodeWithLinkToFile(it)}?:
               n.link?.node?getNodeWithLinkToFile(n.link.node):
               null    
    }   

//endregion

//region 2do orden
    def static failMessage(msg){
        return "\n\n----\n\n--- $msg ---\n\n----\n\n".toString()
    }
    
    def static oneLiner(t){
        while (t.endsWith('\n')){
            t = t[0 .. -3]
        }
        while(t.contains('\n\n')){
            t = t.replace('\n\n','\n')
        }        
        return t.replace('\n','<br>')
    }
//endregion

}
