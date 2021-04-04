package edofro.MarkDownHelper

class MDI_redux{
    private static final String styleFolder         = 'file_folder'
    private static final String styleBaseFolder     = 'baseFolder'

// --------------------------------- obtainPathFromMap -----------------------
    //function, returns string, builds the new path string by looking at the position of the node in the mindmap
    //it uses all the file-folder styled nodes till the base node
    def static obtainPathFromMap(n) {
        def texto =''
        def baseFolderNode = obtainBaseFolder(n)
        if(baseFolderNode){
            while(!n.equals(baseFolderNode)){
                if(nodeIsFolder(n)){
                    texto = correctFolderName(n) << File.separator << texto  //TODO: Linux
                }
                n = n.parent
            }
            texto = getPathFromLink(baseFolderNode) << texto
        }
        return texto.toString()
    }

    // function, returns Node ("Base folder") under the selected node
    def static obtainBaseFolder(n) {
        // returns the first node which has a link to a file directory and has style styleFolder + styleBaseFolder
        //return n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder)}
        def nBase = n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder) && it.hasStyle(styleBaseFolder)}?:
                    (n.link?.file?.directory && n.hasStyle(styleFolder))?n:
                    n.pathToRoot.find{it.link?.file?.directory && it.hasStyle(styleFolder)}?:
                    n.pathToRoot.find{it.link?.file?.directory}
        return nBase
    }

    def static nodeIsFolder(n){
        return n.hasStyle(styleFolder)
    }

    //function, returns string, looks at text in node and correct it if it can't be used as a foldername (privado)
    def static correctFolderName(n){
        String texto = n.text.trim().replace('/','-').replace(File.separator,'-')//.replace('.','-') //replaces chars not usefull in a Folder name    //TODO: Linux
        if(n.text != texto) n.text = texto//corrects text in node too
        return texto // returns the corrected text
    }

    def static getPathFromLink(n){
        //return n.link.uri.path.drop(1) as String 
        def lastChar = (n.link.file?.directory || nodeIsFolder(n))?File.separator:'' //TODO: Linux
        return (n.link.file?n.link.file.path + lastChar:null)
    }   
// -------------------------------  createPath ------------------------------

    // create all folders of a path (if they doesn't exist)
    def static createPath(String p) {
        //ui.informationMessage('createPath ' + p)
        def folders = p.replace(File.separator,'/').split('/')    //TODO: Linux
        //ui.informationMessage(folders.toString())
        def path =''
        folders.each{ String f ->
            path = path << f  << '/'
            createFolder(path.toString())
        }	
    }

    // create new folder if it doesn't exist (privado)
    def static createFolder(String folderName) {
        def folder = new File(folderName)
        if (!folder.isDirectory()){
            folder.mkdir()
        }
    }

}