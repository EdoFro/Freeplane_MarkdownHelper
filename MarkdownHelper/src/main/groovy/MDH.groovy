// MarkDownHelper
// edo frohlich
// 2021

package edofro.MarkDownHelper
//imports


class MDH{

//region: public properties
// ver ejemplo en WSE.groovy

//end

//region: private properties / definitions
    static final Map markdown = [
        format      : 'markdownPatternFormat',
        contentType : 'markdown'
    ]
    
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
        rootFolder      : 'emoji-1F4CD' 
    ] 
    
    static final String ind          = '   '
    static final String MDNodeStyle  = 'MarkdownHelperNode'
    static final String MDRootAttr   = 'MarkdownRootFolder'
    static final String MDNodeAttr   = 'fileLinksRelative'
    static final String MDBranchAttr = 'MDHGithubBranch'

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
        }            
    }
    
//end


//region: TOC
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
        def i = myPar.topHeaderStartingNumber - 1
        i = i>=0?i:0
        nodos.each{n ->
            def resp = linea(n,1,'',i,myPar)
            i += resp[0]
            reportText << resp[1]
        }
        return reportText.toString() 
    }
//        return nodos.toString() //  <------------ probando

// ---- methods ----

    def static linea(n,t,numParent,h,par){
        if ( t > par.TOClevels ) return [0,'']
        def reportText = new StringBuilder()
        if (!isLeaf(n,par)){ // es padre (título)
            def hNum = numParent
            def m = 0
            if(!ignoreContent(n)){
                hNum = headerNumber(numParent,h,t,par)
                m = 1
                def header = (separated(hNum) + n.text).trim()
                if (par.isToc){
                    reportText << "${par.TOCindent?(ind * t) + '* ':''}[${header}](#${header.replace(' ','-').replace('.','')})\n\n"
                } else {
                    reportText 
                        << "#" * t  + ' ' + header + '\n\n'
                        << ( t <= par.headersToUnderline?('-----\n\n'):'' )
                        << DetailsAndNotes(n)
                }
             }
            def k = 0
            n.children.findAll{!ignoreNode(it,par)}.each{nd ->
                def resp = linea(nd,t + m, hNum, k,par)
                k += resp[0]
                reportText << resp[1]
            }
            return [1, reportText]
        } else { //es nodo final (leaf)
            if(!par.isToc && !ignoreContent(n)){
                def detailsAndNotes = DetailsAndNotes(n)
                def objeto = n.externalObject
                def usarTexto = (!detailsAndNotes && !objeto)//?true:false
                reportText 
                    << (usarTexto?(n.value.toString() + '\n\n'):'')
                    << detailsAndNotes
                    << (objeto?"![${n.details}](${objeto.uri}) \n\n":'')
            }
            return [0, reportText]
        }
    }
    
    def static headerNumber(p,j,u,par){
        if (!par.headerNumbering) return ''
        return  (u >= (par.topHeadersNumbered?1:2))?(p + (j+1).toString() +'.') :''
    }

    def static separated(w){
        return (w?(w + ' '):'')
    }

    def static DetailsAndNotes(m) {
        def details = m.details
        def notes = m.note
        def addContent = new StringBuilder()
        if (details) {
            addContent << details + '\n\n'
        }
        if (notes) {
            addContent << notes + '\n\n'
        }
        while(addContent.contains('\n\n\n')){
            addContent = addContent.toString().replace('\n\n\n','\n\n')
        }
        return addContent.toString()
    }
    
    def static isLeaf(n){
        return (
            n.isLeaf()
            || n.icons.contains(icon.leaf)
            || n.hasStyle(MDNodeStyle)
        )
    }

    def static isLeaf(n,par){
        return (isLeaf(n)
            || !n.children.any{!ignoreNode(it,par)})
    }

    def static ignoreNode(n,par){
        return (n.icons.contains(icon.ignoreNode) || (par.hideFolded && n.isFolded()))
    }

    def static ignoreContent(n){
        return (n.icons.contains(icon.ignoreContent))
    }
//end

//region: MD Nodes
    // returns absolute link    
    def static webLink(nodo){
        def n = nodo.children.find{it.link?true:false}
        if(!n) return failMessage('No link found!!')
        def post = nodo.icons.contains(icon.newLine)?'\n\n':''

        return "[$n.text]($n.link.uri)$post".toString()
    }

    // returns absolute Image link
    def static webImageLink(nodo){
        def n = nodo.children.find{it.link?true:false}
        if(!n) return failMessage('No image found!!')
        def post = nodo.icons.contains(icon.newLine)?'\n\n':''

        return "![$n.text]($n.link.uri)$post".toString()
   }  
    
    // returns file link in absolute or relative format
    def static fileLink(nodo){
        fileLink(nodo, '','')
    }
    def static fileLink(nodo, pre){
        fileLink(nodo, pre,'')
    }
    def static fileLink(nodo, pre, Boolean getBranch){
        def branch = ''
        def nB = getBranch?getNodeByAttr(nodo,MDBranchAttr):null
        if(nB) {
            branch = nB[MDBranchAttr].toString()
        }
        fileLink(nodo, pre, branch)
    }
    
    
    def static fileLink(nodo,String pre, String branch){
        def n = nodo.children.find{it.link && it.link.uri.scheme=='file'}?:           // primer hijo "nodo con link a file"
                nodo.connectorsOut.target.find{it.link.file}?:                        // primer "nodo con link a file" conectado desde nodo
                nodo.children.connectorsOut.target.flatten().find{it.link.file}?:     // primer "nodo con link a file" conectado desde nodo hijo
                nodo.children.find{it.link.node}?.link?.node?:                        // "nodo con link a file" linkeado desde primer hijo con link
                nodo.link?.node                                                       // "nodo con link a file" linkeado desde nodo  
        
        if(!n) return failMessage('No file found!!')
        def post = nodo.icons.contains(icon.newLine)?'\n\n':''


        def nodoMarkdown = getNodoMarkdown(nodo)
        if(!nodoMarkdown) return failMessage('No Markdown node found!!')                                                                        
        //in MDI use formula in Attribute:
        // =node.link.file.canonicalFile.toURI()

        def fileLinksRelative = nodoMarkdown[MDNodeAttr].bool
        branch = branch==''?:branch[-1]=='/'?branch:branch + '/'
        return "[$n.text](${fileLinksRelative?(pre + branch):''}${getFileLink(nodo, n, fileLinksRelative)})$post".toString()  
    }
        
    def static getFileLink(nodo, n, fileLinksRelative){
        def fImage = n.link.file?:null
        if(fImage){
            def uImage = fImage.canonicalFile.toURI()
            def uri = uImage.toString()
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
    
    //returns list
    def static list(nodo){
        def reportText = new StringBuilder()
        
        def bullet = '*'
        reportText << listaNodo(nodo, 0, getBullet(nodo,bullet))
        
        if(!reportText) return failMessage('No list items found!!')
        reportText << "\n"
        
        return reportText.toString()
    }

    def static listaNodo(ndo,L, bullet){
        def texto = new StringBuilder()
        ndo.children.each{n ->
            texto << "${ind * L}${bullet} ${oneLiner(n.note?:n.text)}\n"
            if(!isLeaf(n)){
                texto << listaNodo(n, L + 1, getBullet(n,bullet))
            }
        }
        return texto
    }

    def static getBullet(n,b){
        def ic = n.icons
        def newBullet = ic.contains(icon.number)?'1.': ic.contains(icon.bullet)?'*':null
        return newBullet?:b
    }
    
    def static plainTaskList(nodo){
        def reportText = new StringBuilder()
        def rootNodes = nodo.children.findAll{it.icons.contains(icon.ignoreContent)} + nodo //
        def allChildren = rootNodes*.children.flatten()                                     //
        def nodos = allChildren.findAll{it.style.name?.toLowerCase()?.contains('tarea') || it.icons.contains(icon.isTask)} //TODO: QA agregar condicion icon.task 
        nodos.each{
            reportText << tarea(it)
        }
        if(!reportText) return failMessage('No tasks found!!')
        reportText << "\n"
        return reportText.toString()
    }

    def static tarea(n){
        def pre
        def post
        if (n.style.name?.toLowerCase()?.contains('tarea')){
            def st = n.style.name //TODO: QA agregar condicion icon.task
            switch(st){
                case 'Tarea pendiente':
                    pre ='- [ ] '
                    post = ''
                break
                case 'Siguiente tarea':
                    pre ='- [ ] **'
                    post = '**'
                break
                case 'Tarea finalizada':
                    pre ='- [x] '
                    post = ''
                break
                case 'Tarea Descartada':
                    pre ='- [ ] *<del>'
                    post = '</del>*'
                break
            }
        } else {
            if (n.icons.contains(icon.completed)){
                pre ='- [x] '
                post = ''
            } else {
                pre ='- [ ] '
                post = ''
            }
        }
        return "$pre${oneLiner(n.text.trim())}$post\n"
    }
    
    def static nestedTaskList(nodo){
        def reportText = new StringBuilder()
        reportText << listaTareas(nodo,0)
        if(!reportText) return failMessage('No tasks found!!')
        reportText << "\n"
        return reportText.toString()
    }
    
    def static listaTareas(nodo,L){
        def reportText = new StringBuilder()
        def rootNodes = nodo.children.findAll{it.icons.contains(icon.ignoreContent)} + nodo //
        def allChildren = rootNodes*.children.flatten()                                     //
        def nodos = allChildren.findAll{it.style.name?.toLowerCase()?.contains('tarea') || it.icons.contains(icon.isTask)} //TODO: QA agregar condicion icon.task 
        //return 'hola   ' + nodos.toString()
        nodos.each{
            reportText << "${ind * L}${tarea(it)}"
            reportText << listaTareas(it, L + 1)
        }
        return reportText
    }
    
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
                txt = oneLiner(it.note?:it.text)
            } else {
                pre = it.icons.contains(icon.centered)?':':''
                post = (it.icons.contains(icon.alignRight) ||  it.icons.contains(icon.centered))?':':''
                txt = "${pre}----${post}"
            }
            texto << "${txt}|"
        }    
        texto << '\n'
        return texto.toString()
    }

//end

//region: 2do orden
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
//end


}
