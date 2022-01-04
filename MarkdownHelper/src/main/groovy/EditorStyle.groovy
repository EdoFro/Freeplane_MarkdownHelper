package edofro.MarkDownHelper

//region: imports

import java.awt.Font
import javax.swing.text.html.StyleSheet

import org.freeplane.core.ui.components.html.StyleSheetConfigurer;
import org.freeplane.core.ui.components.UITools
import org.freeplane.core.ui.components.html.CssRuleBuilder
import org.freeplane.features.styles.LogicalStyleController.StyleOption
//import org.freeplane.features.nodestyle.NodeStyleController
//import org.freeplane.features.nodestyle.mindmapmode.MNodeStyleController as NSC

import org.freeplane.features.map.MapModel;
import org.freeplane.features.map.NodeModel;
import org.freeplane.features.styles.MapStyleModel;
import org.freeplane.features.mode.Controller;
import org.freeplane.plugin.script.proxy.ScriptUtils
import org.freeplane.plugin.script.proxy.NodeProxy
import org.freeplane.core.util.FreeplaneVersion

import edofro.MarkDownHelper.MarkdownPreview


//end:

class EditorStyle {

//region: properties
    static final String htmlStyle =
        """
            table {border: 0; border-spacing: 0;}
            th, td {border: 1px solid;}
            pre {
                background-color: rgb(230, 230, 230);
                border: 1px solid rgb(0, 0, 0);
                display: block;
                padding: 10px;
            }
            code {
                font-family: Consolas,"courier new";
                color: rgb(0, 80, 0);
            }
        """
    
    static final requiredFreeplaneVersion = FreeplaneVersion.getVersion("1.9.12")

//end:

//region: apply format from node to editorPane document

    def static updateFormat(editorPane, NodeProxy nodo){
        if(!nodo || !editorPane) return null
        updateColors(editorPane, nodo)
        updateStyleSheet(editorPane, nodo as NodeProxy)
        editorPane.updateUI()
    }

    def static updateColors(editorPane, nodo) {
        if(!nodo || !editorPane) return null
        def fgColor = nodo.style.textColor
        //msg(fgColor)
        def bgColor = nodo.style.backgroundColor
        //msg(bgColor)
        editorPane.setForeground(fgColor)
        editorPane.setBackground(bgColor)
    }

    def static updateStyleSheet(editorPane, NodeProxy nodo) {
        if(!nodo || !editorPane) return null
        return updateStyleSheet(editorPane, getStyleSheetFromNode(nodo))
    }

    def static updateStyleSheet(editorPane, StyleSheet ownStyleSheet) {
        if(!ownStyleSheet || !editorPane) return null
        StyleSheet styleSheet = editorPane.getDocument().getStyleSheet();
        StyleSheetConfigurer.resetStyles(styleSheet, 1);
        StyleSheet defaultSheet = StyleSheetConfigurer.createDefaultStyleSheet() //por si acaso
        styleSheet.addStyleSheet(defaultSheet);
        styleSheet.addStyleSheet(ownStyleSheet);
    }

    def static getStyleSheetFromNode(nodo) {
        if(!nodo) return null
        String ownRule  = getCssRuleFromNodeCss(nodo)
        String nodeRule = getCssRuleFromNodeFormat(nodo)
        def ownStyleSheet = new StyleSheet()
        ownStyleSheet.removeStyle("body");
        ownStyleSheet.removeStyle("p");
        ownStyleSheet.addRule(nodeRule);
        ownStyleSheet.addRule(ownRule);
        return ownStyleSheet
    }

    def static getCssRuleFromNodeCss(nodo){
        //if(!nodo) return null
        StringBuilder cssBuilder = new StringBuilder()
        //cssBuilder << "body {"
        cssBuilder << (( !nodo || ScriptUtils.c().freeplaneVersion < requiredFreeplaneVersion )? htmlStyle : nodo.style.css )
        // cssBuilder << "}\n"
        return cssBuilder.toString()
    }

    def static getCssRuleFromNodeFormat(nodo){
        if(!nodo) return null
        def f = nodo.style.font
        StringBuilder ruleBuilder = new StringBuilder(100);
        ruleBuilder.append("body {");
        ruleBuilder.append(new CssRuleBuilder()
                .withCSSFont( new Font(f.name,(f.bold?Font.BOLD:0) + (f.italic?Font.ITALIC:0) ,f.size))
                .withColor(nodo.style.textColor)
                .withBackground(nodo.style.backgroundColor))
                //.withAlignment(getHorizontalTextAlignment(nodo, StyleOption.FOR_UNSELECTED_NODE).swingConstant));
        ruleBuilder.append("}\n");
        return ruleBuilder.toString()
    }

//end:

//region: getting an UserStyleNode as NodeProxy from active map

    def static getUserStyleNode(String userStyle){
        return getUserDefinedStylesParentNode().children.find{it.text == userStyle}
    }

    def static getUserDefinedStylesParentNode(){
        return getUserDefinedStylesParentNode(null)
    }

    def static getUserDefinedStylesParentNode(scriptContext){
        MapModel map = Controller.getCurrentController().getMap();
        MapStyleModel styleModel = MapStyleModel.getExtension(map);
        MapModel styleMap = styleModel.getStyleMap();
        NodeModel userStyleParentNode = styleModel.getStyleNodeGroup(styleMap, MapStyleModel.STYLES_USER_DEFINED);
        def userDefinedParentNode = new NodeProxy(userStyleParentNode, scriptContext)
        return userDefinedParentNode
    }
    
//end:

}

