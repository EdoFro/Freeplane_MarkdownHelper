import edofro.pseudofreeplaneapi.UserStyles as us

//region: opens template map

    def sep         = File.separator
    def userDir     = c.userDirectory.path
    def mapFileName = "MarkdownHelper template.mm"
    def pathName    = userDir + sep + "templates" + sep + "MarkdownHelper" + sep + mapFileName
    def sourceMap   = getMapFromPath(pathName, false) //usar mapa indicado (pero oculto)

    def targetMap = node.map  // --> active map
    
    us.copyUserStyles(sourceMap, targetMap)

//Other use case examples on how to use edofro.pseudofreeplaneapi.UserStyles.copyUserStyles
/*
    def myString = 'ToM_goto'
    def myList = 'ToM_nextPage,ToM_goto,ToM_showNode'.split(',')
    def myClosure =  {it.text.contains('u')}
    def myClosure2 =  {it.text.startsWith('ToM_')}


    us.copyUserStyles(sourceMap, targetMap, myString)
    us.copyUserStyles(sourceMap, targetMap, myList)
    us.copyUserStyles(sourceMap, targetMap, myClosure)
    us.copyUserStyles(sourceMap, targetMap, myClosure2)
*/

// end:

// region: --------------------------- help methods ------------------------

    def getMapFromPath(filePath, withView){
        if(exists(filePath)){
            def m = c.mapLoader(filePath)
            if(withView) m.withView()
            return m.getMindMap()
        }
    }

    def exists(String path){
        exists(new File(path))
    }

    def exists(File file){
        file.isFile()
    }
    
// end:
