<map version="freeplane 1.11.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="changing MDH nodes" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_1400392944"><hook NAME="MapStyle" background="#f9f9f8">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="MarkdownHelperNode" LAST="false">
            <attribute_exists_condition ATTRIBUTE="MDHType"/>
        </conditional_style>
    </conditional_styles>
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_note_icons="true" fit_to_viewport="false" associatedTemplateLocation="template:/vis01%20light_nord_template%20vEdo%20v2.mm" mapUsesOwnSaveOptions="true" save_folding="save_folding_if_map_is_changed" save_last_visited_node="default" save_modification_times="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="2 px">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;-13.5 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="Dialog" SIZE="10" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="horizontal" COLOR="#2e3440" WIDTH="1" DASH="SOLID"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" ID="ID_861824498" COLOR="#006666" BACKGROUND_COLOR="#a5cece" BACKGROUND_ALPHA="204" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true">
<font NAME="Lucida Sans" SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes" ID="ID_199621123">
<font NAME="Lucida Sans" SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" ID="ID_810825098" COLOR="#004600" BACKGROUND_COLOR="#e8e8c8" TEXT_ALIGN="LEFT">
<icon BUILTIN="clock2"/>
<font NAME="Consolas" SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating" ID="ID_608497754">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" COLOR="#eceff4" BACKGROUND_COLOR="#bf616a" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode TEXT="MarkdownHelperNode" COLOR="#dbffdb" BACKGROUND_COLOR="#333333" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="MarkdownHelperLink" COLOR="#dbffdb" BACKGROUND_COLOR="#4c4c7f" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F517"/>
</stylenode>
<stylenode TEXT="MarkdownHelperPreview" COLOR="#333333" BACKGROUND_COLOR="#ffffff">
<font NAME="Tahoma" SIZE="14"/>
<hook NAME="NodeCss">pre {
    background-color: #e5e7ff;
    border-left: 5px solid #ccc;
    display: block;
    padding: 8px;
    margin: 5px;
}
code {
    font-family: Consolas,&quot;courier new&quot;;
    font-size: 11px;
    color: #999;
}

blockquote {
    border-left: 5px solid #cccccc;
    background-color: #eeeeee;
    padding: 8px;
}</hook>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="15 pt" TEXT_ALIGN="CENTER" MAX_WIDTH="5 cm" MIN_WIDTH="3 cm">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ID="ID_144205114" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="6 pt" SHAPE_VERTICAL_MARGIN="4 pt" MAX_WIDTH="5.5 cm" MIN_WIDTH="5.5 cm">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" ID="ID_159773648" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="MDH nodes" POSITION="bottom_or_right" ID="ID_1121390545">
<node TEXT="Web links" FOLDED="true" ID="ID_325364846">
<node TEXT="inbetween MDH node" ID="ID_1617336996" BACKGROUND_COLOR="#99ccff">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1696386153"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.webLink(node)</text>
</richcontent>
<node TEXT="Graphic Burger" ID="ID_1618304264" LINK="https://graphicburger.com/"/>
</node>
</node>
<node TEXT="direct change" ID="ID_825764056" BACKGROUND_COLOR="#ffcc99">
<node TEXT="Graphic Burger" POSITION="bottom_or_right" ID="ID_1472961338" LINK="https://graphicburger.com/">
<attribute NAME="MDHType" VALUE="webLink"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.inator(node)</text>
</richcontent>
</node>
</node>
</node>
<node TEXT="Web Image" FOLDED="true" ID="ID_1947222671">
<node TEXT="inbetween MDH node" ID="ID_1069736258" BACKGROUND_COLOR="#99ccff">
<node TEXT="web Image" STYLE_REF="MarkdownHelperNode" ID="ID_143037591"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webImageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="edofro" ID="ID_617607449" LINK="https://avatars.githubusercontent.com/u/35700575?s=80&amp;u=e0137ea09811abad4d6df07e9c029521a5553911&amp;v=4"/>
</node>
</node>
<node TEXT="direct change" ID="ID_1033484922" BACKGROUND_COLOR="#ffcc99">
<node TEXT="edofro" POSITION="bottom_or_right" ID="ID_1412731224" LINK="https://avatars.githubusercontent.com/u/35700575?s=80&amp;u=e0137ea09811abad4d6df07e9c029521a5553911&amp;v=4">
<attribute NAME="MDHType" VALUE="webImage"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.inator(node)
</text>
</richcontent>
</node>
</node>
</node>
<node TEXT="Markdown document.md" STYLE_REF="MarkdownHelperNode" ID="ID_1788465250">
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<attribute NAME="lineOverHeader" VALUE="true"/>
<attribute NAME="ignoreHeaderDetails" VALUE="true"/>
<attribute NAME="ignoreHeaderNotes" VALUE="true"/>
<attribute NAME="ignoreLeafDetails" VALUE="false"/>
<attribute NAME="ignoreHeaderImageObjects" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/auto">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="link to local file" FOLDED="true" ID="ID_862640553">
<node TEXT="inbetween MDH node" ID="ID_1714633501" BACKGROUND_COLOR="#99ccff">
<node TEXT="absolute" ID="ID_942055445">
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_616283257"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.fileLink(node,true)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="readme.txt" POSITION="bottom_or_right" ID="ID_477478881" LINK="file:/C:/Users/efroh/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/readme.txt"/>
</node>
<node TEXT="&apos;= edofro.MarkDownHelper.MDH.fileLink(node,true)" ID="ID_1262131587"/>
</node>
<node TEXT="relative" ID="ID_824846834">
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_297772700"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.fileLink(node,true) //xx

</text>
</richcontent>
<node TEXT="readme.txt" POSITION="bottom_or_right" ID="ID_296332885" LINK="readme.txt"/>
</node>
</node>
</node>
<node TEXT="direct change" ID="ID_1580909938" BACKGROUND_COLOR="#ffcc99">
<node TEXT="absolute" ID="ID_32838634">
<node TEXT="readme.txt" POSITION="bottom_or_right" ID="ID_1947525098" LINK="file:/C:/Users/efroh/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/readme.txt">
<attribute NAME="MDHType" VALUE="localLink"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.inator(node)&#xd;
</text>
</richcontent>
</node>
</node>
<node TEXT="relative" ID="ID_934210636">
<node TEXT="readme.txt" POSITION="bottom_or_right" ID="ID_580979398" LINK="readme.txt">
<attribute NAME="MDHType" VALUE="localLink"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.inator(node)&#xd;
</text>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="link to local image" FOLDED="true" ID="ID_946562617">
<node TEXT="inbetween MDH node" ID="ID_202685713" BACKGROUND_COLOR="#99ccff">
<node TEXT="absolute" POSITION="bottom_or_right" ID="ID_1691711270">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1625027975"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="dinosaur-5995333_100.png" POSITION="bottom_or_right" ID="ID_1956308775" LINK="file:/C:/Users/efroh/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/dinosaur-5995333_100.png"/>
</node>
</node>
<node TEXT="relative" POSITION="bottom_or_right" ID="ID_32069860">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1449470220"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true) 

</text>
</richcontent>
<node TEXT="dinosaur-5995333_100.png" POSITION="bottom_or_right" ID="ID_565600979" LINK="dinosaur-5995333_100.png"/>
</node>
</node>
</node>
<node TEXT="direct change" ID="ID_250080054" BACKGROUND_COLOR="#ffcc99">
<node TEXT="absolute" POSITION="bottom_or_right" ID="ID_33231156">
<node TEXT="dinosaur-5995333_100.png" POSITION="bottom_or_right" ID="ID_1893189444" LINK="file:/C:/Users/efroh/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/dinosaur-5995333_100.png">
<attribute NAME="MDHType" VALUE="localImage"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.inator(node)&#xd;
  </text>
</richcontent>
</node>
</node>
<node TEXT="relative" POSITION="bottom_or_right" ID="ID_1097075482">
<node TEXT="dinosaur-5995333_100.png" POSITION="bottom_or_right" ID="ID_1818198974" LINK="dinosaur-5995333_100.png">
<attribute NAME="MDHType" VALUE="localImage"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.inator(node)&#xd;
//x</text>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="List" FOLDED="true" ID="ID_1895431780">
<node TEXT="Markdown document.md" STYLE_REF="MarkdownHelperNode" ID="ID_633202206">
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<attribute NAME="lineOverHeader" VALUE="true"/>
<attribute NAME="ignoreHeaderDetails" VALUE="true"/>
<attribute NAME="ignoreHeaderNotes" VALUE="true"/>
<attribute NAME="ignoreLeafDetails" VALUE="false"/>
<attribute NAME="ignoreHeaderImageObjects" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="inbetween MDH node" POSITION="bottom_or_right" ID="ID_723423815" BACKGROUND_COLOR="#99ccff">
<node TEXT="My list" ID="ID_1905988787"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_391093359"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.list(node)</text>
</richcontent>
<node TEXT="Fruits" ID="ID_43051289">
<icon BUILTIN="emoji-1F522"/>
<node TEXT="apple" ID="ID_945715261"/>
<node TEXT="banana" ID="ID_583937456"/>
<node TEXT="orange" ID="ID_708410783"/>
</node>
<node TEXT="Animals" ID="ID_1988109958">
<node TEXT="pets" ID="ID_1615562890">
<node TEXT="cat" ID="ID_981310677"/>
<node TEXT="dog" ID="ID_713642182"/>
<node TEXT="pig" ID="ID_10040008"/>
</node>
<node TEXT="wild" ID="ID_1232598441">
<node TEXT="tiger" ID="ID_1854956845">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="Zebra" ID="ID_980029281">
<icon BUILTIN="emoji-2714"/>
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="Wolf" ID="ID_1073201568">
<icon BUILTIN="emoji-2714"/>
<icon BUILTIN="emoji-1F532"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="direct change" POSITION="bottom_or_right" ID="ID_299656815" BACKGROUND_COLOR="#ffcc99">
<node TEXT="My list" ID="ID_1648308392">
<attribute NAME="MDHType" VALUE="list"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.inator(node)&#xd;
//xzx</text>
</richcontent>
<node TEXT="Fruits" ID="ID_100588809">
<icon BUILTIN="emoji-1F522"/>
<node TEXT="apple" ID="ID_75393480"/>
<node TEXT="banana" ID="ID_103358974"/>
<node TEXT="orange" ID="ID_1987736869"/>
</node>
<node TEXT="Animals" ID="ID_815904543">
<node TEXT="pets" ID="ID_397514067">
<node TEXT="cat" ID="ID_1030984125"/>
<node TEXT="dog" ID="ID_1142370485"/>
<node TEXT="pig" ID="ID_1600514471"/>
</node>
<node TEXT="wild" ID="ID_112872244">
<node TEXT="tiger" ID="ID_111739512">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="Zebra" ID="ID_656380561">
<icon BUILTIN="emoji-2714"/>
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="Wolf" ID="ID_1723443926">
<icon BUILTIN="emoji-2714"/>
<icon BUILTIN="emoji-1F532"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="plain task list" STYLE_REF="MarkdownHelperNode" ID="ID_734707647"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.plainTaskList(node)</text>
</richcontent>
</node>
<node TEXT="nested task list" STYLE_REF="MarkdownHelperNode" ID="ID_676895093"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.nestedTaskList(node)</text>
</richcontent>
</node>
<node TEXT="code block" STYLE_REF="MarkdownHelperNode" ID="ID_310182885"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.codeBlock(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="cerrar nodos content y abrir su ascendencia" ID="ID_1685637790"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // cerrar nodos 'content'
    </p>
    <p>
      def nodosContent = node.find{it.text == 'content'}
    </p>
    <p>
      
    </p>
    <p>
      nodosContent*.folded = true
    </p>
    <p>
      
    </p>
    <p>
      (nodosContent.pathToRoot.flatten().unique() - nodosContent)*.folded = false
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      return &quot;${nodosContent.size()} nodos content procesados&quot;
    </p>
  </body>
</html></richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
    <p>
      bajo nodo seleccionado
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</map>
