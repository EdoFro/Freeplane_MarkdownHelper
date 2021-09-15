package edofro.MarkDownHelper

import org.freeplane.plugin.script.FreeplaneScriptBaseClass.ConfigProperties


class WSE_redux{
    static final String attributeForExtensions =  new ConfigProperties().getProperty('wikdShellExtension_attributeForExtensions','file_ext')

//region: get/set/is extension from selected node

    def static extensionFromNode(n){
        extensionFromAttribute(n)?:extensionFromDetails(n)?:extensionFromText(n)?:null
    }

    def static extensionFromAttribute(n){
        n[attributeForExtensions]?:null
    }

    def static extensionFromDetails(n){
        n.details?.size()>1?n.details?[0]=='.'?n.details.drop(1).takeBefore(' ').takeBefore('\n')?:n.details.drop(1).takeBefore('\n')?:n.details.drop(1).takeBefore(' ')?:n.details.drop(1):null:null
    }

    def static extensionFromText(n){
        n.text.reverse().takeBefore('.').reverse()
    }

    def static extensionFromFilePath(filepath){
        return filepath.reverse().split("\\.")[0].reverse().toLowerCase()
    }

    def static setExtension(n, ext){
        // If it's allready defined --> do nothing
        if(extensionFromAttribute(n)==ext || extensionFromDetails(n)==ext) return
        //I prefer it in this order:
            // only details
            // if details are beeing Used --> attribute
        if(!n.details){
            n.details = '.' + ext
        } else {
            n[attributeForExtensions] = ext
        }
    }

    def static extensionFromNodeFile(n){
        (n.link && n.link.uri && n.link.uri.scheme == 'file')?extensionFromFilePath(n.link.uri.path):null
    }

    def static isExtensionNode(n, extension){
        def ext = extensionFromNodeFile(n)?:extensionFromNode(n)
        return ext?ext==extension:false
    }

//end:


//region: groovy Node

    def static isGroovyNode(n){
        return (isExtensionNode(n, 'groovy') || n['script1']?true:false)
    }

    def static scriptFromNode(n){
        def input = null
        if (isGroovyNode(n)){
            if ( extensionFromNodeFile(n) == 'groovy' ) {
                input   = n.link.file.text
            } else if ( n['script1']?true:false ){
                input   = n['script1'].plain.toString().trim()
            } else if ( n.note ){
                input   = n.note.toString()
            }
        }
        return input
    }

//end:

}

