package edofro.pseudofreeplaneapi

//region: imports

import org.freeplane.api.MindMap                as ApiMindMap
//import org.freeplane.api.Node                           as ProxyNode
//import org.freeplane.plugin.script.proxy.Proxy.Node     as ProxyNode
import org.freeplane.plugin.script.proxy.NodeProxy      as ProxyNode
import org.freeplane.core.ui.components.UITools as ui
import org.freeplane.features.map.MapModel;
import org.freeplane.features.map.NodeModel;
import org.freeplane.features.mode.Controller;
import org.freeplane.features.styles.MapStyleModel;
import org.freeplane.plugin.script.ScriptContext
import org.freeplane.plugin.script.proxy.ScriptUtils

//end:


class UserStyles {

//region: properties

//end:

//region: copyUserStyles

    def static copyUserStyles(sourceMap, targetMap, boolean includeConditionalRules, boolean showMessage, groovy.lang.Closure closure){
        def stylesToImport = getUserDefinedStylesParentNode(sourceMap).children.findAll(closure)
        def styleNamesToImport = stylesToImport*.text
        def texto = new StringBuilder("The following styles ${includeConditionalRules?'(including their available conditional rules) ':''}were imported \n from map '${sourceMap.name}.mm' \n into current map '${targetMap.name}.mm':\n\n")
        styleNamesToImport.each{styleName ->
            targetMap.copyStyleFrom(sourceMap, styleName)
            if (includeConditionalRules){
                targetMap.copyConditionalStylesFrom(sourceMap, styleName)
            }
            def sourceStyleNode = getUserStyleNode(sourceMap, styleName )
            def targetStyleNode = getUserStyleNode(targetMap, styleName )
            copyIcons(sourceStyleNode, targetStyleNode)
            copyAttributes(sourceStyleNode, targetStyleNode)
            texto << "   - $styleName\n"
        }
        texto << "\n\n"
        if(showMessage) ui.informationMessage(texto.toString())
    }

    def static copyUserStyles(sourceMap, targetMap){
        copyUserStyles(sourceMap, targetMap, true, true, {true})
    }

    def static copyUserStyles(sourceMap, targetMap, boolean includeConditionalRules, boolean showMessage = true){
        copyUserStyles(sourceMap, targetMap, includeConditionalRules, showMessage, {true})
    }

    def static copyUserStyles(sourceMap, targetMap, groovy.lang.Closure closure){
        copyUserStyles(sourceMap, targetMap, true, true, closure)
    }

    def static copyUserStyles(sourceMap, targetMap, boolean includeConditionalRules, groovy.lang.Closure closure){
        copyUserStyles(sourceMap, targetMap, includeConditionalRules, true, closure)
    }

    def static copyUserStyles(sourceMap, targetMap, String[] lista){
        copyUserStyles(sourceMap, targetMap, true, true, lista)
    }

    def static copyUserStyles(sourceMap, targetMap, boolean includeConditionalRules, String[] lista){
        copyUserStyles(sourceMap, targetMap, includeConditionalRules, true, lista)
    }

    def static copyUserStyles(sourceMap, targetMap, boolean includeConditionalRules, boolean showMessage, String[] lista){
        def closure = {it.text in lista}
        copyUserStyles(sourceMap, targetMap, includeConditionalRules, showMessage, closure)
    }

    def static copyUserStyles(sourceMap, targetMap, String texto){
        copyUserStyles(sourceMap, targetMap, true, true, texto)
    }

    def static copyUserStyles(sourceMap, targetMap, boolean includeConditionalRules, String texto){
        copyUserStyles(sourceMap, targetMap, includeConditionalRules, true, texto)
    }

    def static copyUserStyles(sourceMap, targetMap, boolean includeConditionalRules, boolean showMessage, String texto){
        def closure = {it.text == texto}
        copyUserStyles(sourceMap, targetMap, includeConditionalRules, showMessage, closure)
    }

//end:

//region: copy other things from node to node

    def static copyIcons(sourceNode, targetNode, boolean doClear = true){
        if(doClear) targetNode.icons.clear()
        targetNode.icons.addAll(sourceNode.icons.icons)
    }

    def static copyAttributes(sourceNode, targetNode, boolean doClear = true){
        if(doClear) targetNode.attributes.clear()
        sourceNode.attributes.each{a ->
            targetNode.attributes.add(a.key, a.value)
        }
    }

//end:

//region: getting an UserStyleNode as ProxyNode from active map

// public
    def static getUserStyleNode( String userStyle ){
        return getUserStyleNode( null, userStyle )
    }

    def static getUserStyleNode(ApiMindMap mapaProxy, String userStyle ){
        return getUserDefinedStylesParentNode(mapaProxy).children.find{it.text == userStyle}
    }


    def static getUserDefinedStylesParentNode(x = null){
        return getUserDefinedStylesParentNode((ScriptContext) null)
    }

    def static getUserDefinedStylesParentNode(MapModel mapa){
        return getUserDefinedStylesParentNode(mapa, null)
    }

    def static getUserDefinedStylesParentNode(ApiMindMap mapaProxy){
        return getUserDefinedStylesParentNode(mapaProxy.delegate, null)
    }


    def static getUserDefinedStylesParentNode(ScriptContext scriptContext){
        MapModel mapa = Controller.getCurrentController().getMap();
        return getUserDefinedStylesParentNode(mapa, scriptContext)
    }
    
    def static getUserDefinedStylesParentNode(ApiMindMap mapaProxy, ScriptContext scriptContext){
        return getUserDefinedStylesParentNode(mapaProxy.delegate, scriptContext)
    }

    def static getUserDefinedStylesParentNode(MapModel mapa, ScriptContext scriptContext){
        if(!mapa) {
            return getUserDefinedStylesParentNode(scriptContext)
        }
        MapStyleModel styleModel = MapStyleModel.getExtension(mapa);
        MapModel styleMap = styleModel.getStyleMap();
        NodeModel userStyleParentNode = styleModel.getStyleNodeGroup(styleMap, MapStyleModel.STYLES_USER_DEFINED);
        def userDefinedParentNode = new ProxyNode(userStyleParentNode, scriptContext)
        return userDefinedParentNode
    }
    
//end:

}

