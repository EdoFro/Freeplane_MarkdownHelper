// MarkDownHelper
// edo frohlich
// 2021

package edofro.MarkDownHelper
//imports


class WikiTools{

    def static linkedNodeText(nodo){
        def n = nodo.connectorsOut.target.find{it.link.file}?:   // primer "nodo con link a file" conectado desde nodo
                nodo.link?.node                                  // "nodo con link a file" linkeado desde nodo
        if (n){
            return n.text
        } else {
            return  'to be linked to node with file'
        }
    }

    def static currentLocation(nodo){
        def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(nodo)
        def baseUri = baseNode.link.uri.toString()
        def isMDDoc = {it.link && it.link.file && it.link?.uri?.toString()?.toLowerCase()?.endsWith('.md') && !it.text.startsWith('_') }
        def docNodes = nodo.pathToRoot.findAll(isMDDoc)
        def texto = new StringBuilder()
        docNodes.dropRight(1).each{
            texto << " / [${it.text.takeBefore('.md').replace('-',' ')}](${(it.link.uri.toString()-baseUri).takeBefore('.md')})"
        }
        def pre
        if(!texto){
            texto << ' '
        } else {
            pre = nodo.children?nodo.children[0].text.trim()?:null:null
            def post = nodo.children.size()>1?nodo.children[1].text.trim()?:null:null
            texto            
                << " / ${docNodes[-1].text.takeBefore('.md').replace('-',' ')}"
                << (post?"\n\n${post}":'')
        }
        return ((pre?"${pre}\n\n":'') + texto).toString()
    }

    def static docsInside(nodo){
        def tab = '  '
        //def title ='**Pages in this section**\n\n'
        def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(nodo)
        def baseUri = baseNode.link.uri.toString()
        def isMDDoc = {it.link && it.link.file && it.link?.uri?.toString()?.toLowerCase()?.endsWith('.md') && !it.text.startsWith('_') }
        def myDocNode = nodo.pathToRoot.reverse().find(isMDDoc)
        def docNodes = myDocNode?myDocNode.find(isMDDoc).drop(1):null
        def lP = myDocNode?.getNodeLevel(true)
        
        def texto = new StringBuilder()
        docNodes.each{
            def lN = it.getNodeLevel(true)
            texto << "${tab * (lN - lP - 1)}* [${it.text.takeBefore('.md').replace('-',' ')}](${(it.link.uri.toString()-baseUri).takeBefore('.md')})\n"
        
        }
        def pre
        if(!texto){
            texto << ' '
        } else {
            pre = nodo.children?nodo.children[0].text.trim()?:null:null
            def post = nodo.children.size()>1?nodo.children[1].text.trim()?:null:null
            texto << (post?"\n${post}":'')

        }
        return ((pre?"${pre}\n\n":'') + texto).toString()
    }
    
    def static topDocsList(nodo){
        def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(nodo)
        def baseUri = baseNode.link.uri.toString()
        def isMDDoc = {it.link && it.link.file && it.link?.uri?.toString()?.toLowerCase()?.endsWith('.md') && !it.text.startsWith('_') }
        def docNodes = baseNode.children.findAll(isMDDoc)
        def filterIcon = nodo.icons.first
        if (filterIcon){
            docNodes = docNodes.findAll{it.icons.contains(filterIcon)}
        }
        def texto = new StringBuilder()
        docNodes.each{
            texto << "* [${it.text.takeBefore('.md')}](${(it.link.uri.toString()-baseUri).takeBefore('.md')})\n"
        }
        return texto.toString()
    }    

    // TODO: ver si requiere nodos hijos pre y post
    def static structuredDocsList(nodo){
        def tab = '  '
        def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(nodo)
        def baseUri = baseNode.link.uri.toString()
        def isMDDoc = {it.link && it.link.file && !it.text.startsWith('_') && it.link?.uri?.toString()?.toLowerCase()?.endsWith('.md') }
        def docNodes = baseNode.find(isMDDoc)
        
        def filterIcon = nodo.icons.first
        if (filterIcon){
            docNodes = docNodes.findAll{it.icons.contains(filterIcon)}
        }
        def lP = baseNode.getNodeLevel(true)
        def texto = new StringBuilder()
        docNodes.each{
            def lN = it.getNodeLevel(true)
            texto << "${tab * (lN - lP - 1)}* [${it.text.takeBefore('.md')}](${(it.link.uri.toString()-baseUri).takeBefore('.md')})\n"
        }
        if(!texto){
            texto << ' '
        }
        return texto.toString()
    }
    
    // TODO: ver si requiere nodos hijos pre y post
    def static linkToWikipage(nodo){
        def n = nodo.children.find{it.link && it.link.uri.scheme=='file'}?:           // primer hijo "nodo con link a file"
                nodo.connectorsOut.target.find{it.link.file}?:                        // primer "nodo con link a file" conectado desde nodo
                nodo.children.connectorsOut.target.flatten().find{it.link.file}?:     // primer "nodo con link a file" conectado desde nodo hijo
                nodo.children.find{it.link.node}?.link?.node?:                        // "nodo con link a file" linkeado desde primer hijo con link
                nodo.link?.node                                                       // "nodo con link a file" linkeado desde nodo
        if(n){
            def texto =n.text.takeBefore('.md')
            def uri = n.link.uri.toString().takeAfter('.wiki/').takeBefore('.md')
            
            if(texto && (texto == uri || texto == uri.replace('-',' '))){
                return "[${texto.replace('-',' ')}]($uri)"
            } else {
                return /*edofro.MarkDownHelper.*/ MDH.failMessage('No wiki page found!!') //TODO:limpiar
            }
        } else {
            return /*edofro.MarkDownHelper.*/ MDH.failMessage('No wiki page found!!') //TODO:limpiar
        }
    }    

    def static previousAndNext(nodo){
        def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(nodo)
        def baseUri = baseNode.link.uri.toString()
        
        def isMDDoc = {it.link && it.link.file && it.link?.uri?.toString()?.toLowerCase()?.endsWith('.md') && !it.text.startsWith('_') }
        
        def pathToRootDocNodes = nodo.pathToRoot.findAll(isMDDoc)
        def thisDocNode = pathToRootDocNodes?pathToRootDocNodes[-1]:null
        if(!thisDocNode) return ' '
        
        def docNodes = baseNode.find(isMDDoc)
        def pos = docNodes.indexOf(thisDocNode)
        
        def prevDocNode = pos>0?docNodes[pos - 1]:null
        def nextDocNode = pos<docNodes.size()?docNodes[pos + 1]:null
        
        def pre = nodo.children?nodo.children[0].text.trim()?:null:null
        def post = nodo.children.size()>1?nodo.children[1].text.trim()?:null:null
        
        return "${pre?"${pre}\n\n":''}${ wikiLink(prevDocNode,baseUri,'<<< ','')} - ${ wikiLink(nextDocNode,baseUri,'',' >>>')}${post?"\n\n${post}":''}"
    }

    def static wikiLink(n, baseUri, pre, post){
        return n?"[${pre}${n.text.takeBefore('.md').replace('-',' ')}${post}](${(n.link.uri.toString()-baseUri).takeBefore('.md')})":"${pre}-${post}"
    }
}