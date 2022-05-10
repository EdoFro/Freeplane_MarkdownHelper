package edofro.MarkDownHelper

//region: imports
import edofro.pseudofreeplaneapi.UserStyles as us

import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import java.nio.file.attribute.BasicFileAttributes

import javax.swing.JFileChooser

import org.freeplane.core.ui.CaseSensitiveFileNameExtensionFilter
import org.freeplane.core.ui.components.UITools as ui
import org.freeplane.core.util.TextUtils as textUtils
import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties
import org.freeplane.plugin.script.proxy.ScriptUtils

//end:



class MdhCleaner{

// region: properties
    static final String noMdhMapMsg             = 'Current mind map has no MDH styled nodes. Nothing to do. Aborted.'
    static final ArrayList MdhStyleNames        = MDH.MdhStyleNames
    static final String saveMapMessage          = 'Save map to continue?'
    static final String MDHTitle                = 'MarkdownHelper'
    static final String mapNotSavedMsg          = "The original map wasn't saved. Aborted"
    static final String chooseFileTitle         = "Save mindmap copy as 'MDH-Clean' mindmap"
    static final String noExportFilePathMsg     = 'No export file chosen. Aborted.'
    static final String abortedMsg              = ' Aborted '
    static final String mapOpenWithChangesMsg   = 'Export map is open and has unsaved changes. \nDo you want to lose that changes and overwrite it?'
    static final String mapCloseWithChangesMsg  = 'Export map has been modified after the previous export. \nDo you want to lose that changes and overwrite it?'
    static final ArrayList listOfStylesToProcess = [MDH.MDNodeStyle]
    static final String pathVariable            = 'mdhCleanMindmapPath'
    static final String exportDateVariable      = 'mdhCleanMindmapExportDate'

    static final c                 = ScriptUtils.c()
    static ConfigProperties config = new ConfigProperties()
    
// end:

    /**
     * saves a copy of the source mindmap as a map without MDH nodes and styles.
     * <p>
     * source mindmap should be open in Freeplane.
     *
     * @param sourceMap descr
     */
    def static saveAsMdhCleanMap(sourceMap){
        //1. confirms that Map uses MDH
        if(!hasMDH(sourceMap)){
            ui.showMessage(noMdhMapMsg,1)
            return 'aborted: 0'
        }
        
        //2. saves current map
        def isMapSaved = sourceMap.saved || doUserSavesMap(sourceMap)
        if(!isMapSaved){
            ui.showMessage(mapNotSavedMsg,0)
            return 'aborted: 1'
        }
        
        //3. gets exportFilePath
        def exportFilePath = sourceMap.storage[pathVariable]?.to?.string
        def loggedLastDate = sourceMap.storage[exportDateVariable]
        loggedLastDate = (loggedLastDate && loggedLastDate.isDate())?loggedLastDate.to.date:null

        exportFilePath = confirmExportFilePath(sourceMap, exportFilePath)
        if(!exportFilePath) {
            ui.showMessage(noExportFilePathMsg,0)
            return 'aborted: 2'
        }
        
        //4. confirms that the target file has no additional modifications that may be unvoluntary overwritten
        def okToContinue = isConflictFree(exportFilePath, loggedLastDate)
        if(!okToContinue){
            ui.showMessage(abortedMsg,0)
            return 'aborted: 3'
        }
        
        // 5. clone sourceMap --> targetMap
        def sourceFile = sourceMap.file
        def targetFile = new File(exportFilePath)
        def targetMap = c.mapLoader(sourceFile).newMapLocation(targetFile)
                            //.saveAfterLoading()
                            //.withView() // make all changes not visible
                            .getMindMap()
        targetMap.evaluateOutdatedFormulas() //maybe better evaluateAllFormulas ?
        
        // 6. delete MDH variables from targetMap
        targetMap.storage[exportDateVariable] = null
        targetMap.storage[pathVariable]       = null

        
        // 7. get MDH style nodes from map
        def MdhStyleNodesInMap  = us.getUserDefinedStylesParentNode(targetMap).children.findAll{it.text in MdhStyleNames }
        def MdhStyleNamesInMap  = MdhStyleNodesInMap.collect{it.text}
        def stylesToProcess     = listOfStylesToProcess.intersect(MdhStyleNamesInMap)
        
        // 8. process MDH nodes
        def nodosMDH         = targetMap.root.find{ it.style.name in stylesToProcess}
        def nodosPrincipales = nodosMDH.findAll{ n -> !(n.pathToRoot - n)*.style*.name.any{it in stylesToProcess} }
        nodosPrincipales.each{ n ->
            removeMDHfromNode(n)
        }
        
        // 9. clean other MDH styles
        def otherMdhStyles = (MdhStyleNames -  listOfStylesToProcess).intersect(MdhStyleNamesInMap)
        nodosMDH         = targetMap.root.find{ it.style.name in otherMdhStyles}
        nodosMDH.each{n ->
            n.style.name = null
        }
        
        // 10. delete MDH styles from map
        MdhStyleNodesInMap.each{n ->
            n.delete()
        }
        
        // 11. activates sourceMap
        //def sourceFile = sourceMap.file
        //c.mapLoader(sourceFile).withView().getMindMap()
        
        // 12. targetMap visible
        targetMap.modeController.mapController.createMapView(targetMap.delegate)
        
        // 13. save targetMap without modification dates (cleaner for Github)
        def configKey = 'save_modification_times'
        def configValue = config.properties[configKey] 
        config.properties[configKey] = 'false'
        
        targetMap.saved = false
        targetMap.save(true)
        
        config.properties[configKey] = configValue
        
        // c.select(nodosPrincipales)

        
        // 14. update map variables
        sourceMap.storage[pathVariable] = exportFilePath
        sourceMap.storage[exportDateVariable] = fileLastModifiedDate(exportFilePath).format("yyyy-MM-dd HH:mm:ss.SSSZ").toString()

        // 15. save source map
        sourceMap.save(true)

        // 16. ready!
        ui.informationMessage('Ready!\n\ncopy of mindmap without MDH exported')
        return 'ok!!!'        
    }

// region: help methods

    /**
     * looks if the mindmap has any node using a MDH style
     *
     * @param mindmap the mindmap as 
     * @return true if the map has a node with an MDH style assigned to it. False otherwise.
     */    
    def static hasMDH(mindmap){
        mindmap.root.findAll().any{n-> n.style.name in MdhStyleNames}
    }

    /**
     * shows confirm dialog
     *
     * @param  msg    message to be shown 
     * @param  title  text to be used as title in the dialog
     * @return true if user confirms. false otherwise
     */
    def static continueDialog(msg, title){
        return ui.showConfirmDialog(null, msg, title, 2) == 0
    }

    /**
     * asks the user to save the mindmap (if it hasn't been save yet)
     *
     * @param mapa mindmap
     * @return true if mindmap is finally saved. False otherwise
     */
    def static doUserSavesMap(mapa){
        if (!mapa.saved){
            if(continueDialog( saveMapMessage, MDHTitle)){
                mapa.save(true)
            }
        }
        return mapa.saved
    }


        
    def static isConflictFree(exportFilePath, loggedLastDate){
        def doContinue = true
        def tempTargetMap = getIfMindMapOpen(exportFilePath)
        def isSaved = !tempTargetMap ? true : tempTargetMap.saved
        if (!isSaved) {
            doContinue = continueDialog(mapOpenWithChangesMsg, MDHTitle)
        } else if( loggedLastDate && fileLastModifiedDate(exportFilePath) > loggedLastDate ) { // comparing last modified dates (file vs map variable)
            doContinue = continueDialog(mapCloseWithChangesMsg, MDHTitle)
        }
        if(tempTargetMap && doContinue){
            tempTargetMap.close(true, false)
        }
        return doContinue
    }

    // getting last modified date from file
    def static fileLastModifiedDate(filePath){
        Path file    =   Paths.get(filePath)
        if (!file.toFile().isFile()) return null
        BasicFileAttributes attr    =   Files.readAttributes(file, BasicFileAttributes.class)
        return   attr?.lastModifiedTime().toInstant().toDate()
    }

    def static getIfMindMapOpen(path){
        c.openMaps.find{it.file?.canonicalPath == path}
    }

    def static doProposeName(mapa){
        def withMDH = '-MDH.'
        def mapName = mapa.file.name
        return mapName.contains(withMDH)?mapName.replace(withMDH, '.'): mapName.replace('.mm','_MdhRemoved.mm')
    }

    def static fileChooser(directory, proposedName, title){
        def chooser = ui.newFileChooser(directory)
        chooser.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES)
        chooser.setFileFilter(new CaseSensitiveFileNameExtensionFilter('mm', textUtils.getText("mindmaps_desc")))
        chooser.setAcceptAllFileFilterUsed(false)
        chooser.setSelectedFile(new File(proposedName))
        chooser.setDialogTitle(title)
        def resp = chooser.showSaveDialog(ui.frame)
        def selectedFilePath
        if( resp == JFileChooser.APPROVE_OPTION){
            selectedFilePath = chooser.selectedFile.path
            selectedFilePath = selectedFilePath.endsWith('.mm')? selectedFilePath : (selectedFilePath + '.mm')
        }
        return selectedFilePath
    }

    def static confirmExportFilePath(sourceMap, exportFilePath){
        if(!exportFilePath) {
            def proposedName = doProposeName(sourceMap)
            def directory = sourceMap.file.parentFile
            exportFilePath = fileChooser(directory, proposedName,chooseFileTitle)
        } else {
            def tempTargetFile = new File(exportFilePath)
            exportFilePath = fileChooser(tempTargetFile.parentFile, tempTargetFile.name, chooseFileTitle)
        }
        return exportFilePath
    }

    def static removeMDHfromNode(n){
        def mdText = n.note?.plain
        n.noteText = mdText
        n.attributes.clear()
        n.style.name = null
        n.noteContentType = 'markdown'
        n.children*.delete()
        n.icons.add('emoji-1F4D5') //TODO: this should be optional
    }

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



}
