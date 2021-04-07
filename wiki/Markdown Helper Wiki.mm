<map version="freeplane 1.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<node TEXT="Markdown Helper&#xa;Wiki" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1616675654250">
<font SIZE="18"/>
<hook NAME="MapStyle" background="#f9f9f8">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="file" LAST="false">
            <script_condition>
                <script>{node.link?.uri?.scheme == &apos;file&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="modifiedFile" LAST="false">
            <attribute_contains_condition ATTRIBUTE="modifiedFile" VALUE="true"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_folder" LAST="false">
            <script_condition>
                <script>{node.link?.uri?.scheme == &apos;file&apos; &amp;&amp; (node.link.file?.exists()? node.link.file.directory : node.link.uri.path?.reverse()[0] == &apos;/&apos;)}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file_folder_with_icon" LAST="false">
            <conjunct_condition>
                <style_contains_condition TEXT="file_folder"/>
                <script_condition>
                    <script>import org.freeplane.core.util.FreeplaneVersion&#xd;
return (c.freeplaneVersion &lt; FreeplaneVersion.getVersion(&quot;1.9.0&quot;) || !(node.link?.uri?.scheme == &apos;file&apos;) )</script>
                </script_condition>
            </conjunct_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="GroovyNode" LAST="false">
            <script_condition>
                <script>try { edofro.wikdshellextension.WSE.isGroovyNode(node) } catch(e) { false }</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="Warning" LAST="false">
            <node_contains_condition VALUE=".EXIT_ON_CLOSE" ITEM="filter_any_text"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="hasGroovyNode" LAST="false">
            <script_condition>
                <script>(node.findAll() - node).any{
    edofro.wikdshellextension.WSE.isGroovyNode(it)
}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="hasGroovyNode" LAST="false">
            <script_condition>
                <script>node.children.any{edofro.wikdshellextension.WSE.isGroovyNode(it) || it.hasStyle(&apos;hasGroovyNode&apos;)}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="BotonMenu" LAST="false">
            <hyper_link_contains TEXT="menuitem:"/>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="Siguiente tarea" LAST="false">
            <script_condition>
                <script>node.children.any{it.hasStyle(&apos;Siguiente tarea&apos;)}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="contieneSigTareas" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.hasStyle(&apos;Siguiente tarea&apos;)} </script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="contieneTareaPend" LAST="false">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.hasStyle(&apos;Tarea pendiente&apos;)} </script>
            </script_condition>
        </conditional_style>
    </conditional_styles>
    <properties fit_to_viewport="false" show_icon_for_attributes="true" show_note_icons="true" followedMapLastTime="1616419839141" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" followedMapLocation="file:/C:/Users/Edo/AppData/Roaming/Freeplane/1.9.x/templates/vis01%20light_nord_template%20vEdo.mm"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="2 px">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;-7.5 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
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
<stylenode LOCALIZED_TEXT="defaultstyle.selection" ID="ID_1160012844" COLOR="#eceff4" BACKGROUND_COLOR="#bf616a" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode TEXT="MarkdownHelperNode" ID="ID_1434337790" COLOR="#dbffdb" BACKGROUND_COLOR="#333333" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="baseFolder" ID="ID_1722790539" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="newFolderImport" ID="ID_285311779" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="freshNew" ID="ID_223077367" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</stylenode>
<stylenode TEXT="movedRenamed" ID="ID_1479260559" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</stylenode>
<stylenode TEXT="file" ID="ID_209443727" BORDER_WIDTH="2.5 px" BACKGROUND_COLOR="#bcc6e0" FORMAT="NO_FORMAT">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="file_folder" ID="ID_788096686" BORDER_WIDTH="3 px"/>
<stylenode TEXT="missing" ID="ID_355138539" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="broken-line"/>
</stylenode>
<stylenode TEXT="modifiedFile" ID="ID_1602500834" BACKGROUND_COLOR="#ffcc00" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#00659b">
<icon BUILTIN="emoji-002A-20E3"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="locked" ID="ID_601851603" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px">
<icon BUILTIN="emoji-1F512"/>
</stylenode>
<stylenode TEXT="file_folder_with_icon" ID="ID_1308504033">
<icon BUILTIN="emoji-1F4C2"/>
</stylenode>
<stylenode TEXT="GroovyNode" ID="ID_728893789" BACKGROUND_COLOR="#66cccc" STYLE="rectangle">
<icon BUILTIN="emoji-1F951"/>
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="Warning" ID="ID_236295309" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="6 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#990000">
<icon BUILTIN="closed"/>
</stylenode>
<stylenode TEXT="hasGroovyNode" ID="ID_1953477794">
<icon BUILTIN="emoji-1F951"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.topic" ID="ID_1291471483" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" ID="ID_142991270" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" ID="ID_503397907" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="Siguiente tarea" ID="ID_1971016481" BACKGROUND_COLOR="#ffff33">
<icon BUILTIN="yes"/>
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="Tarea pendiente" ID="ID_934286339" BACKGROUND_COLOR="#99ffff">
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="Tarea finalizada" ID="ID_1659130116" COLOR="#333333" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="checked"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="Tarea Descartada" ID="ID_1007192387" COLOR="#666666" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="Descartado"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="contieneSigTareas" ID="ID_15912876" BACKGROUND_COLOR="#eaea86">
<icon BUILTIN="emoji-1F7E5"/>
</stylenode>
<stylenode TEXT="contieneTareaPend" ID="ID_38325886" BACKGROUND_COLOR="#b5d7d7">
<icon BUILTIN="emoji-23F9"/>
</stylenode>
<stylenode TEXT="Proyecto" ID="ID_1217176525" COLOR="#003399">
<font NAME="SansSerif" SIZE="12" BOLD="true" ITALIC="false"/>
<edge COLOR="#003399" WIDTH="6"/>
</stylenode>
<stylenode TEXT="Grupito" ID="ID_1483308677">
<cloud COLOR="#e4e6ff" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Iniciativa" ID="ID_781458526">
<icon BUILTIN="attach"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Organizador" ID="ID_937280714">
<icon BUILTIN="folder"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Minuta" ID="ID_889514177">
<icon BUILTIN="list"/>
<cloud COLOR="#69a1f8" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Acuerdo" ID="ID_38422470" BACKGROUND_COLOR="#66ff33">
<icon BUILTIN="flag-black"/>
</stylenode>
<stylenode TEXT="numerado" ID="ID_406473648" BACKGROUND_COLOR="#add1ea" STYLE="bubble" NUMBERED="true" MAX_WIDTH="200 px" MIN_WIDTH="200 px"/>
<stylenode TEXT="con duda" ID="ID_193534619" BACKGROUND_COLOR="#ffff66">
<icon BUILTIN="help"/>
<font BOLD="false" ITALIC="true"/>
</stylenode>
<stylenode TEXT="BotonMenu" ID="ID_1993679992" ICON_SIZE="16 pt" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"/>
<stylenode TEXT="MarkdownHelperLink" ID="ID_599719309" COLOR="#dbffdb" BACKGROUND_COLOR="#4c4c7f" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F517"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" ID="ID_1063699288" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt" UNIFORM_SHAPE="true" TEXT_ALIGN="CENTER">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ID="ID_144205114" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" ID="ID_159773648" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" ID="ID_1903157796" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" ID="ID_476801567" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" ID="ID_1249279160" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" ID="ID_1532571323" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" ID="ID_985342440" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" ID="ID_1480233819" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" ID="ID_11800615" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" ID="ID_492389581" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Freeplane_MarkdownHelper.wiki" STYLE_REF="baseFolder" POSITION="right" ID="ID_391523987" CREATED="1616675039107" MODIFIED="1617660639513" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/">
<attribute_layout NAME_WIDTH="104.25 pt" VALUE_WIDTH="306.74999 pt"/>
<attribute NAME="nameFilter" VALUE=""/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="MarkdownRootFolder" VALUE="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/"/>
<attribute NAME="MDHGithubBranch" VALUE="v0.1.0"/>
<attribute NAME="MDHTargetRootPath" VALUE="../raw/"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
    <p>
      
    </p>
    <p>
      ================ MDI =====================
    </p>
    <p>
      
    </p>
    <p>
      The import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node:
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;-- nameFilter:
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A filter to perform on the name of traversed files. If set, only files which match are brought.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This option allowes four types of inputs:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. nothing (empty) means no filtering (default)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/.*\.mp3/
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 'simplified' regex&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~.*\.mp3
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. string with *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*.mp3&nbsp;&nbsp;&nbsp;&nbsp;(equivalent to regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/(?i).*\.mp3/&nbsp;&nbsp;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. list of strings with * and ;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*.mp3;*.png&nbsp;&nbsp;&nbsp;(equivalent to regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/(?i)(.*\.mp3|.*\.png)/&nbsp;&nbsp;)
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;-- maxDepth:
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The maximum number of directory levels when recursing
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(default is -1 which means no limit, set to 0 for no recursion)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;-- markWhenMoved:
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;change styles to moved/renamed file Nodes
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;set to:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;0 : to change style only if node hasn't a previous one (default),
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;1 : to allways change the style,
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;-1 : to never change the style
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;-- checkIfReallyBroken:
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Check if existing nodes pointing to filtered files still exist.&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This option is only useful if you defined a nameFilter before&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;but in the map there are also some files that doesn't match&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this filter definition&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(for example if you brought them manually or import them&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;before the actual namefilter setting)&nbsp;&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;- default is 0 which means don't check --&gt; Mark node as missing also if it doesn't match the current filter,
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;- set to 1 to extra check if a not matching file still exists in drive&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ==========================================
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;
    </p>
  </body>
</html>
</richcontent>
<node TEXT="_Sidebar.md" STYLE_REF="MarkdownHelperNode" ID="ID_1787661554" CREATED="1616677057080" MODIFIED="1617660044674" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/_Sidebar.md" VGAP_QUANTITY="2 px">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="45 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  </text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_713676921" CREATED="1617206866239" MODIFIED="1617206884202">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="### Pages in this wiki" ID="ID_584228544" CREATED="1616626314386" MODIFIED="1617111499855"/>
<node TEXT="structuredDocsList" ID="ID_255515949" CREATED="1616873748042" MODIFIED="1617664263158" BACKGROUND_COLOR="#ffcc99"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.structuredDocsList(node)
//prueba
// 02

</text>
</richcontent>
</node>
<node TEXT="### Other useful links" ID="ID_1687962102" CREATED="1616626314386" MODIFIED="1617111504032"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_558899461" CREATED="1617053152233" MODIFIED="1617290965799"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.list(node)
//gfz
</text>
</richcontent>
<node TEXT="Freeplane" ID="ID_130481720" CREATED="1617053184287" MODIFIED="1617291201660" VGAP_QUANTITY="2 px">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1665147980" CREATED="1617052546672" MODIFIED="1617291201652" HGAP_QUANTITY="17.75 pt" VSHIFT_QUANTITY="-7.5 pt"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Freeplane&apos;s homepage" ID="ID_563687723" CREATED="1617052451305" MODIFIED="1617053326822" LINK="https://www.freeplane.org/wiki/index.php/Home"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1870228058" CREATED="1617052546672" MODIFIED="1617290966780"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Download version 1.9.0" ID="ID_1318035139" CREATED="1617053199869" MODIFIED="1617054592712" LINK="https://sourceforge.net/projects/freeplane/files/freeplane%20preview/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_744784022" CREATED="1617052546672" MODIFIED="1617290966997"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Installing an AddOn in Freeplane" ID="ID_24965837" CREATED="1617053205414" MODIFIED="1617054686919" LINK="https://www.freeplane.org/wiki/index.php/Add-ons_(install)"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1461616022" CREATED="1617052546672" MODIFIED="1617290967225"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Open Discussion Forum" ID="ID_181875134" CREATED="1617053293187" MODIFIED="1617054723951" LINK="https://sourceforge.net/p/freeplane/discussion/758437/"/>
</node>
</node>
<node TEXT="Markdown" ID="ID_303546968" CREATED="1617053218294" MODIFIED="1617053227811">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1433795100" CREATED="1617052546672" MODIFIED="1617290968181"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="in Wikipedia" ID="ID_213820103" CREATED="1617053229931" MODIFIED="1617054892626" LINK="https://en.wikipedia.org/wiki/Markdown"/>
</node>
<node TEXT="Markdown in Github" ID="ID_1454918326" CREATED="1617053218294" MODIFIED="1617054949795">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1770055187" CREATED="1617052546672" MODIFIED="1617290968394"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Mastering Markdown" ID="ID_423112989" CREATED="1617053241940" MODIFIED="1617054984359" LINK="https://guides.github.com/features/mastering-markdown/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_196970251" CREATED="1617052546672" MODIFIED="1617290968617"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Basic writing and formatting syntax" ID="ID_907185665" CREATED="1617053241940" MODIFIED="1617055051425" LINK="https://docs.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1407191594" CREATED="1617052546672" MODIFIED="1617290969435"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="markdown-cheatsheet-online (pdf)" ID="ID_798460855" CREATED="1617055149943" MODIFIED="1617055193738" LINK="https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf"/>
</node>
</node>
<node TEXT="other Markdown cheat sheets in the web" ID="ID_252329010" CREATED="1617055447699" MODIFIED="1617055533870">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1806082052" CREATED="1617052546672" MODIFIED="1617290969648"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="adam-p/markdown-here Markdown Cheatsheet" ID="ID_1644216827" CREATED="1617053250530" MODIFIED="1617055655721" LINK="https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_830813872" CREATED="1617052546672" MODIFIED="1617290969861"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="markdownguide.org Markdown Cheat Sheet" ID="ID_4856985" CREATED="1617053250530" MODIFIED="1617055608837" LINK="https://www.markdownguide.org/cheat-sheet/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_711764091" CREATED="1617052546672" MODIFIED="1617290970078"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="markdownguide.org Basic Syntax" ID="ID_350077318" CREATED="1617055682415" MODIFIED="1617055728770" LINK="https://www.markdownguide.org/basic-syntax/"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="_Footer.md" STYLE_REF="MarkdownHelperNode" ID="ID_1049274304" CREATED="1616677057080" MODIFIED="1617660045283" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/_Footer.md">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="50.25 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node) 
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_231250936" CREATED="1617206889257" MODIFIED="1617660058663" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1170172966" CREATED="1617051591382" MODIFIED="1617291155107"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.textBlock(node)  </text>
</richcontent>
<node TEXT="footer" ID="ID_775159434" CREATED="1617051599594" MODIFIED="1617051663869"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      |$1|$2|
    </p>
    <p>
      |-----|-----|
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1547755323" CREATED="1616628376338" MODIFIED="1617051881703" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
// eeffe</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_751299620" CREATED="1616873748042" MODIFIED="1617635163640" LINK="#ID_1354023376"/>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1872222017" CREATED="1617051591382" MODIFIED="1617052528446"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.textBlock(node)  </text>
</richcontent>
<node TEXT="p" ID="ID_1904996976" CREATED="1617051661888" MODIFIED="1617659550085"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      This whole wiki was created using $1, the $2 , $3, $5 and $4.
    </p>
    <p>
      
    </p>
    <p>
      (C) edofro 2021
    </p>
  </body>
</html>
</richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_123751221" CREATED="1617052546672" MODIFIED="1617290971071"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Freeplane" ID="ID_1100912299" CREATED="1617052451305" MODIFIED="1617052513439" LINK="https://www.freeplane.org/wiki/index.php/Home"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1359724600" CREATED="1617052546672" MODIFIED="1617290971276"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Markdown Helper AddOn" ID="ID_1312325070" CREATED="1617052456656" MODIFIED="1617052591743" LINK="https://github.com/EdoFro/Freeplane_MarkdownHelper"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_213933762" CREATED="1617052546672" MODIFIED="1617290971071"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="ScreenToGif" ID="ID_729597614" CREATED="1617311934182" MODIFIED="1617311959675" LINK="https://www.screentogif.com/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1379896452" CREATED="1617052546672" MODIFIED="1617290971071"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="PicPick" ID="ID_1692888215" CREATED="1617312044061" MODIFIED="1617312073314" LINK="https://picpick.app/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_272065202" CREATED="1617052546672" MODIFIED="1617290971071"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Krita" ID="ID_393265298" CREATED="1617659590136" MODIFIED="1617659610635" LINK="https://krita.org"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Home.md" STYLE_REF="MarkdownHelperNode" ID="ID_206044241" CREATED="1616677057080" MODIFIED="1617660045872" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Home.md">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  </text>
</richcontent>
<node TEXT="content" STYLE_REF="Siguiente tarea" ID="ID_1746332684" CREATED="1617206909188" MODIFIED="1617660554937">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1703917514" CREATED="1616620756952" MODIFIED="1617549761984" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_280764281" CREATED="1617049302773" MODIFIED="1617550285629" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_630613530" CREATED="1617630996466" MODIFIED="1617630996747"/>
</node>
<node TEXT="idea general" ID="ID_1726739045" CREATED="1616676720855" MODIFIED="1616676726974">
<node TEXT="objetivo" ID="ID_502625365" CREATED="1616676726985" MODIFIED="1616676735156">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_1579161034" CREATED="1617158011653" MODIFIED="1617207503536"/>
</node>
<node TEXT="cuando usarlo" ID="ID_316680597" CREATED="1616676735578" MODIFIED="1616676740263">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_499811841" CREATED="1617158011653" MODIFIED="1617207503536"/>
</node>
</node>
<node TEXT="screenshots" ID="ID_1045833977" CREATED="1616881758560" MODIFIED="1616881763412">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_1233647208" CREATED="1617158011653" MODIFIED="1617207503536"/>
</node>
<node TEXT="Examples" STYLE_REF="Tarea pendiente" ID="ID_1669747867" CREATED="1617664701106" MODIFIED="1617664708865"/>
<node TEXT="Introducción" ID="ID_902663152" CREATED="1616676678033" MODIFIED="1616676687953">
<node TEXT="freeplane" ID="ID_853540928" CREATED="1616676689447" MODIFIED="1616676693386">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_164771012" CREATED="1617158011653" MODIFIED="1617207503536"/>
</node>
<node TEXT="addOns" ID="ID_716905562" CREATED="1616676694093" MODIFIED="1616676696930">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_1444924499" CREATED="1617158011653" MODIFIED="1617207503536"/>
</node>
<node TEXT="Markdown" ID="ID_1796521545" CREATED="1616676698564" MODIFIED="1616676702169">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_1160501759" CREATED="1617158011653" MODIFIED="1617207503536"/>
</node>
</node>
<node TEXT="Markdown document.md" STYLE_REF="Tarea pendiente" ID="ID_1769986573" CREATED="1616676912417" MODIFIED="1616881982044">
<node TEXT="clon de párrafo introductorio" STYLE_REF="Tarea pendiente" ID="ID_1246297892" CREATED="1617207612602" MODIFIED="1617207657889"/>
<node TEXT="link a página" STYLE_REF="Tarea pendiente" ID="ID_672711070" CREATED="1617207600680" MODIFIED="1617207660464"/>
</node>
<node TEXT="docsInside" ID="ID_374069221" CREATED="1616620756952" MODIFIED="1617664383935" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.docsInside(node)

//cambio masivo docsInside
//prueba 02
</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_979642529" CREATED="1617049302773" MODIFIED="1617550286367" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_466943714" CREATED="1617630996755" MODIFIED="1617630997458"/>
</node>
</node>
<node TEXT="Markdown-in-Freeplane.md" STYLE_REF="MarkdownHelperNode" ID="ID_619341818" CREATED="1617110919767" MODIFIED="1617483587280" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-in-Freeplane.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea Descartada" FOLDED="true" ID="ID_1749183462" CREATED="1617069044376" MODIFIED="1617659452273" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_55891498" CREATED="1616620756952" MODIFIED="1617549848819" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_438167552" CREATED="1617049302773" MODIFIED="1617550322629" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1126128593" CREATED="1617630934246" MODIFIED="1617630935024"/>
</node>
<node TEXT="docsInside" ID="ID_987827803" CREATED="1616620756952" MODIFIED="1617550098287" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="What is Markdown?" STYLE_REF="Tarea pendiente" ID="ID_1658738098" CREATED="1617113333441" MODIFIED="1617659452269">
<node TEXT="here comes an explanation about markdown" ID="ID_1586576889" CREATED="1617157775981" MODIFIED="1617157801069"/>
<node TEXT="Work in progress ...." ID="ID_84386400" CREATED="1617157841101" MODIFIED="1617157868822"/>
</node>
<node TEXT="Where can it be used in Freeplane?" ID="ID_1979536871" CREATED="1617115480348" MODIFIED="1617115498849">
<node TEXT="Work in progress ...." ID="ID_138875141" CREATED="1617157841101" MODIFIED="1617157868822"/>
</node>
<node TEXT="Some examples" ID="ID_541634829" CREATED="1617115511485" MODIFIED="1617115515824">
<node TEXT="Work in progress ...." ID="ID_1188871731" CREATED="1617157841101" MODIFIED="1617157868822"/>
</node>
<node TEXT="previousAndNext" ID="ID_1864476700" CREATED="1617049302773" MODIFIED="1617550323596" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1606126257" CREATED="1617630935032" MODIFIED="1617630935797"/>
</node>
</node>
</node>
<node TEXT="about-Freeplane-formulas.md" STYLE_REF="MarkdownHelperNode" ID="ID_1013483585" CREATED="1617118051227" MODIFIED="1617483588738" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/about-Freeplane-formulas.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea Descartada" FOLDED="true" ID="ID_1595823225" CREATED="1617069044376" MODIFIED="1617226133091">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1215355287" CREATED="1616620756952" MODIFIED="1617549849888" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_189573776" CREATED="1617049302773" MODIFIED="1617550324438" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_996108677" CREATED="1617630935804" MODIFIED="1617630936575"/>
</node>
<node TEXT="docsInside" ID="ID_493747795" CREATED="1616620756952" MODIFIED="1617550099291" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_217539551" CREATED="1617158011653" MODIFIED="1617207503536"/>
<node TEXT="content" FOLDED="true" ID="ID_594196428" CREATED="1617113333441" MODIFIED="1617115690425">
<node TEXT="explicación de que son las fórmulas" ID="ID_237393629" CREATED="1617115708559" MODIFIED="1617116939599"/>
<node TEXT="explicar sus características" ID="ID_63834615" CREATED="1617115727213" MODIFIED="1617116808879"/>
<node TEXT="necesita que se salga y vuelva a nodo para que se recalcule" ID="ID_734771434" CREATED="1617115739522" MODIFIED="1617115766291"/>
</node>
<node TEXT="some examples" FOLDED="true" ID="ID_118124717" CREATED="1617157940668" MODIFIED="1617157965189">
<icon BUILTIN="emoji-1F343"/>
<node TEXT="=15*3 +12" ID="ID_965358613" CREATED="1617117278260" MODIFIED="1617117315103"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =node.text
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="= Math.cos(Math.PI/3)" ID="ID_92255049" CREATED="1617115901397" MODIFIED="1617117323825"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =node.text
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="= node.children.sum{it.value.to.num0}" ID="ID_958217358" CREATED="1617117397303" MODIFIED="1617117455552">
<node TEXT="45" OBJECT="java.lang.Long|45" ID="ID_1241520859" CREATED="1617117462591" MODIFIED="1617117466315"/>
<node TEXT="12" OBJECT="java.lang.Long|12" ID="ID_1988010007" CREATED="1617117468004" MODIFIED="1617117468744"/>
<node TEXT="hello world" ID="ID_410254321" CREATED="1617117473244" MODIFIED="1617117480536"/>
<node TEXT="15" OBJECT="java.lang.Long|15" ID="ID_877541763" CREATED="1617117642352" MODIFIED="1617117645638"/>
<node TEXT="27" OBJECT="java.lang.Long|27" ID="ID_814827773" CREATED="1617117469840" MODIFIED="1617117470537"/>
<node TEXT="56" OBJECT="java.lang.Long|56" ID="ID_1866815356" CREATED="1617117471487" MODIFIED="1617117472469"/>
</node>
<node TEXT="= node.children?node.children.sum{it.value.to.num0}:&apos;no children nodes&apos;" ID="ID_1259495119" CREATED="1617117397303" MODIFIED="1617117584233">
<node TEXT="45" OBJECT="java.lang.Long|45" ID="ID_1644689937" CREATED="1617117462591" MODIFIED="1617117466315"/>
<node TEXT="12" OBJECT="java.lang.Long|12" ID="ID_988061342" CREATED="1617117468004" MODIFIED="1617117468744"/>
<node TEXT="hello world" ID="ID_1305955536" CREATED="1617117473244" MODIFIED="1617117480536"/>
<node TEXT="27" OBJECT="java.lang.Long|27" ID="ID_1349242405" CREATED="1617117469840" MODIFIED="1617117470537"/>
<node TEXT="56" OBJECT="java.lang.Long|56" ID="ID_1510947058" CREATED="1617117471487" MODIFIED="1617117472469"/>
</node>
<node TEXT="= node.connectorsOut?node.connectorsOut.getAt(0).target.text:&apos;no connectorOut&apos;" ID="ID_758038776" CREATED="1617117015872" MODIFIED="1617118112215">
<arrowlink DESTINATION="ID_63834615"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =node.text
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="= c.selected==node?&apos;this very node&apos;:c.selected.value" ID="ID_80622038" CREATED="1617116253736" MODIFIED="1617117627628"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =node.text
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      selected node's text at the last map modification
    </p>
    <p>
      
    </p>
    <p>
      modification?
    </p>
    <p>
      &nbsp;- any editing at a node's text, details or note
    </p>
    <p>
      &nbsp;- adding/removing icons
    </p>
    <p>
      &nbsp;- adding connectors
    </p>
    <p>
      &nbsp;- folding/unfolding a branch
    </p>
    <p>
      &nbsp;- ...
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_559835038" CREATED="1617049302773" MODIFIED="1617550325203" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1472460263" CREATED="1617630936582" MODIFIED="1617630937354"/>
</node>
</node>
</node>
</node>
<node TEXT="About.md" STYLE_REF="MarkdownHelperNode" ID="ID_468621347" CREATED="1617207020720" MODIFIED="1617660039666" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/About.md">
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)</text>
</richcontent>
<node TEXT="content" FOLDED="true" ID="ID_264860380" CREATED="1617207010534" MODIFIED="1617207015745">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="donación.md" STYLE_REF="Tarea pendiente" ID="ID_849014079" CREATED="1616676661555" MODIFIED="1616881843759"/>
<node TEXT="agradecimientos" ID="ID_1046825975" CREATED="1617312148040" MODIFIED="1617312156246">
<node TEXT="Dimitry" ID="ID_1837620210" CREATED="1617312157429" MODIFIED="1617312160394"/>
<node TEXT="lilive" ID="ID_46691070" CREATED="1617312161088" MODIFIED="1617312163427"/>
<node TEXT="otros" ID="ID_210963894" CREATED="1617312167541" MODIFIED="1617312173480"/>
</node>
<node TEXT="x" ID="ID_60272875" CREATED="1617463215778" MODIFIED="1617463231869"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = nnmms.jj()
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="x" ID="ID_804325431" CREATED="1617463215778" MODIFIED="1617463309244"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= &quot;2 +2 = &quot; + (2+2)</text>
</richcontent>
</node>
</node>
</node>
<node TEXT="Guide.md" STYLE_REF="MarkdownHelperNode" ID="ID_607240369" CREATED="1616677057080" MODIFIED="1617631061729" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Guide.md">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="46.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Siguiente tarea" FOLDED="true" ID="ID_1946417255" CREATED="1617108551933" MODIFIED="1617660552013">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1851158014" CREATED="1616620756952" MODIFIED="1617549793930" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1322880842" CREATED="1617049302773" MODIFIED="1617550303555" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1128573075" CREATED="1617630981420" MODIFIED="1617630981740"/>
</node>
<node TEXT="horizontal line" STYLE_REF="MarkdownHelperNode" ID="ID_1281429669" CREATED="1617107786801" MODIFIED="1617290971515"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      -----
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="parrafo con info" STYLE_REF="Tarea pendiente" ID="ID_1261445403" CREATED="1616698515067" MODIFIED="1617108632254"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Bla blablabla blabla bla bla bla blabla bla bla blablabla blabla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Bla blabla blabla blablabla blabla. Blabla blablabla bla. Bla blablabla bla. Blablabla blablabla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Bla blabla blablabla. Bla blabla blablablabla blablablabla bla blabla blablabla. Bla blabla blablabla blabla bla blablabla blablablabla. Blabla blabla blabla bla blablabla blabla. Blabla blabla blablabla blabla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Blabla blablabla. Blablabla bla bla blabla blablablabla. Blablabla blabla blablabla blabla blabla blabla. Blablablabla bla blablabla blabla blabla blablabla.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="horizontal line" STYLE_REF="MarkdownHelperNode" ID="ID_288990799" CREATED="1617107786801" MODIFIED="1617290972294"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      -----
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="docsInside" ID="ID_272433030" CREATED="1616620756952" MODIFIED="1617550064149" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.docsInside(node)

//cambio masivo docsInside</text>
</richcontent>
</node>
<node TEXT="parrafo con info" STYLE_REF="Tarea pendiente" ID="ID_1365145687" CREATED="1616698515067" MODIFIED="1617109404777"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Bla blablabla blabla bla bla bla blabla bla bla blablabla blabla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Bla blabla blabla blablabla blabla. Blabla blablabla bla. Bla blablabla bla. Blablabla blablabla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Bla blabla blablabla. Bla blabla blablablabla blablablabla bla blabla blablabla. Bla blabla blablabla blabla bla blablabla blablablabla. Blabla blabla blabla bla blablabla blabla. Blabla blabla blablabla blabla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Blabla blablabla. Blablabla bla bla blabla blablablabla. Blablabla blabla blablabla blabla blabla blabla. Blablablabla bla blablabla blabla blabla blablabla.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_192277716" CREATED="1617049302773" MODIFIED="1617550304314" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_199257388" CREATED="1617630981748" MODIFIED="1617630982565"/>
</node>
</node>
<node TEXT="Markdown-Helper-Menu.md" STYLE_REF="MarkdownHelperNode" ID="ID_1118785541" CREATED="1616677057080" MODIFIED="1617483578601" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-Helper-Menu.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1576015938" CREATED="1617108777150" MODIFIED="1617662812611">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_5419379" CREATED="1616620756952" MODIFIED="1617549799431" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1579003798" CREATED="1617049302773" MODIFIED="1617550305052" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1877137470" CREATED="1617630982573" MODIFIED="1617630983244"/>
</node>
<node TEXT="docsInside" ID="ID_1770099086" CREATED="1616620756952" MODIFIED="1617550073140" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="The menu" ID="ID_873239008" CREATED="1617662791425" MODIFIED="1617662794575">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1814080628" CREATED="1617660851179" MODIFIED="1617660851384"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1725477218" CREATED="1617662287968" MODIFIED="1617662300226" LINK="#ID_1132953885"/>
</node>
</node>
<node TEXT="Menu commands" ID="ID_732302606" CREATED="1617662696542" MODIFIED="1617662701816">
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_260035170" CREATED="1617660868604" MODIFIED="1617660868785"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="r" ID="ID_1847966265" CREATED="1617660872446" MODIFIED="1617660875088">
<node TEXT="command" ID="ID_22785699" CREATED="1617660875172" MODIFIED="1617660880826"/>
<node TEXT="explanation" ID="ID_1974749246" CREATED="1617660881885" MODIFIED="1617660886149"/>
</node>
<node TEXT="r" ID="ID_669600216" CREATED="1617660889349" MODIFIED="1617660891680">
<node TEXT="linked image as Markdown details" ID="ID_1193335139" CREATED="1617660893405" MODIFIED="1617660915758"/>
<node TEXT="If the selected node has a link to an Image, It adds a formula in the **details** to show the image as markdown content type" ID="ID_1293096129" CREATED="1617661175422" MODIFIED="1617661288308"/>
</node>
<node TEXT="r" ID="ID_1624502" CREATED="1617660940533" MODIFIED="1617660941995">
<node TEXT="linked image as Markdown note" ID="ID_1601823928" CREATED="1617660920223" MODIFIED="1617660932614"/>
<node TEXT="If the selected node has a link to an Image, It adds a formula in the **note** to show the image as markdown content type" ID="ID_1459811231" CREATED="1617661175422" MODIFIED="1617661304246"/>
</node>
<node TEXT="r" ID="ID_505873838" CREATED="1617660943018" MODIFIED="1617660944059">
<node TEXT="show Markdown Helper Dialog" ID="ID_281021310" CREATED="1617660948308" MODIFIED="1617660959891"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_540043626" CREATED="1617662471727" MODIFIED="1617662471914"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="it shows the Markdown ..." ID="ID_1354366276" CREATED="1617662383859" MODIFIED="1617662569889"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      It shows the $1.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="linkToWikipage" ID="ID_1776053790" CREATED="1616873748042" MODIFIED="1617546284571" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1484437908" CREATED="1617662502819" MODIFIED="1617662508496" LINK="#ID_1361749976"/>
</node>
</node>
</node>
</node>
<node TEXT="r" ID="ID_1915335164" CREATED="1617660962087" MODIFIED="1617660963554">
<node TEXT="rebuild Dialog" ID="ID_560601890" CREATED="1617660965780" MODIFIED="1617660973617"/>
<node TEXT="It&apos;s the same as the previous one, but rebuilds the buttons and actions of the Dialog.&#xa;I use it to update the dialog every time I make a change in the scripts." ID="ID_1964315313" CREATED="1617660974638" MODIFIED="1617661147969"/>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_1487060859" CREATED="1617662338187" MODIFIED="1617662343088">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_496247563" CREATED="1617662329110" MODIFIED="1617662329306"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_945837252" CREATED="1617662291080" MODIFIED="1617662295994" LINK="#ID_763334886"/>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_384811746" CREATED="1617049302773" MODIFIED="1617550305733" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_667319513" CREATED="1617630983251" MODIFIED="1617630983928"/>
</node>
</node>
</node>
<node TEXT="Markdown-Helper-Dialog.md" STYLE_REF="MarkdownHelperNode" ID="ID_1361749976" CREATED="1616677057080" MODIFIED="1617483580078" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-Helper-Dialog.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="false"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_45770369" CREATED="1617108777150" MODIFIED="1617203754536">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1500072034" CREATED="1616620756952" MODIFIED="1617549811207" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1216282910" CREATED="1617049302773" MODIFIED="1617550306429" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1260303909" CREATED="1617630983936" MODIFIED="1617630984627"/>
</node>
<node TEXT="docsInside" ID="ID_625211500" CREATED="1616620756952" MODIFIED="1617550081529" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="## The Markdown Helper dialog" ID="ID_1851550358" CREATED="1616875323713" MODIFIED="1616875368489"/>
<node TEXT="intro" ID="ID_936151994" CREATED="1616875369265" MODIFIED="1617108777502"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The dialog is the central part of this Add On. It has most of the features that can help you crate a map that dinamically creates and updates a markdown document.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="The dialog is composed by three different parts, each one has it special function." ID="ID_1815071739" CREATED="1616876443529" MODIFIED="1616876584348"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1063078082" CREATED="1616628376338" MODIFIED="1616881362204" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 

//
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_454366263" CREATED="1616873748042" MODIFIED="1617635201004" LINK="#ID_1930852978"/>
</node>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_636205443" CREATED="1616713010957" MODIFIED="1617290972510"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_274322150" CREATED="1616720236907" MODIFIED="1616720238691">
<node TEXT="Dialog part" ID="ID_446454825" CREATED="1616720240361" MODIFIED="1616720327087"/>
<node TEXT="Explanation" ID="ID_770134557" CREATED="1616720242823" MODIFIED="1616720307953"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_317918920" CREATED="1616713016872" MODIFIED="1617112143554">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_281775736" CREATED="1616628376338" MODIFIED="1616872362906" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 001.png" ID="ID_1305975695" CREATED="1616698136725" MODIFIED="1617112177607" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20001.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1848046915" CREATED="1616714936210" MODIFIED="1617290972728"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 1" ID="ID_1040296506" CREATED="1616714905387" MODIFIED="1617663100812"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The upmost part of the dialog contains the icons that you can apply to the nodes that modifies how the Markdown Helper &quot;reads&quot; that node and includes it in the final document.
    </p>
    <p>
      More information about each icon in page $1.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="linkToWikipage" ID="ID_1879169968" CREATED="1616873748042" MODIFIED="1617546349075" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1651095985" CREATED="1616873748042" MODIFIED="1617635202060" LINK="#ID_1067554703"/>
</node>
</node>
</node>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_723512072" CREATED="1616713016872" MODIFIED="1617663032705">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_701192874" CREATED="1616628376338" MODIFIED="1616872362906" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 002.png" ID="ID_1004620486" CREATED="1616698136732" MODIFIED="1617112177626" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20002.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_847197" CREATED="1616874373352" MODIFIED="1617290972931"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 2" ID="ID_486435346" CREATED="1616714905387" MODIFIED="1617460356934"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The central part of the dialog contains buttons that inserts special nodes to the map that help to transform a mindmap into a Markdown document.
    </p>
    <p>
      
    </p>
    <p>
      The most important is the &quot;Markdown document.md&quot; button and it helps to understand how it works before using the other ones.
    </p>
    <p>
      
    </p>
    <p>
      More information about each button in page $1.
    </p>
  </body>
</html></richcontent>
<node TEXT="link to wikipage" ID="ID_1784156102" CREATED="1616719774829" MODIFIED="1616873737746" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def nodo = node
def n = nodo.children.find{it.link &amp;&amp; it.link.uri.scheme==&apos;file&apos;}?:           // primer hijo &quot;nodo con link a file&quot;
        nodo.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo
        nodo.children.connectorsOut.target.flatten().find{it.link.file}?:     // primer &quot;nodo con link a file&quot; conectado desde nodo hijo
        nodo.children.find{it.link.node}?.link?.node?:                        // &quot;nodo con link a file&quot; linkeado desde primer hijo con link
        nodo.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo
        
if(n){
    def texto =n.text.takeBefore(&apos;.md&apos;)
    def uri = n.link.uri.toString().takeAfter(&apos;.wiki/&apos;).takeBefore(&apos;.md&apos;)
    
    if(texto &amp;&amp; texto == uri){
        return &quot;[$texto]($uri)&quot;
    } else {
        return edofro.MarkDownHelper.MDH.failMessage(&apos;No wiki page found!!&apos;)
    }
} else {
    return edofro.MarkDownHelper.MDH.failMessage(&apos;No wiki page found!!&apos;)
}
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_525957612" CREATED="1616873748042" MODIFIED="1617635203124" LINK="#ID_1724840148"/>
</node>
</node>
</node>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1554349882" CREATED="1616713016872" MODIFIED="1617112143587">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_848478161" CREATED="1616628376338" MODIFIED="1616872362906" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 003.png" ID="ID_1064538750" CREATED="1616698136739" MODIFIED="1617112177642" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20003.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_465790358" CREATED="1616874380956" MODIFIED="1617290973720"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 3" ID="ID_1007098581" CREATED="1616714905387" MODIFIED="1616875189775"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The downmost part of the dialog contains some extra functions
    </p>
    <p>
      &nbsp;explained in the $1 page.
    </p>
  </body>
</html></richcontent>
<node TEXT="link to wikipage" ID="ID_1680877141" CREATED="1616719774829" MODIFIED="1616873737746" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def nodo = node
def n = nodo.children.find{it.link &amp;&amp; it.link.uri.scheme==&apos;file&apos;}?:           // primer hijo &quot;nodo con link a file&quot;
        nodo.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo
        nodo.children.connectorsOut.target.flatten().find{it.link.file}?:     // primer &quot;nodo con link a file&quot; conectado desde nodo hijo
        nodo.children.find{it.link.node}?.link?.node?:                        // &quot;nodo con link a file&quot; linkeado desde primer hijo con link
        nodo.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo
        
if(n){
    def texto =n.text.takeBefore(&apos;.md&apos;)
    def uri = n.link.uri.toString().takeAfter(&apos;.wiki/&apos;).takeBefore(&apos;.md&apos;)
    
    if(texto &amp;&amp; texto == uri){
        return &quot;[$texto]($uri)&quot;
    } else {
        return edofro.MarkDownHelper.MDH.failMessage(&apos;No wiki page found!!&apos;)
    }
} else {
    return edofro.MarkDownHelper.MDH.failMessage(&apos;No wiki page found!!&apos;)
}
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1722294935" CREATED="1616873748042" MODIFIED="1617635204110" LINK="#ID_462044149"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1538477903" CREATED="1617049302773" MODIFIED="1617550307163" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1368595675" CREATED="1617630984634" MODIFIED="1617630985389"/>
</node>
</node>
<node TEXT="Icons-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_1067554703" CREATED="1616677057080" MODIFIED="1617483581755" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Icons-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_963770516" CREATED="1617225526658" MODIFIED="1617290880304" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_352880054" CREATED="1616620756952" MODIFIED="1617664330858" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation
// prueba 02
</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1781571543" CREATED="1617049302773" MODIFIED="1617664351704" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.previousAndNext(node)

//cambio masivo previousAndNext
//prueba 02
</text>
</richcontent>
<node TEXT="-----" ID="ID_1023951110" CREATED="1617630985397" MODIFIED="1617630986091"/>
</node>
<node TEXT="docsInside" ID="ID_1826746643" CREATED="1616620756952" MODIFIED="1617664367024" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.docsInside(node)

//cambio masivo docsInside
// prueba 02
</text>
</richcontent>
</node>
<node TEXT="explicación panel 1" ID="ID_116506090" CREATED="1616714905387" MODIFIED="1617225526790"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The upmost part of the dialog contains the icons that you can apply to the nodes.<br/><br/>This icons modifies the way how the Markdown Helper &quot;reads&quot; that node and includes it in the final document.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="-----" ID="ID_1210700296" CREATED="1617043685781" MODIFIED="1617290880299"/>
<node TEXT="In this table you can see a list with all the icons and their functions:" ID="ID_379478928" CREATED="1617035701884" MODIFIED="1617046859111"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_157293715" CREATED="1616876840354" MODIFIED="1617290973903"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.table(node) </text>
</richcontent>
<node TEXT="r" STYLE_REF="locked" ID="ID_1379163417" CREATED="1616720236907" MODIFIED="1617111984005">
<node TEXT="Icon" ID="ID_1113482371" CREATED="1616720240361" MODIFIED="1616876874074"/>
<node TEXT="affects" ID="ID_561990910" CREATED="1616876875529" MODIFIED="1617044779853">
<icon BUILTIN="emoji-2194"/>
</node>
<node TEXT="Explanation" ID="ID_510336078" CREATED="1616720242823" MODIFIED="1616720307953"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_763943521" CREATED="1616876908590" MODIFIED="1617111984040">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_564277630" CREATED="1616628376338" MODIFIED="1617290974155" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 001.png" ID="ID_764465307" CREATED="1616687625834" MODIFIED="1617111913664" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20001.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Any node" ID="ID_518435251" CREATED="1616879812999" MODIFIED="1616879824632"/>
<node TEXT="Deletes the first icon in the selected node&#xa;(as usual)" ID="ID_634705398" CREATED="1616879889624" MODIFIED="1617046922895"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_884142952" CREATED="1616876908590" MODIFIED="1617111984063">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1321829539" CREATED="1616628376338" MODIFIED="1617290974343" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 002.png" ID="ID_1055771673" CREATED="1616687625840" MODIFIED="1617111913699" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20002.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Any node" ID="ID_1243232326" CREATED="1616879812999" MODIFIED="1616879824632"/>
<node TEXT="Deletes the last icon in the selected node&#xa;(as usual)" ID="ID_1395965933" CREATED="1616879889624" MODIFIED="1617046930439"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1868359018" CREATED="1616876908590" MODIFIED="1617111984086">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_236407308" CREATED="1616628376338" MODIFIED="1617290975117" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 003.png" ID="ID_1361113556" CREATED="1616687625847" MODIFIED="1617111913734" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20003.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Any node" ID="ID_370111889" CREATED="1616879812999" MODIFIED="1616879824632"/>
<node TEXT="Deletes all icons in the selected node&#xa;(as usual)" ID="ID_19474923" CREATED="1616879889624" MODIFIED="1617046937376"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_69176246" CREATED="1616876908590" MODIFIED="1617111984109">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1719934872" CREATED="1616628376338" MODIFIED="1617290975305" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 004.png" ID="ID_846704092" CREATED="1616687625854" MODIFIED="1617111913768" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20004.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Any node" ID="ID_2875252" CREATED="1616879812999" MODIFIED="1616879824632"/>
<node TEXT="When building the document the node with this icon is treated as a leave node and its children are ignored" ID="ID_329020992" CREATED="1616880231833" MODIFIED="1616880319881"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1438239317" CREATED="1616876908590" MODIFIED="1617111984128">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1808837262" CREATED="1616628376338" MODIFIED="1617290975494" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 005.png" ID="ID_1647115959" CREATED="1616687625862" MODIFIED="1617111913811" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20005.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Any node" ID="ID_630344482" CREATED="1616879812999" MODIFIED="1616879824632"/>
<node TEXT="The nodes with this icon are ignored to build the Markdown document. Its content and its descendant are totally ignored" ID="ID_1071533674" CREATED="1616880343841" MODIFIED="1616880451907"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1384539097" CREATED="1616876908590" MODIFIED="1617111984146">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1510963070" CREATED="1616628376338" MODIFIED="1617290975699" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//

</text>
</richcontent>
<node TEXT="FP Icon 006.png" ID="ID_413807381" CREATED="1616687625867" MODIFIED="1617111913837" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20006.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Any node" ID="ID_1437114759" CREATED="1616879812999" MODIFIED="1616879824632"/>
<node TEXT="Nodes with this icon are ignored, but only their content. Their children are not ignored.&#xa;This nodes are &apos;bypassed&apos;" ID="ID_229195846" CREATED="1616880461359" MODIFIED="1616880574051"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1680902322" CREATED="1616876908590" MODIFIED="1617111984163">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_489557426" CREATED="1616628376338" MODIFIED="1617290976465" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 007.png" ID="ID_1630580039" CREATED="1616687625873" MODIFIED="1617111913863" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20007.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="List nodes" ID="ID_1260735423" CREATED="1616879812999" MODIFIED="1616880018493"/>
<node TEXT="When using the *list* MDH node, nodes which parent has this icon, get numbered.&#xa;It indicates that the children of the nodes are a numbered list." ID="ID_1009433949" CREATED="1616880616429" MODIFIED="1616880741559"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1727864872" CREATED="1616876908590" MODIFIED="1617111984178">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_773989455" CREATED="1616628376338" MODIFIED="1617290976706" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 008.png" ID="ID_23311262" CREATED="1616687625879" MODIFIED="1617111913888" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20008.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="List nodes" ID="ID_1222853683" CREATED="1616879812999" MODIFIED="1616880018493"/>
<node TEXT="When using the *list* MDH node, nodes which parent has this icon, get bulletted.&#xa;It indicates that the children of the nodes are a bullet point list." ID="ID_1133052647" CREATED="1616880616429" MODIFIED="1616880788027"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1327461167" CREATED="1616876908590" MODIFIED="1617111984192">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1824010068" CREATED="1616628376338" MODIFIED="1617290976893" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 009.png" ID="ID_215172306" CREATED="1616687625885" MODIFIED="1617111913911" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20009.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="header row nodes in table" ID="ID_47620099" CREATED="1616880037797" MODIFIED="1616880073753"/>
<node TEXT="When using the *table* MDH node, if you want that a column has a centered alignment you have to add this icon to the node that representes that column&apos;s header." ID="ID_495277331" CREATED="1616880798316" MODIFIED="1616880872579"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1549628890" CREATED="1616876908590" MODIFIED="1617111984205">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_564630518" CREATED="1616628376338" MODIFIED="1617290977085" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 



</text>
</richcontent>
<node TEXT="FP Icon 010.png" ID="ID_920768424" CREATED="1616687625892" MODIFIED="1617111913933" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20010.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="header row nodes in table" ID="ID_1656065015" CREATED="1616880037797" MODIFIED="1616880073753"/>
<node TEXT="When using the *table* MDH node, if you want that a column is aligned to the right, you have to add this icon to the node that representes that column&apos;s header." ID="ID_1119138084" CREATED="1616880798316" MODIFIED="1616880918737"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1242321259" CREATED="1616876908590" MODIFIED="1617111984229">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_233094257" CREATED="1616628376338" MODIFIED="1617290977846" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 011.png" ID="ID_1050715986" CREATED="1616687625897" MODIFIED="1617111913957" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20011.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="link to web page, image or file node" ID="ID_1022103290" CREATED="1616880037797" MODIFIED="1616880129976"/>
<node TEXT="to add an extra newLine after this node.&#xa;(I have doubts that this feature is really needed)" ID="ID_1202671568" CREATED="1616880932978" MODIFIED="1616881023846"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_552945385" CREATED="1616876908590" MODIFIED="1617111984240">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1558283613" CREATED="1616628376338" MODIFIED="1617290978048" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 012.png" ID="ID_1794146171" CREATED="1616687625904" MODIFIED="1617111913981" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20012.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="task" ID="ID_1569342020" CREATED="1616880037797" MODIFIED="1616880153217"/>
<node TEXT="When in *task list* nodes you have to use this icon to define which of the nodes represents tasks. All other nodes are ignored so you can add comments that are not shown in the document." ID="ID_1518294993" CREATED="1616881033276" MODIFIED="1616881167646"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1690364489" CREATED="1616876908590" MODIFIED="1617111984249">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1741147808" CREATED="1616628376338" MODIFIED="1617290978266" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 013.png" ID="ID_1831950189" CREATED="1616687625909" MODIFIED="1617111914001" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20013.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="task" ID="ID_479095662" CREATED="1616880037797" MODIFIED="1616880153217"/>
<node TEXT="Adding this icon to a task indicates it was finished" ID="ID_1401637530" CREATED="1616881033276" MODIFIED="1616881323600"/>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_3335987" CREATED="1617049302773" MODIFIED="1617550308602" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1697708552" CREATED="1617630986099" MODIFIED="1617630986809"/>
</node>
</node>
</node>
<node TEXT="MDH-Nodes-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_1724840148" CREATED="1616677057080" MODIFIED="1617483583191" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/MDH-Nodes-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1179611047" CREATED="1617225561175" MODIFIED="1617639640471">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1513808003" CREATED="1616620756952" MODIFIED="1617549775244" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1305042686" CREATED="1617049302773" MODIFIED="1617550309322" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1571592432" CREATED="1617630986816" MODIFIED="1617630987517"/>
</node>
<node TEXT="docsInside" ID="ID_434854553" CREATED="1616620756952" MODIFIED="1617550084551" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="## MDH special nodes" ID="ID_1593683131" CREATED="1617035655829" MODIFIED="1617035667564"/>
<node TEXT="explicación panel 2" ID="ID_808164187" CREATED="1616714905387" MODIFIED="1617319243808"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The central part of the dialog contains buttons that inserts special nodes to the map that help to transform a mindmap into a Markdown document.
    </p>
    <p>
      
    </p>
    <p>
      The most important is the &quot;Markdown document.md&quot; button and it helps to understand how it works before using the other ones.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="-----" ID="ID_363998184" CREATED="1617043685781" MODIFIED="1617043689124"/>
<node TEXT="In this table you can see the list with all the nodes and their descriptions:" ID="ID_1291659985" CREATED="1617035701884" MODIFIED="1617035743085"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_997874648" CREATED="1617021612432" MODIFIED="1617290978469"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" FOLDED="true" ID="ID_33419335" CREATED="1617021623701" MODIFIED="1617021626716">
<node TEXT="Button" ID="ID_363351604" CREATED="1617021626732" MODIFIED="1617111749643"/>
<node TEXT="Description" ID="ID_1159043817" CREATED="1617021921058" MODIFIED="1617111753645"/>
<node TEXT="Modifiers" ID="ID_1378144628" CREATED="1617021857405" MODIFIED="1617111757902">
<icon BUILTIN="emoji-2194"/>
</node>
<node TEXT="Example" ID="ID_382580454" CREATED="1617021901778" MODIFIED="1617111768091"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1063094109" CREATED="1617021647710" MODIFIED="1617021649897">
<node TEXT="Markdown document.md" ID="ID_759266907" CREATED="1617021652816" MODIFIED="1617319663595" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="This node collects the information in its descendant to build a markdown type note and a possible document file.&#xa;This is the most important MDH node type. All other MDH nodes are helpers to this one." ID="ID_1325423218" CREATED="1617035481053" MODIFIED="1617035936351"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_442236860" CREATED="1617022064874" MODIFIED="1617290979242"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.textBlock(node)
//xxx</text>
</richcontent>
<node TEXT="icons" ID="ID_1174081430" CREATED="1617022071518" MODIFIED="1617037204637"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2 $3
    </p>
    <p>
      $4
    </p>
    <p>
      $5
    </p>
    <p>
      $6
    </p>
    <p>
      $7
    </p>
    <p>
      $8
    </p>
    <p>
      $9
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_797993408" CREATED="1616628376338" MODIFIED="1617290979477" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_295410066" CREATED="1616873748042" MODIFIED="1617635205131" LINK="#ID_846704092"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_697679148" CREATED="1616628376338" MODIFIED="1617290979676" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_135900191" CREATED="1616873748042" MODIFIED="1617635206128" LINK="#ID_1647115959"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1528529582" CREATED="1616628376338" MODIFIED="1617290979868" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_967973918" CREATED="1616873748042" MODIFIED="1617635207126" LINK="#ID_413807381"/>
</node>
<node TEXT="headersToUnderline" ID="ID_1833430869" CREATED="1617037013305" MODIFIED="1617037144969"/>
<node TEXT="hideFolded" ID="ID_296884270" CREATED="1617037013305" MODIFIED="1617037150836"/>
<node TEXT="headerNumbering" ID="ID_234589768" CREATED="1617037013321" MODIFIED="1617037156527"/>
<node TEXT="topHeadersNumbered" ID="ID_619708588" CREATED="1617037013321" MODIFIED="1617037161448"/>
<node TEXT="topHeaderStartingNumber" ID="ID_507005086" CREATED="1617037013321" MODIFIED="1617037166013"/>
<node TEXT="fileLinksRelative" ID="ID_1738920683" CREATED="1617037013336" MODIFIED="1617037178921"/>
</node>
</node>
<node TEXT="linkToWikipage" ID="ID_408476465" CREATED="1616873748042" MODIFIED="1617546284571" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_791011516" CREATED="1617639021330" MODIFIED="1617639054940" LINK="#ID_1723936029"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1764132217" CREATED="1617021667785" MODIFIED="1617021669613">
<node TEXT="ToC" ID="ID_1556356543" CREATED="1617021669628" MODIFIED="1617319663531" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Creates an automatic Table of Contents of the document" ID="ID_205398220" CREATED="1617036228210" MODIFIED="1617036255209"/>
<node TEXT="TOCLevels&#xa;TOCindent" ID="ID_1187684070" CREATED="1617022869452" MODIFIED="1617225449419"/>
<node TEXT="linkToWikipage" ID="ID_1324117855" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1837356910" CREATED="1617639021330" MODIFIED="1617639412022" LINK="#ID_1232286520"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1349141901" CREATED="1617021676052" MODIFIED="1617021678086">
<node TEXT="web link" ID="ID_1974617312" CREATED="1617021678101" MODIFIED="1617319663471" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates the web link from its child node into the markdown document" ID="ID_1791474806" CREATED="1617036276870" MODIFIED="1617036439367"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1898565091" CREATED="1616628376338" MODIFIED="1617290980654" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_532813961" CREATED="1616873748042" MODIFIED="1617635208172" LINK="#ID_1050715986"/>
</node>
<node TEXT="linkToWikipage" ID="ID_1572542666" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_793848366" CREATED="1617639021330" MODIFIED="1617639430678" LINK="#ID_1684208820"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_154941353" CREATED="1617021706118" MODIFIED="1617021706962">
<node TEXT="web Image" ID="ID_882341070" CREATED="1617021692476" MODIFIED="1617319663412" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates the web link from its child node and brings the image into the markdown document" ID="ID_1376338644" CREATED="1617036276870" MODIFIED="1617036448068"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1666759803" CREATED="1616628376338" MODIFIED="1617290980853" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_767762313" CREATED="1616873748042" MODIFIED="1617635209168" LINK="#ID_1050715986"/>
</node>
<node TEXT="linkToWikipage" ID="ID_1519832007" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_521201548" CREATED="1617639021330" MODIFIED="1617639451678" LINK="#ID_52705290"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1358778602" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="link to local file" ID="ID_1198515018" CREATED="1617021732791" MODIFIED="1617319663347" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates a link to a local file from its child node into the markdown document" ID="ID_1150239509" CREATED="1617036276870" MODIFIED="1617036507025"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1991011778" CREATED="1616628376338" MODIFIED="1617290981043" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1174287345" CREATED="1616873748042" MODIFIED="1617635210170" LINK="#ID_1050715986"/>
</node>
<node TEXT="linkToWikipage" ID="ID_1022080758" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1473137787" CREATED="1617639021330" MODIFIED="1617639470189" LINK="#ID_695451635"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1381900190" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="local image" ID="ID_883982996" CREATED="1617021742253" MODIFIED="1617319663283" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates a link to a local file from its child node and brings the image into the markdown document" ID="ID_1995019202" CREATED="1617036276870" MODIFIED="1617036541862"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_926946850" CREATED="1616628376338" MODIFIED="1617290981238" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_879198346" CREATED="1616873748042" MODIFIED="1617635211174" LINK="#ID_1050715986"/>
</node>
<node TEXT="linkToWikipage" ID="ID_677641637" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_471556374" CREATED="1617639021330" MODIFIED="1617639489193" LINK="#ID_669426396"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1526767699" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="list" ID="ID_1235587922" CREATED="1617021747923" MODIFIED="1617319663218" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown list structure" ID="ID_1968544542" CREATED="1617036550137" MODIFIED="1617036588187"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1081654896" CREATED="1617022064874" MODIFIED="1617290982062"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1438737403" CREATED="1617022071518" MODIFIED="1617036119511"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_535303631" CREATED="1616628376338" MODIFIED="1617290982257" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1990936581" CREATED="1616873748042" MODIFIED="1617635212129" LINK="#ID_1630580039"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_137813504" CREATED="1616628376338" MODIFIED="1617290982465" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_477281071" CREATED="1616873748042" MODIFIED="1617635213122" LINK="#ID_23311262"/>
</node>
</node>
</node>
<node TEXT="linkToWikipage" ID="ID_129029634" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_189265273" CREATED="1617639021330" MODIFIED="1617639506325" LINK="#ID_1407037290"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1643828511" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="plain task list" ID="ID_816627802" CREATED="1617021763735" MODIFIED="1617319663172" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown plain task list structure" ID="ID_321923834" CREATED="1617036550137" MODIFIED="1617036624198"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1222139769" CREATED="1617022064874" MODIFIED="1617290983243"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1245486958" CREATED="1617022071518" MODIFIED="1617036123628"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_504227921" CREATED="1616628376338" MODIFIED="1617290983444" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1287866365" CREATED="1616873748042" MODIFIED="1617635214123" LINK="#ID_1794146171"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_468025986" CREATED="1616628376338" MODIFIED="1617290983642" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_746080422" CREATED="1616873748042" MODIFIED="1617635215086" LINK="#ID_1831950189"/>
</node>
</node>
</node>
<node TEXT="linkToWikipage" ID="ID_134643124" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_292635067" CREATED="1617639021330" MODIFIED="1617639525429" LINK="#ID_1493636815"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_208575392" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="nested task list" ID="ID_1981369009" CREATED="1617021773702" MODIFIED="1617319663130" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown nested task list structure" ID="ID_1562050628" CREATED="1617036550137" MODIFIED="1617036650815"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_175450695" CREATED="1617022064874" MODIFIED="1617290983839"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1410712330" CREATED="1617022071518" MODIFIED="1617036128393"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1989660978" CREATED="1616628376338" MODIFIED="1617290984653" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_822567808" CREATED="1616873748042" MODIFIED="1617635216081" LINK="#ID_1794146171"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1654371042" CREATED="1616628376338" MODIFIED="1617290984850" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_417777069" CREATED="1616873748042" MODIFIED="1617635217017" LINK="#ID_1831950189"/>
</node>
</node>
</node>
<node TEXT="linkToWikipage" ID="ID_1492800912" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_53785238" CREATED="1617639021330" MODIFIED="1617639537496" LINK="#ID_1973326803"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1411154885" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="table" ID="ID_850120574" CREATED="1617021785969" MODIFIED="1617319663092" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown table structure" ID="ID_414157073" CREATED="1617036550137" MODIFIED="1617036707000"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1013348832" CREATED="1617022064874" MODIFIED="1617290985052"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_808490222" CREATED="1617022071518" MODIFIED="1617036170906"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_470066516" CREATED="1616628376338" MODIFIED="1617290985245" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_737175300" CREATED="1616873748042" MODIFIED="1617635217968" LINK="#ID_215172306"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_544190909" CREATED="1616628376338" MODIFIED="1617290986013" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1314423097" CREATED="1616873748042" MODIFIED="1617635218982" LINK="#ID_920768424"/>
</node>
</node>
</node>
<node TEXT="linkToWikipage" ID="ID_471237098" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1296286293" CREATED="1617639021330" MODIFIED="1617639562948" LINK="#ID_1815573524"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_391977560" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="code block" ID="ID_462755844" CREATED="1617021797007" MODIFIED="1617319663057" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It takes a node with a script in its note and shows it as a markdown code block" ID="ID_1719308891" CREATED="1617036725228" MODIFIED="1617036762646"/>
<node TEXT="" ID="ID_1051034929" CREATED="1617022688816" MODIFIED="1617022699411"/>
<node TEXT="linkToWikipage" ID="ID_618314368" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_757732396" CREATED="1617639021330" MODIFIED="1617639574865" LINK="#ID_304858143"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_435747602" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="text block" ID="ID_912653789" CREATED="1617021807464" MODIFIED="1617319663031" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It builds a text block combining text with images and links" ID="ID_1332466658" CREATED="1617036767349" MODIFIED="1617036837931"/>
<node TEXT="" ID="ID_1570718138" CREATED="1617022688816" MODIFIED="1617022699411"/>
<node TEXT="linkToWikipage" ID="ID_59583354" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1773369333" CREATED="1617639021330" MODIFIED="1617639586093" LINK="#ID_369712842"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1205431345" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="horizontal line" ID="ID_89131434" CREATED="1617021817808" MODIFIED="1617319663009" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="it just insert an horizontal line" ID="ID_1906393819" CREATED="1617036843571" MODIFIED="1617403082190"/>
<node TEXT="" ID="ID_595799117" CREATED="1617022688816" MODIFIED="1617022699411"/>
<node TEXT="" ID="ID_1390739776" CREATED="1617022688816" MODIFIED="1617022699411"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_64898422" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="comment" ID="ID_960651008" CREATED="1617021829704" MODIFIED="1617319662958" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It presents all its childs as commented paragraphs" ID="ID_1011349463" CREATED="1617036869315" MODIFIED="1617044700435"/>
<node TEXT="" ID="ID_1208972233" CREATED="1617022688816" MODIFIED="1617022699411"/>
<node TEXT="linkToWikipage" ID="ID_1435400742" CREATED="1616873748042" MODIFIED="1617639298531" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1743617328" CREATED="1617639021330" MODIFIED="1617639615595" LINK="#ID_903601228"/>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_237158773" CREATED="1617049302773" MODIFIED="1617550310082" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1590365107" CREATED="1617630987524" MODIFIED="1617630988328"/>
</node>
</node>
</node>
<node TEXT="Extras-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_462044149" CREATED="1616677057080" MODIFIED="1617483584471" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Extras-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_436753611" CREATED="1617225578064" MODIFIED="1617659326675">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_900174901" CREATED="1616620756952" MODIFIED="1617549776486" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_82121476" CREATED="1617049302773" MODIFIED="1617550310777" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_495942326" CREATED="1617630988336" MODIFIED="1617630989079"/>
</node>
<node TEXT="docsInside" ID="ID_66291003" CREATED="1616620756952" MODIFIED="1617550086073" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="explicación panel 3" ID="ID_1852699276" CREATED="1616714905387" MODIFIED="1617225574046"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The downmost part of the dialog contains some extra functions that enhance the AddOns functionalities.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_185331739" CREATED="1617044825367" MODIFIED="1617290986209"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_182472106" CREATED="1617044834342" MODIFIED="1617044837045">
<node TEXT="Button" ID="ID_1928744044" CREATED="1617044837061" MODIFIED="1617044844035"/>
<node TEXT="Works on" ID="ID_1024011120" CREATED="1617044872757" MODIFIED="1617044879891"/>
<node TEXT="Explanation" ID="ID_1962944434" CREATED="1617044880563" MODIFIED="1617044885609"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_83670014" CREATED="1616876908590" MODIFIED="1617112075151">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_429477830" CREATED="1616628376338" MODIFIED="1617290986410" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 015.png" ID="ID_1106593427" CREATED="1616696879069" MODIFIED="1617111914021" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20015.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="any node inside the **Markdown document** branch" ID="ID_1999672408" CREATED="1616876908590" MODIFIED="1617045154294"/>
<node TEXT="**Jumps** to the **Markdown document.md** node.&#xa;If clicked again it **jumps back** to the starting node." ID="ID_815671628" CREATED="1617045166898" MODIFIED="1617045286587"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_886823028" CREATED="1616876908590" MODIFIED="1617112075180">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1190915897" CREATED="1616628376338" MODIFIED="1617290986767" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 018.png" ID="ID_937000663" CREATED="1616696879086" MODIFIED="1617111914078" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20018.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="any MDH node" ID="ID_1886394757" CREATED="1616876908590" MODIFIED="1617044921470"/>
<node TEXT="Creates a sibling node with the **note** information of the selected node but now **as text**, not as formula" ID="ID_999628118" CREATED="1617045027342" MODIFIED="1617045331967"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_652595087" CREATED="1616876908590" MODIFIED="1617112075193">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1925529429" CREATED="1616628376338" MODIFIED="1617290987690" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 016.png" ID="ID_1972414744" CREATED="1616696879075" MODIFIED="1617111914041" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20016.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="a Markdown document node" ID="ID_1014715066" CREATED="1617045360364" MODIFIED="1617045373645"/>
<node TEXT="It saves the note in the node as a Markdown document file in the drive" ID="ID_232736594" CREATED="1616876908590" MODIFIED="1617045425709"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1714191243" CREATED="1616876908590" MODIFIED="1617112075210">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1368549179" CREATED="1616628376338" MODIFIED="1617290987883" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 017.png" ID="ID_178050385" CREATED="1616696879080" MODIFIED="1617111914061" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20017.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="a MarkdownDocument node or a node in its path to root" ID="ID_569136296" CREATED="1616876908590" MODIFIED="1617045499978"/>
<node TEXT="Adds an attribute to the selected node where the user can specify a common base folder path so it can calculate realtive paths between folders" ID="ID_191864898" CREATED="1617045503574" MODIFIED="1617045655205"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1543035838" CREATED="1616876908590" MODIFIED="1617112075224">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_661017996" CREATED="1616628376338" MODIFIED="1617290988086" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 019.png" ID="ID_1378301212" CREATED="1616696879098" MODIFIED="1617111914094" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20019.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="any MDH node" ID="ID_1760466771" CREATED="1616876908590" MODIFIED="1617044921470"/>
<node TEXT="It displays help information about the desired MDH node type&#xa;(Not implemented yet)" ID="ID_478708737" CREATED="1617044923907" MODIFIED="1617044992372"/>
</node>
<node TEXT="r" ID="ID_1118003477" CREATED="1617636324641" MODIFIED="1617636325997">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_863602145" CREATED="1617636332831" MODIFIED="1617636332914"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1039538830" CREATED="1617636350440" MODIFIED="1617637681698" LINK="#ID_828967076"/>
</node>
<node TEXT="web link&#xa;web Image&#xa;link to local file&#xa;local image" ID="ID_108911097" CREATED="1617636401361" MODIFIED="1617637769505"/>
<node TEXT="Adds a node that can be linked to another node that has an actual link to a file, image or webpage&#xa;It &apos;does&apos; nothing, just helps to mantain a visible organization of the map" ID="ID_859552238" CREATED="1617636449418" MODIFIED="1617636567569"/>
</node>
</node>
<node TEXT="horizontal line" STYLE_REF="MarkdownHelperNode" ID="ID_626321894" CREATED="1617659309414" MODIFIED="1617659309574"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      -----
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_656898989" CREATED="1617659154414" MODIFIED="1617659154572"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="more info in" ID="ID_1328938035" CREATED="1617659160664" MODIFIED="1617659287462"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More information and examples in the $1 page
    </p>
  </body>
</html>
</richcontent>
<node TEXT="linkToWikipage" ID="ID_575804454" CREATED="1616873748042" MODIFIED="1617546284571" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_91447609" CREATED="1617659237788" MODIFIED="1617659244082" LINK="#ID_502227104"/>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_91562905" CREATED="1617049302773" MODIFIED="1617550311491" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1531162836" CREATED="1617630989087" MODIFIED="1617630989793"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Tutorial-Examples.md" STYLE_REF="MarkdownHelperNode" ID="ID_1865194865" CREATED="1617109849480" MODIFIED="1617587370712" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Tutorial-Examples.md">
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="false"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1426210796" CREATED="1617108777150" MODIFIED="1617206847865">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1017312006" CREATED="1616620756952" MODIFIED="1617549847902" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_39223680" CREATED="1617049302773" MODIFIED="1617550320791" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1354425686" CREATED="1617630932958" MODIFIED="1617630933393"/>
</node>
<node TEXT="In this section you can see different examples of the features of the AddOn, their logic, parameters and use cases." ID="ID_1009866561" CREATED="1617110068091" MODIFIED="1617110854708"/>
<node TEXT="About *&quot;translating&quot;*" FOLDED="true" ID="ID_407202958" CREATED="1617113068171" MODIFIED="1617203279466">
<node TEXT="Freeplane is Markdown capable on its own. You don&apos;t need this AddOn to use Markdown in Freeplane. The AddOn is just a tool that helps in *&apos;translating&apos;* the mindmaping way of handle information into markdown type documents." ID="ID_232412550" CREATED="1617110246611" MODIFIED="1617114830359"/>
<node TEXT="Example" ID="ID_1500382231" CREATED="1617120795352" MODIFIED="1617120868994">
<node TEXT="An easy to understand example of this **&apos;*translating*&apos;** is the **web link** MDH node." ID="ID_1262427894" CREATED="1617112725770" MODIFIED="1617113258861">
<node TEXT="agregar link a weblink?" STYLE_REF="Tarea Descartada" ID="ID_1859443081" CREATED="1617113203905" MODIFIED="1617119377745">
<icon BUILTIN="emoji-26D4"/>
</node>
</node>
<node TEXT="It takes a node that has a link to a web page and formats it to presents its text and its URI in the markdown format:" ID="ID_718823695" CREATED="1617112853704" MODIFIED="1617115030382"/>
<node TEXT="* \[node&apos;s text\]\(node&apos;s link uri\)" ID="ID_58929043" CREATED="1617115030401" MODIFIED="1617115048689"/>
<node TEXT="-----" ID="ID_1643453879" CREATED="1617120780558" MODIFIED="1617120783984"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_955242676" CREATED="1617120275342" MODIFIED="1617290988286"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_605537485" CREATED="1617120283904" MODIFIED="1617120284922">
<node TEXT="Steps" ID="ID_1997705382" CREATED="1617203336306" MODIFIED="1617203339268"/>
<node TEXT="Image" ID="ID_864167097" CREATED="1617120301194" MODIFIED="1617121037102">
<icon BUILTIN="emoji-2194"/>
</node>
</node>
<node TEXT="r" ID="ID_347664058" CREATED="1617120306025" MODIFIED="1617120308936">
<node TEXT="1. Having a **node with a link** to a webpage" ID="ID_331924110" CREATED="1617120308966" MODIFIED="1617203445096"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_693477419" CREATED="1616628376338" MODIFIED="1617120232276" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1779446740" CREATED="1616873748042" MODIFIED="1617635501410" LINK="#ID_932222153"/>
</node>
</node>
<node TEXT="r" ID="ID_1295466164" CREATED="1617120331671" MODIFIED="1617120334719">
<node TEXT="2. The **MDH &apos;*web link*&apos; node** translates it.&#xa;Here we can see the result in the note of the node **in text format**" ID="ID_783354261" CREATED="1617120334746" MODIFIED="1617203506413"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_820904897" CREATED="1616628376338" MODIFIED="1617120232291" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1715277051" CREATED="1616873748042" MODIFIED="1617635502420" LINK="#ID_1654606312"/>
</node>
</node>
<node TEXT="r" ID="ID_1625226533" CREATED="1617120409296" MODIFIED="1617120411798">
<node TEXT="3. This image shows the same as the one above it, but now we can see the result **markdown interpreted**" ID="ID_1804354311" CREATED="1617120411819" MODIFIED="1617203415145"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1317220462" CREATED="1616628376338" MODIFIED="1617120232257" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_951402128" CREATED="1616873748042" MODIFIED="1617635503451" LINK="#ID_1681402618"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Markdown in freeplane" FOLDED="true" ID="ID_781649445" CREATED="1617113121730" MODIFIED="1617113153646">
<node TEXT="It is good to have an idea on how to do markdown in Freeplane without this addon too, because you can get the best results when combining both technics." ID="ID_1927204272" CREATED="1617110416719" MODIFIED="1617110584747"/>
<node TEXT="Some features of the Markdown Helper addon are very useful in some cases but are overcomplicated for other uses. It is up to you when to use them and when to go the standard markdown way. By knowing when to choose one or another your workflow will excel." ID="ID_1006878215" CREATED="1617110629606" MODIFIED="1617113950857"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1071430242" CREATED="1617113493153" MODIFIED="1617290989039"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="A little explanation on how to use Markdown in Freeplane can be seen here." ID="ID_783164557" CREATED="1617113420751" MODIFIED="1617113974454"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More information about this in the $1 page.
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_1462152485" CREATED="1616719774829" MODIFIED="1617550211871" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo linkToWikipage
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_145807473" CREATED="1616873748042" MODIFIED="1617635504427" LINK="#ID_619341818"/>
</node>
</node>
</node>
</node>
<node TEXT="Good to know" FOLDED="true" ID="ID_871302716" CREATED="1617113333441" MODIFIED="1617113340089">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_681944580" CREATED="1617114730079" MODIFIED="1617290989235"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Please look at the **Markdown document.md** explanation before looking at the other functions of the AddOn." ID="ID_1095002437" CREATED="1617110161582" MODIFIED="1617121018681"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Please look at the **$1** explanation before looking at the other functions of the AddOn (MDH Nodes and Extras).
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_27740027" CREATED="1616719774829" MODIFIED="1617550213311" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo linkToWikipage
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_253032285" CREATED="1616873748042" MODIFIED="1617635505409" LINK="#ID_1723936029"/>
</node>
</node>
</node>
</node>
<node TEXT="----" ID="ID_1594754246" CREATED="1617120962868" MODIFIED="1617120964817"/>
<node TEXT="docsInside" ID="ID_1710218156" CREATED="1616620756952" MODIFIED="1617550097315" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
<node TEXT="Pages:" ID="ID_792615519" CREATED="1617492248011" MODIFIED="1617545883377"/>
<node TEXT="----" ID="ID_917469085" CREATED="1617492253669" MODIFIED="1617492256197"/>
</node>
<node TEXT="previousAndNext" ID="ID_740318588" CREATED="1617049302773" MODIFIED="1617550321668" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_607286699" CREATED="1617630933401" MODIFIED="1617630934237"/>
</node>
</node>
<node TEXT="Markdown-document.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1723936029" CREATED="1617110925519" MODIFIED="1617660172296" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-document.md" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_690326592" CREATED="1617069044376" MODIFIED="1617310505405">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_433965799" CREATED="1616620756952" MODIFIED="1617549850994" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_67572382" CREATED="1617049302773" MODIFIED="1617550325995" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_674075690" CREATED="1617630937362" MODIFIED="1617630938086"/>
</node>
<node TEXT="docsInside" ID="ID_1183629966" CREATED="1616620756952" MODIFIED="1617550100367" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Table of contents" FOLDED="true" ID="ID_400504717" CREATED="1617288581269" MODIFIED="1617288588837">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_148553046" CREATED="1617285982418" MODIFIED="1617290989418">
<attribute NAME="TOClevels" VALUE="3" OBJECT="org.freeplane.features.format.FormattedNumber|3|#0.####"/>
<attribute NAME="TOCindent" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.TOC(node) //ef</text>
</richcontent>
</node>
</node>
<node TEXT="Foreground" FOLDED="true" ID="ID_1932221260" CREATED="1617158283623" MODIFIED="1617158290717">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_546517287" CREATED="1617113493153" MODIFIED="1617290989598"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="first: Markdown in Freeplane" ID="ID_433712213" CREATED="1617113420751" MODIFIED="1617115365037"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Before trying to understand this AddOn, it is good to know how the Markdown notation works and how you can use it in Freeplane. I recomend you to have a look at the $1 page first.
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_593028823" CREATED="1616719774829" MODIFIED="1617550214857" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo linkToWikipage
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_852108483" CREATED="1616873748042" MODIFIED="1617635506456" LINK="#ID_619341818"/>
</node>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1846197265" CREATED="1617113493153" MODIFIED="1617290990427"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="first: Formulas" ID="ID_1498978210" CREATED="1617113420751" MODIFIED="1617118445651"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      It is also good to have a little knowledge $1, what they are, how they work and when they get updated. Just to know that they exist and that this addon relies on them.
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_724385922" CREATED="1616719774829" MODIFIED="1617550216333" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo linkToWikipage
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1345047354" CREATED="1616873748042" MODIFIED="1617635507460" LINK="#ID_1013483585"/>
</node>
</node>
</node>
</node>
<node TEXT="The &quot;Makdown document.md&quot; node" FOLDED="true" ID="ID_1442176543" CREATED="1617158295237" MODIFIED="1617207704438" VGAP_QUANTITY="2 px">
<node TEXT="Definition" ID="ID_744847346" CREATED="1617158413930" MODIFIED="1617231167699">
<node TEXT="The &quot;Markdown document.md&quot; node is the central Markdown Helper feature." ID="ID_1615184994" CREATED="1617226573188" MODIFIED="1617227038617"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The **&quot;Markdown document.md&quot;** node is the central **Markdown Helper** feature. This node builds a Markdown document in its note by collecting information from its descendants.
    </p>
    <p>
      
    </p>
    <p>
      The node has a formula in its note. This formula, every time it's recalculated, builds the markdown document in the note. This way the note shows an updated version of the document every time the nodes in the branch are edited or reordered.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Here you can see a simple example of this kind of nodes with descendants and how the builded document in its note looks like:" ID="ID_898733468" CREATED="1617227047434" MODIFIED="1617227142200"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1847511296" CREATED="1616628376338" MODIFIED="1617290990607" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1277013852" CREATED="1616873748042" MODIFIED="1617635508462" LINK="#ID_1666300950"/>
</node>
</node>
<node TEXT="Basic logic" ID="ID_161047862" CREATED="1617158465971" MODIFIED="1617231780594">
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_835285738" CREATED="1617308923503" MODIFIED="1617308923550"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Parent nodes" ID="ID_890212835" CREATED="1617195729216" MODIFIED="1617231196705">
<node TEXT="Nodes that have children are considered as headers." ID="ID_9129778" CREATED="1617231221368" MODIFIED="1617231273444"/>
<node TEXT="The text in the node is assigned as the header&apos;s text." ID="ID_1803279050" CREATED="1617231278138" MODIFIED="1617231300415"/>
<node TEXT="If the node has details or a note, they are considered as the first paragraphs under this header in the document." ID="ID_967731447" CREATED="1617231301265" MODIFIED="1617232732314"/>
</node>
<node TEXT="Leaf nodes" ID="ID_1093727853" CREATED="1617195743891" MODIFIED="1617231211477">
<node TEXT="Nodes without children are considered as document paragraphs." ID="ID_1700165280" CREATED="1617231361986" MODIFIED="1617232752735"/>
<node TEXT="If the node has details or a note, then the node&apos;s text is ignored and only the details and the note are included in the final document." ID="ID_224992276" CREATED="1617231707464" MODIFIED="1617232762923"/>
</node>
</node>
</node>
<node TEXT="Basic logic example" ID="ID_1368688726" CREATED="1617232624687" MODIFIED="1617309033224">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1501887196" CREATED="1616628376338" MODIFIED="1617290990805" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_884754289" CREATED="1616873748042" MODIFIED="1617635509490" LINK="#ID_628251191"/>
</node>
<node TEXT="in this image you can see that:" ID="ID_485168973" CREATED="1617232791505" MODIFIED="1617232845678"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_757970735" CREATED="1617232831223" MODIFIED="1617290990993"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="the &quot;Chapter 1&quot; node has **details** and a **note**" ID="ID_631738480" CREATED="1617232856425" MODIFIED="1617307607656"/>
<node TEXT="the text in this **details** is shown as the first paragraph under the header **&quot;Chapter 1&quot;**" ID="ID_204476376" CREATED="1617232941060" MODIFIED="1617307637275"/>
<node TEXT="The next paragraph is the text that is in the **note** (not shown in the image)" ID="ID_578484925" CREATED="1617232987256" MODIFIED="1617307652902"/>
<node TEXT="The last node bottom right is a **leaf node** (has no children)" ID="ID_1308569573" CREATED="1617233029197" MODIFIED="1617307666733"/>
<node TEXT="It has a **note** and no details." ID="ID_550533461" CREATED="1617233063345" MODIFIED="1617307678494"/>
<node TEXT="The text on the node is ignored in the final document and the last paragraph is the text in the node&apos;s note" ID="ID_1729400078" CREATED="1617233075717" MODIFIED="1617233109024"/>
</node>
<node TEXT="Here is animated for better understanding:" ID="ID_320468424" CREATED="1617232791505" MODIFIED="1617308816933"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1666240109" CREATED="1616628376338" MODIFIED="1617290990805" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_837288493" CREATED="1616873748042" MODIFIED="1617635510486" LINK="#ID_1688158345"/>
</node>
</node>
<node TEXT="Modifiers" ID="ID_678306203" CREATED="1617158651540" MODIFIED="1617231181054">
<node TEXT="Modifiers are icons or attributes that change the logic the Markdown Document node uses to build the markdown document in the node&apos;s note." ID="ID_142546924" CREATED="1617309145764" MODIFIED="1617484627836"/>
<node TEXT="Icons" ID="ID_655631743" CREATED="1617204599736" MODIFIED="1617204607221">
<node TEXT="Following icons can be used in the nodes of the branch to indicate to the Markdown Document node that those node must be interpreted in an special way." ID="ID_906336923" CREATED="1617309266561" MODIFIED="1617309373544"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_17168912" CREATED="1617197793540" MODIFIED="1617290991777"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_590847160" CREATED="1617197806249" MODIFIED="1617197808641">
<node TEXT="Modifier" ID="ID_1032204789" CREATED="1617197808656" MODIFIED="1617204668542"/>
<node TEXT="Explanation" ID="ID_1816878651" CREATED="1617197817085" MODIFIED="1617197820055"/>
</node>
<node TEXT="r" ID="ID_1344657448" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1537940240" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1466110276" CREATED="1616873748042" MODIFIED="1617635516016" LINK="#ID_846704092"/>
</node>
<node TEXT="This &apos;leaf&apos; icon indicates that the node must be treaten as a leaf node by the Markdown Document node. That means that its children won&apos;t be considered: they are invisible for the logic when building the markdown document.&#xa;This way you can add extra information in any branch that is useful to you but won&apos;t be shown in the document.&#xa;You can have a node that use a formula to get some result from its descendants and show only this result, but have the posibility to have the information you used to get this result right there and modify it if needed. The Freeplane mindmapping way." ID="ID_385119847" CREATED="1617197992863" MODIFIED="1617309500600"/>
</node>
<node TEXT="r" ID="ID_1436652439" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_348997861" CREATED="1616628376338" MODIFIED="1617197971834" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1482151354" CREATED="1616873748042" MODIFIED="1617635512599" LINK="#ID_1647115959"/>
</node>
<node TEXT="The &apos;no entry&apos; icon indicates that the node and all its desendants must be totally ignored by the Markdown Document node. They are invisible when building the markdown document.&#xa;This way you can add extra information that you don&apos;t need to be shown in the document." ID="ID_158995254" CREATED="1617197992863" MODIFIED="1617201451160"/>
</node>
<node TEXT="r" ID="ID_1052339338" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1545940884" CREATED="1616628376338" MODIFIED="1617197971832" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_320842663" CREATED="1616873748042" MODIFIED="1617635513630" LINK="#ID_413807381"/>
</node>
<node TEXT="The &apos;see-no-evil monkey&apos; icon indicates that the content of the node must be ignored by the Markdown Document node, but only this node, not its descendants. They stay visible for the Markdown Document node when building the markdown document.&#xa;This may help when you want to create some groups in the nodes tree, but you don&apos;t want that this affects the document structure." ID="ID_1095926586" CREATED="1617197992863" MODIFIED="1617484663126"/>
</node>
</node>
</node>
<node TEXT="Attributes" FOLDED="true" ID="ID_1318246327" CREATED="1617204608243" MODIFIED="1617204611349">
<node TEXT="The **&quot;Markdown Document.md&quot; node** has the following attributes that can be used to get different results when building the markdown document in the node&apos;s note." ID="ID_970974993" CREATED="1617309547692" MODIFIED="1617309640777"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_89360947" CREATED="1616628376338" MODIFIED="1617290991966" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_506350473" CREATED="1616873748042" MODIFIED="1617635514684" LINK="#ID_1584384688"/>
</node>
<node TEXT="It is good to know that if you have a markdown document inside another one, the logic uses the attributes values from the parent." ID="ID_1692990802" CREATED="1617309672000" MODIFIED="1617310398809"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_1762643597" CREATED="1617197793540" MODIFIED="1617204685215"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_891884960" CREATED="1617197806249" MODIFIED="1617197808641">
<node TEXT="Modifier" ID="ID_58266947" CREATED="1617197808656" MODIFIED="1617204677560"/>
<node TEXT="Posible&#xa;values" ID="ID_1688050446" CREATED="1617200909062" MODIFIED="1617201053947"/>
<node TEXT="Explanation" ID="ID_1404844207" CREATED="1617197817085" MODIFIED="1617197820055"/>
</node>
<node TEXT="r" ID="ID_1320968976" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="headersToUnderline" ID="ID_1925182442" CREATED="1617037013305" MODIFIED="1617037144969"/>
<node TEXT="0, 1, 2, 3, ..." ID="ID_1957645200" CREATED="1617201000852" MODIFIED="1617201026995"/>
<node TEXT="This Attribute indicates if the builder must add an extra line under the headers. The value indicates how many header&apos;s levels must be underlined. 0 indicates no underlining." ID="ID_1301642060" CREATED="1617201087918" MODIFIED="1617201286484"/>
</node>
<node TEXT="r" ID="ID_66154949" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="hideFolded" ID="ID_1473179670" CREATED="1617037013305" MODIFIED="1617037150836"/>
<node TEXT="true, false" ID="ID_315577351" CREATED="1617201294006" MODIFIED="1617201298941"/>
<node TEXT="This attribute indicates if nodes that are folded must be ignored by the Markdown document builder or not.&#xa;This works the same way as adding the &apos;no entry&apos; icon to those nodes." ID="ID_1199112487" CREATED="1617201330142" MODIFIED="1617201741951"/>
</node>
<node TEXT="r" ID="ID_310066607" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="headerNumbering" ID="ID_1078009445" CREATED="1617037013321" MODIFIED="1617037156527"/>
<node TEXT="true, false" ID="ID_691910777" CREATED="1617201294006" MODIFIED="1617201298941"/>
<node TEXT="This attribute indicates if the headers must be numbered or not" ID="ID_17841811" CREATED="1617201784343" MODIFIED="1617201807131"/>
</node>
<node TEXT="r" ID="ID_559146358" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="topHeadersNumbered" ID="ID_523686254" CREATED="1617037013321" MODIFIED="1617037161448"/>
<node TEXT="true, false" ID="ID_1998498278" CREATED="1617201294006" MODIFIED="1617201298941"/>
<node TEXT="This attribute indicates if the top header level must be included in the headers numbering or not." ID="ID_603280426" CREATED="1617201810334" MODIFIED="1617201858790"/>
</node>
<node TEXT="r" ID="ID_872878535" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="topHeaderStartingNumber" ID="ID_1227115065" CREATED="1617037013321" MODIFIED="1617037166013"/>
<node TEXT="0, 1, 2, 3, ..." ID="ID_1445077419" CREATED="1617201000852" MODIFIED="1617201026995"/>
<node TEXT="This attribute indicates the starting number for the headers numbering.&#xa;This can be useful if you have separate documents for each chapter of a bigger book, for example." ID="ID_244772438" CREATED="1617201876386" MODIFIED="1617202028792"/>
</node>
<node TEXT="r" ID="ID_1155691933" CREATED="1617197896931" MODIFIED="1617197898303">
<node TEXT="fileLinksRelative" ID="ID_733362552" CREATED="1617037013336" MODIFIED="1617037178921"/>
<node TEXT="true, false" ID="ID_908403667" CREATED="1617201294006" MODIFIED="1617201298941"/>
<node TEXT="This attribute indicates if the ***links MDH nodes&apos;** must translate the URIs as relative or absolute ones.&#xa;This is helpful to view the images or link the files if working in your own computer, but be able to export it to web location or other computer and continue working." ID="ID_562188282" CREATED="1617202035607" MODIFIED="1617202728537"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1618684146" CREATED="1617049302773" MODIFIED="1617550326902" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_424996176" CREATED="1617630938094" MODIFIED="1617630938806"/>
</node>
</node>
<node TEXT="Markdown-document-modifiers-examples.md" STYLE_REF="MarkdownHelperNode" ID="ID_784339167" CREATED="1617203847126" MODIFIED="1617660172292" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-document-modifiers-examples.md" HGAP_QUANTITY="14.75 pt" VSHIFT_QUANTITY="0.75 pt">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="140.25 pt" VALUE_WIDTH="56.25 pt"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_756525389" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_366913679" CREATED="1616620756952" MODIFIED="1617549852025" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1215682771" CREATED="1617049302773" MODIFIED="1617550327627" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1065340719" CREATED="1617630938814" MODIFIED="1617630939536"/>
</node>
<node TEXT="docsInside" ID="ID_873923923" CREATED="1616620756952" MODIFIED="1617550101377" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1461661404" TREE_ID="ID_142546924"/>
<node TEXT="Table of contents" ID="ID_506952719" CREATED="1617208629023" MODIFIED="1617208636493">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_146856805" CREATED="1617208587585" MODIFIED="1617310912692">
<attribute NAME="TOClevels" VALUE="4" OBJECT="org.freeplane.features.format.FormattedNumber|4|#0.####"/>
<attribute NAME="TOCindent" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.TOC(node) // xxxzz</text>
</richcontent>
</node>
</node>
<node TEXT="-----" ID="ID_914363293" CREATED="1617208566249" MODIFIED="1617208568212"/>
<node TEXT="Icons" FOLDED="true" ID="ID_1290436136" CREATED="1617204914413" MODIFIED="1617204917709">
<node ID="ID_1184122163" TREE_ID="ID_906336923"/>
<node TEXT="&apos;Leaf&apos; icon" ID="ID_1811016108" CREATED="1617207740630" MODIFIED="1617207784024">
<node ID="ID_1811682212" TREE_ID="ID_1537940240">
<node ID="ID_50418886" TREE_ID="ID_1466110276"/>
</node>
<node ID="ID_297843003" TREE_ID="ID_385119847"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_717419289" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_383716513" CREATED="1616873748042" MODIFIED="1617635530123" LINK="#ID_741879942"/>
</node>
</node>
<node TEXT="&apos;no entry&apos; icon" ID="ID_458819857" CREATED="1617207750434" MODIFIED="1617207773138">
<node ID="ID_690346734" TREE_ID="ID_348997861">
<node ID="ID_1452820070" TREE_ID="ID_1482151354"/>
</node>
<node ID="ID_388284857" TREE_ID="ID_158995254"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1555277817" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1674352548" CREATED="1616873748042" MODIFIED="1617635531108" LINK="#ID_999929514"/>
</node>
</node>
<node TEXT="&apos;see-no-evil monkey&apos; icon" ID="ID_1584100305" CREATED="1617207816024" MODIFIED="1617207816024">
<node ID="ID_860993877" TREE_ID="ID_1545940884">
<node ID="ID_555772965" TREE_ID="ID_320842663"/>
</node>
<node ID="ID_641233392" TREE_ID="ID_1095926586"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_723292115" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_616762731" CREATED="1616873748042" MODIFIED="1617635532095" LINK="#ID_1497405467"/>
</node>
</node>
</node>
<node TEXT="----" ID="ID_1090984033" CREATED="1617208551669" MODIFIED="1617208556893"/>
<node TEXT="Attributes" FOLDED="true" ID="ID_504106832" CREATED="1617204918951" MODIFIED="1617204936338">
<node ID="ID_1919231855" TREE_ID="ID_970974993"/>
<node ID="ID_1914937847" TREE_ID="ID_89360947">
<node ID="ID_1610605547" TREE_ID="ID_506350473"/>
</node>
<node ID="ID_450312083" TREE_ID="ID_1692990802"/>
<node TEXT="headersToUnderline" ID="ID_941487276" CREATED="1617037013305" MODIFIED="1617207996578">
<node ID="ID_656092233" TREE_ID="ID_1301642060"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_480451863" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_18435657" CREATED="1616873748042" MODIFIED="1617635533147" LINK="#ID_139387978"/>
</node>
</node>
<node TEXT="hideFolded" ID="ID_385016754" CREATED="1617037013305" MODIFIED="1617207996640">
<node ID="ID_1001914055" TREE_ID="ID_1199112487"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_285450646" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1704688192" CREATED="1616873748042" MODIFIED="1617635534181" LINK="#ID_626702459"/>
</node>
</node>
<node TEXT="Headers numbering" ID="ID_1246666312" CREATED="1617318722298" MODIFIED="1617318733876">
<node TEXT="headerNumbering" ID="ID_64791446" CREATED="1617037013321" MODIFIED="1617207996683">
<node ID="ID_1296348469" TREE_ID="ID_17841811"/>
</node>
<node TEXT="topHeadersNumbered" ID="ID_1805237001" CREATED="1617037013321" MODIFIED="1617207996900">
<node ID="ID_1492358379" TREE_ID="ID_603280426"/>
</node>
<node TEXT="topHeaderStartingNumber" ID="ID_783560803" CREATED="1617037013321" MODIFIED="1617207996927">
<node ID="ID_348906935" TREE_ID="ID_244772438"/>
</node>
<node TEXT="example" ID="ID_738721111" CREATED="1617319028470" MODIFIED="1617319036187">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_331796221" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_968519541" CREATED="1616873748042" MODIFIED="1617635535225" LINK="#ID_1869821183"/>
</node>
</node>
</node>
<node TEXT="fileLinksRelative" ID="ID_1094730480" CREATED="1617037013336" MODIFIED="1617207996966">
<node ID="ID_1019369923" TREE_ID="ID_562188282"/>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1660959295" CREATED="1617049302773" MODIFIED="1617550328396" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1451538631" CREATED="1617630939544" MODIFIED="1617630940328"/>
</node>
</node>
</node>
</node>
<node TEXT="MDH-nodes.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_633931909" CREATED="1617110935909" MODIFIED="1617483606752" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/MDH-nodes.md" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_257775792" CREATED="1617069044376" MODIFIED="1617460838039">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1780891444" CREATED="1616620756952" MODIFIED="1617549853103" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_155384423" CREATED="1617049302773" MODIFIED="1617550329159" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1356665731" CREATED="1617630940335" MODIFIED="1617630941036"/>
</node>
<node TEXT="Table of Contents" ID="ID_234872564" CREATED="1617405296226" MODIFIED="1617405303444">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_1844137029" CREATED="1617405308505" MODIFIED="1617405333782">
<attribute NAME="TOClevels" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="TOCindent" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.TOC(node)//</text>
</richcontent>
</node>
</node>
<node TEXT="Introduction" FOLDED="true" ID="ID_1120724309" CREATED="1617405287781" MODIFIED="1617405293829">
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_916538146" CREATED="1617320382147" MODIFIED="1617320382208"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_346748392" CREATED="1617320398160" MODIFIED="1617320399294">
<node TEXT="" ID="ID_162304528" CREATED="1617320414732" MODIFIED="1617320414732"/>
<node TEXT="" ID="ID_612622516" CREATED="1617320419963" MODIFIED="1617320419963"/>
</node>
<node ID="ID_761447305" TREE_ID="ID_723512072">
<node ID="ID_1463836951" TREE_ID="ID_701192874">
<node ID="ID_1835284137" TREE_ID="ID_1004620486"/>
</node>
<node ID="ID_710037493" TREE_ID="ID_847197">
<node ID="ID_713329957" TREE_ID="ID_486435346">
<node ID="ID_419840424" TREE_ID="ID_1784156102">
<node ID="ID_1857360255" TREE_ID="ID_525957612"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="All MDH nodes are nodes that translates or builds some information into the markdown writing format." ID="ID_1633776057" CREATED="1617373875456" MODIFIED="1617373937945"/>
<node TEXT="They have a special defined style that includes the &quot;leaf&quot; icon. That means that the Markdown Document node takes its content but ignores all descendants of this kind of nodes." ID="ID_1209818117" CREATED="1617373948145" MODIFIED="1617485216481"/>
</node>
<node TEXT="Markdown Helper nodes" FOLDED="true" ID="ID_1774584085" CREATED="1617319473250" MODIFIED="1617405375316">
<node TEXT="Markdown document.md" ID="ID_1271671167" CREATED="1617021652816" MODIFIED="1617405411843">
<node ID="ID_1609217875" TREE_ID="ID_1325423218"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_704039717" CREATED="1617319893719" MODIFIED="1617319893787"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="more information .." ID="ID_6243890" CREATED="1617319897013" MODIFIED="1617320021520"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More detailled information in the $1 page.
    </p>
  </body>
</html></richcontent>
<node TEXT="link to wikipage" ID="ID_959302503" CREATED="1616719774829" MODIFIED="1616873737746" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def nodo = node
def n = nodo.children.find{it.link &amp;&amp; it.link.uri.scheme==&apos;file&apos;}?:           // primer hijo &quot;nodo con link a file&quot;
        nodo.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo
        nodo.children.connectorsOut.target.flatten().find{it.link.file}?:     // primer &quot;nodo con link a file&quot; conectado desde nodo hijo
        nodo.children.find{it.link.node}?.link?.node?:                        // &quot;nodo con link a file&quot; linkeado desde primer hijo con link
        nodo.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo
        
if(n){
    def texto =n.text.takeBefore(&apos;.md&apos;)
    def uri = n.link.uri.toString().takeAfter(&apos;.wiki/&apos;).takeBefore(&apos;.md&apos;)
    
    if(texto &amp;&amp; texto == uri){
        return &quot;[$texto]($uri)&quot;
    } else {
        return edofro.MarkDownHelper.MDH.failMessage(&apos;No wiki page found!!&apos;)
    }
} else {
    return edofro.MarkDownHelper.MDH.failMessage(&apos;No wiki page found!!&apos;)
}
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1974155536" CREATED="1616873748042" MODIFIED="1617635437820" LINK="#ID_1723936029"/>
</node>
</node>
</node>
</node>
<node TEXT="horizontal line" ID="ID_231476520" CREATED="1617021817808" MODIFIED="1617405411928">
<node ID="ID_944748524" TREE_ID="ID_1906393819"/>
</node>
<node TEXT="Other Markdown Helper nodes examples" ID="ID_25655400" CREATED="1617460427552" MODIFIED="1617460765242">
<node TEXT="docsInside" ID="ID_119818500" CREATED="1616620756952" MODIFIED="1617550102388" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1938123418" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="result doc" ID="ID_99784352" CREATED="1617486643711" MODIFIED="1617486692227"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The resulting document can be seen here: $1
    </p>
  </body>
</html></richcontent>
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_1089872481" CREATED="1617486479547" MODIFIED="1617486576176"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.fileLink(node,&apos;../raw/&apos;,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_625629302" CREATED="1616873748042" MODIFIED="1617635441037" LINK="#ID_474132283"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1934504689" CREATED="1617049302773" MODIFIED="1617550329865" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1429053588" CREATED="1617630941044" MODIFIED="1617630941799"/>
</node>
</node>
<node TEXT="ToC-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1232286520" CREATED="1617458933745" MODIFIED="1617483608609" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/ToC-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_857514274" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1965513133" CREATED="1616620756952" MODIFIED="1617549854100" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1078846595" CREATED="1617049302773" MODIFIED="1617550330576" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1354119852" CREATED="1617630822363" MODIFIED="1617630822744"/>
</node>
<node TEXT="ToC" ID="ID_1352136013" CREATED="1617021669628" MODIFIED="1617405411866">
<node ID="ID_820366696" TREE_ID="ID_205398220"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_601905948" CREATED="1617320111721" MODIFIED="1617320111803"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="It has two attributes that modifies its content" ID="ID_738273954" CREATED="1617320139989" MODIFIED="1617320351928">
<node TEXT="TOClevels" ID="ID_1736370834" CREATED="1617022869452" MODIFIED="1617320210149">
<node TEXT="Indicates how many headers levels must be included in the table of content" ID="ID_1779822750" CREATED="1617320158276" MODIFIED="1617320201256"/>
<node TEXT="Integer" ID="ID_679297047" CREATED="1617320276909" MODIFIED="1617320279197"/>
</node>
<node TEXT="TOCindent" ID="ID_422691685" CREATED="1617320117982" MODIFIED="1617320118002">
<node TEXT="Indicates if the headers in the table must be indented or not." ID="ID_486447285" CREATED="1617320213960" MODIFIED="1617320307939"/>
<node TEXT="Boolean" ID="ID_524995356" CREATED="1617320309070" MODIFIED="1617320311176"/>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_1044042573" CREATED="1617407057051" MODIFIED="1617407085776">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_553988761" CREATED="1616628376338" MODIFIED="1617587314724" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node, true) 
// xxx</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1792566711" CREATED="1616873748042" MODIFIED="1617635440388" LINK="#ID_723123711"/>
</node>
<node TEXT="probando" ID="ID_140261141" CREATED="1617561434210" MODIFIED="1617587263453">
<icon BUILTIN="emoji-26D4"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import edofro.MarkDownHelper.MDH
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      assert MDH.fileLink(node,'Xxxx/','Yyyy') == '[MDHnodes-TOC.gif](Xxxx/Yyyy/resources/Examples/MDHnodes-TOC.gif)'
    </p>
    <p>
      assert MDH.fileLink(node)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== '[MDHnodes-TOC.gif](resources/Examples/MDHnodes-TOC.gif)'
    </p>
    <p>
      assert MDH.fileLink(node,'Xxxx/')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== '[MDHnodes-TOC.gif](Xxxx/resources/Examples/MDHnodes-TOC.gif)'
    </p>
    <p>
      assert MDH.fileLink(node,true,'Yyyy')&nbsp;&nbsp;&nbsp;&nbsp;== '[MDHnodes-TOC.gif](../raw/Yyyy/resources/Examples/MDHnodes-TOC.gif)'
    </p>
    <p>
      assert MDH.fileLink(node,'Xxxx/',true)&nbsp;&nbsp;&nbsp;== '[MDHnodes-TOC.gif](Xxxx/v0.1.0/resources/Examples/MDHnodes-TOC.gif)'
    </p>
    <p>
      assert MDH.fileLink(node,'','')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== '[MDHnodes-TOC.gif](resources/Examples/MDHnodes-TOC.gif)'
    </p>
    <p>
      assert MDH.fileLink(node, true)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== '[MDHnodes-TOC.gif](../raw/v0.1.0/resources/Examples/MDHnodes-TOC.gif)'
    </p>
    <p>
      assert MDH.fileLink(node, true, true)&nbsp;&nbsp;&nbsp;&nbsp;== '[MDHnodes-TOC.gif](../raw/v0.1.0/resources/Examples/MDHnodes-TOC.gif)'
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      return 'todo ok!'
    </p>
    <p>
      
    </p>
    <p>
      //assert MDH.fileLink(node,true,true)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== 'ExamplePreBranch'
    </p>
    <p>
      //MDH.fileLink(node,(Boolean) true, (Boolean) true)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      // def branch = ''
    </p>
    <p>
      // branch = branch==''?'':branch[-1]=='/'?branch:branch + '/'
    </p>
    <p>
      
    </p>
    <p>
      /*
    </p>
    <p>
      assert fileLink(node,'Xxxx','Yyyy') == 'ExampleXxxxYyyy'
    </p>
    <p>
      assert fileLink(node)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== 'Example'
    </p>
    <p>
      assert fileLink(node,'Xxxx')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== 'ExampleXxxx'
    </p>
    <p>
      assert fileLink(node,true,'Yyyy')&nbsp;&nbsp;&nbsp;== 'ExamplePreYyyy'
    </p>
    <p>
      assert fileLink(node,'Xxxxx',true)&nbsp;&nbsp;== 'ExampleXxxxxBranch'
    </p>
    <p>
      assert fileLink(node,'','')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== 'Example'
    </p>
    <p>
      assert fileLink(node,true,true)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;== 'ExamplePreBranch'
    </p>
    <p>
      assert fileLink(node,true) == 'ExamplePre'
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;// returns file link in absolute or relative format
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def fileLink(nodo){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fileLink(nodo, '','')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def&nbsp;&nbsp;fileLink(nodo, pre){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fileLink(nodo, pre,'')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def fileLink(nodo, Boolean getPre, Boolean getBranch){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def branch = 'Branch'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fileLink(nodo, getPre, branch)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def&nbsp;&nbsp;fileLink(nodo, pre, Boolean getBranch){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def branch = 'Branch'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fileLink(nodo, pre, branch)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def&nbsp;&nbsp;fileLink(nodo, Boolean getPre, branch){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def pre = 'Pre'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fileLink(nodo, pre, branch)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def&nbsp;&nbsp;fileLink(nodo, String pre, String branch){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return nodo.value.toString() + pre + branch
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;*/
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
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_570921241" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_1451190338" TREE_ID="ID_99784352">
<node ID="ID_1450213051" TREE_ID="ID_1089872481">
<node ID="ID_1988526945" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1306535591" CREATED="1617049302773" MODIFIED="1617550331358" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1756803369" CREATED="1617630822753" MODIFIED="1617630823527"/>
</node>
</node>
</node>
<node TEXT="Web-Link-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1684208820" CREATED="1617458929666" MODIFIED="1617483610042" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Web-Link-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_620361137" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_982459026" CREATED="1616620756952" MODIFIED="1617549855118" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_311694122" CREATED="1617049302773" MODIFIED="1617550332091" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_353324681" CREATED="1617630941806" MODIFIED="1617630942543"/>
</node>
<node TEXT="web link" ID="ID_993064222" CREATED="1617021678101" MODIFIED="1617405411875">
<node ID="ID_1654952654" TREE_ID="ID_1791474806"/>
<node TEXT="Example" ID="ID_1186335196" CREATED="1617407098740" MODIFIED="1617407101467">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1319061313" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1605736368" CREATED="1616873748042" MODIFIED="1617635463605" LINK="#ID_1630985854"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1203271837" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_1169242504" TREE_ID="ID_99784352">
<node ID="ID_1015646812" TREE_ID="ID_1089872481">
<node ID="ID_1757851766" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_716835890" CREATED="1617049302773" MODIFIED="1617550332840" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_857266272" CREATED="1617630942551" MODIFIED="1617630943224"/>
</node>
</node>
</node>
<node TEXT="Web-Image-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_52705290" CREATED="1617458933745" MODIFIED="1617483611414" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Web-Image-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1832326592" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1854623175" CREATED="1616620756952" MODIFIED="1617549856166" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1957298994" CREATED="1617049302773" MODIFIED="1617550333553" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_485435179" CREATED="1617630943232" MODIFIED="1617630943911"/>
</node>
<node TEXT="web Image" ID="ID_589363603" CREATED="1617021692476" MODIFIED="1617405411883">
<node ID="ID_930359615" TREE_ID="ID_1376338644"/>
<node TEXT="Example" ID="ID_403213067" CREATED="1617407105508" MODIFIED="1617407108665">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1859042292" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1133771364" CREATED="1616873748042" MODIFIED="1617635464621" LINK="#ID_1511992597"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1401504687" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_655277107" TREE_ID="ID_99784352">
<node ID="ID_177043671" TREE_ID="ID_1089872481">
<node ID="ID_1283957501" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1826331113" CREATED="1617049302773" MODIFIED="1617550334327" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1474443085" CREATED="1617630943919" MODIFIED="1617630944663"/>
</node>
</node>
</node>
<node TEXT="Link-To-Local-File-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_695451635" CREATED="1617458929666" MODIFIED="1617483612749" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Link-To-Local-File-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1071845525" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1088731070" CREATED="1616620756952" MODIFIED="1617549857199" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_751929797" CREATED="1617049302773" MODIFIED="1617550335038" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_663129690" CREATED="1617630944671" MODIFIED="1617630945540"/>
</node>
<node TEXT="link to local file" ID="ID_967186942" CREATED="1617021732791" MODIFIED="1617405411891">
<node ID="ID_1763905173" TREE_ID="ID_1150239509"/>
<node TEXT="Example" ID="ID_1933103337" CREATED="1617407114473" MODIFIED="1617407116859">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1863010842" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_461775913" CREATED="1616873748042" MODIFIED="1617635465695" LINK="#ID_277975381"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1558795191" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_1392593249" TREE_ID="ID_99784352">
<node ID="ID_684277730" TREE_ID="ID_1089872481">
<node ID="ID_1728862119" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1933690620" CREATED="1617049302773" MODIFIED="1617550335759" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1719103284" CREATED="1617630945548" MODIFIED="1617630946399"/>
</node>
</node>
</node>
<node TEXT="Local-Image-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_669426396" CREATED="1617458933745" MODIFIED="1617483613986" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Local-Image-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1980162262" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1332078115" CREATED="1616620756952" MODIFIED="1617549858398" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_269517419" CREATED="1617049302773" MODIFIED="1617550336537" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_606494488" CREATED="1617630946407" MODIFIED="1617630947167"/>
</node>
<node TEXT="local image" ID="ID_459126336" CREATED="1617021742253" MODIFIED="1617405411898">
<node ID="ID_891449310" TREE_ID="ID_1995019202"/>
<node TEXT="Example" ID="ID_621624181" CREATED="1617407121281" MODIFIED="1617407124224">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1044444914" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_892740839" CREATED="1616873748042" MODIFIED="1617635466747" LINK="#ID_93564966"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_553541981" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_321641447" TREE_ID="ID_99784352">
<node ID="ID_889271636" TREE_ID="ID_1089872481">
<node ID="ID_1443731263" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1471328543" CREATED="1617049302773" MODIFIED="1617550337271" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_835611208" CREATED="1617630947175" MODIFIED="1617630947944"/>
</node>
</node>
</node>
<node TEXT="Ways-to-assign-a-link.md" STYLE_REF="MarkdownHelperNode" ID="ID_1452920882" CREATED="1617652912136" MODIFIED="1617653020786" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Ways-to-assign-a-link.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1386466500" CREATED="1617653026708" MODIFIED="1617655565980">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1149470457" CREATED="1616620756952" MODIFIED="1617549858398" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_186465412" CREATED="1617049302773" MODIFIED="1617550336537" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_475272848" CREATED="1617630946407" MODIFIED="1617630947167"/>
</node>
<node TEXT="Ways to assign a link" ID="ID_662270512" CREATED="1617653070268" MODIFIED="1617653106117">
<node TEXT="There are four MDH node types to transform a link form a node into markdown format" ID="ID_507848226" CREATED="1617653201523" MODIFIED="1617655043512"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1767392712" CREATED="1617653241775" MODIFIED="1617653241911"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="web link" ID="ID_219101854" CREATED="1617653255887" MODIFIED="1617653260535"/>
<node TEXT="web Image" ID="ID_1302134988" CREATED="1617653261497" MODIFIED="1617653265391"/>
<node TEXT="link to local file" ID="ID_659370553" CREATED="1617653266526" MODIFIED="1617653272102"/>
<node TEXT="local Image" ID="ID_368687070" CREATED="1617653273043" MODIFIED="1617653276407"/>
</node>
<node TEXT="All four nodes use the same logic to get the links information by looking at their child nodes." ID="ID_75771283" CREATED="1617653278335" MODIFIED="1617655060935"/>
<node TEXT="In the previous pages we could see the standard way to assign a link, but there are more ways:" ID="ID_872245387" CREATED="1617653372389" MODIFIED="1617655087896"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1343616973" CREATED="1617653534811" MODIFIED="1617653707795">
<icon BUILTIN="emoji-1F522"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="By adding a child to the MDH node" ID="ID_1661571946" CREATED="1617653562960" MODIFIED="1617653575022">
<node TEXT="child with direct link to file" ID="ID_492011616" CREATED="1617643806826" MODIFIED="1617649793081" MIN_WIDTH="5 cm"/>
<node TEXT="child is clone of node with direct link to file" ID="ID_630827377" CREATED="1617643806826" MODIFIED="1617645248163"/>
<node TEXT="child has connector to node  with direct link to file" ID="ID_46812540" CREATED="1617645207438" MODIFIED="1617645348090"/>
<node TEXT="child has link to node  with direct link to file" ID="ID_1697661517" CREATED="1617645207438" MODIFIED="1617645342683"/>
</node>
<node TEXT="Assigning the link directly to the MDH node" ID="ID_1665047306" CREATED="1617653582420" MODIFIED="1617653608822">
<node TEXT="node has connector to node  with direct link to file" ID="ID_1979163453" CREATED="1617645207438" MODIFIED="1617645388681"/>
<node TEXT="node has link to node  with direct link to file" ID="ID_1253542410" CREATED="1617645207438" MODIFIED="1617645365563"/>
</node>
</node>
<node TEXT="The ways to assign a link" ID="ID_445282608" CREATED="1617654083864" MODIFIED="1617655327191">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_815299493" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_43361371" CREATED="1617654285602" MODIFIED="1617654339835" LINK="#ID_1533585553"/>
</node>
</node>
<node TEXT="Animation: Assigning the same image in every possible way" ID="ID_285079941" CREATED="1617653635867" MODIFIED="1617655421991">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1355708114" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_109523405" CREATED="1617654285602" MODIFIED="1617654331093" LINK="#ID_1143746605"/>
</node>
</node>
</node>
<node TEXT="Using the &apos;to be linked&apos; nodes" ID="ID_1366111969" CREATED="1617653108254" MODIFIED="1617655454076">
<node TEXT="As you can see in the upper animation, when adding a child and linking it to a &quot;node with a link&quot;, you get the links information, but the child nodes texts aren&apos;t very helpful." ID="ID_1532088320" CREATED="1617653733291" MODIFIED="1617655498095"/>
<node TEXT="That&apos;s why I added the &apos;to be linked&apos; nodes." ID="ID_1964257990" CREATED="1617653882485" MODIFIED="1617653919770"/>
<node TEXT="They doesn&apos;t add any functionality, but they show in their text the text of the linked node, helping to have a better overview in the map." ID="ID_649912601" CREATED="1617653921477" MODIFIED="1617654142405"/>
<node TEXT="Please look at the following animation for better understanding." ID="ID_1775153748" CREATED="1617654014976" MODIFIED="1617654045014"/>
<node TEXT="The node&apos;s texts update themself" ID="ID_778974328" CREATED="1617653635867" MODIFIED="1617655361113">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1460048240" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_364551109" CREATED="1617654285602" MODIFIED="1617654335234" LINK="#ID_1514218151"/>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_808527818" CREATED="1617049302773" MODIFIED="1617550337271" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_168414202" CREATED="1617630947175" MODIFIED="1617630947944"/>
</node>
</node>
</node>
<node TEXT="List-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1407037290" CREATED="1617458929666" MODIFIED="1617483615354" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/List-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_373461530" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_679972907" CREATED="1616620756952" MODIFIED="1617549859698" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1849166811" CREATED="1617049302773" MODIFIED="1617550338003" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_75186097" CREATED="1617630947951" MODIFIED="1617630948691"/>
</node>
<node TEXT="list" ID="ID_892229846" CREATED="1617021747923" MODIFIED="1617405411904">
<node ID="ID_208846566" TREE_ID="ID_1968544542"/>
<node TEXT="Modifiers" ID="ID_144023087" CREATED="1617485497150" MODIFIED="1617485502355">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_636826169" CREATED="1617022064874" MODIFIED="1617485392601"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1608043155" CREATED="1617022071518" MODIFIED="1617485483335"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 - list items inside this node are going to be numbered
    </p>
    <p>
      
    </p>
    <p>
      $2 - list items inside this node are going to be bulleted
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1405273966" CREATED="1616628376338" MODIFIED="1617485392617" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_40434924" CREATED="1616873748042" MODIFIED="1617635467743" LINK="#ID_1630580039"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1287053397" CREATED="1616628376338" MODIFIED="1617485392625" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_258596863" CREATED="1616873748042" MODIFIED="1617635468781" LINK="#ID_23311262"/>
</node>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_1895295787" CREATED="1617406985979" MODIFIED="1617407012258">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1330727022" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_682438791" CREATED="1616873748042" MODIFIED="1617635469762" LINK="#ID_1810589116"/>
</node>
</node>
<node TEXT="Numbered list - example 1" ID="ID_105609115" CREATED="1617406937808" MODIFIED="1617406964712">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1913839279" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_250671405" CREATED="1616873748042" MODIFIED="1617635470732" LINK="#ID_874556509"/>
</node>
</node>
<node TEXT="Numbered list - example 2" ID="ID_31613875" CREATED="1617406937808" MODIFIED="1617406983292">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_710979356" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_442571545" CREATED="1616873748042" MODIFIED="1617635471764" LINK="#ID_1881998686"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1043605255" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_946919115" TREE_ID="ID_99784352">
<node ID="ID_1861634542" TREE_ID="ID_1089872481">
<node ID="ID_911982464" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_434960867" CREATED="1617049302773" MODIFIED="1617550338726" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1634499536" CREATED="1617630948699" MODIFIED="1617630949401"/>
</node>
</node>
</node>
<node TEXT="Plain-Task-List-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1493636815" CREATED="1617458929666" MODIFIED="1617483616587" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Plain-Task-List-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_815069289" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_138701378" CREATED="1616620756952" MODIFIED="1617549860857" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_375685051" CREATED="1617049302773" MODIFIED="1617550339500" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_979620714" CREATED="1617630949417" MODIFIED="1617630950097"/>
</node>
<node TEXT="plain task list" ID="ID_605109150" CREATED="1617021763735" MODIFIED="1617461199280">
<node ID="ID_1559620646" TREE_ID="ID_321923834"/>
<node TEXT="Modifiers" ID="ID_236114154" CREATED="1617461167607" MODIFIED="1617461178046">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_827043414" CREATED="1617022064874" MODIFIED="1617461037640"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1683551776" CREATED="1617022071518" MODIFIED="1617461420063"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 - This icon marks a node as a task
    </p>
    <p>
      
    </p>
    <p>
      $2 - This icon marks a task node as completed
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1363294655" CREATED="1616628376338" MODIFIED="1617461037653" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1868677313" CREATED="1616873748042" MODIFIED="1617635476364" LINK="#ID_1794146171"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1918971112" CREATED="1616628376338" MODIFIED="1617461037660" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_532029130" CREATED="1616873748042" MODIFIED="1617635473915" LINK="#ID_1831950189"/>
</node>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_278337443" CREATED="1617407130016" MODIFIED="1617407132742">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_697700837" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1026582327" CREATED="1616873748042" MODIFIED="1617635474861" LINK="#ID_1622565705"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1215981961" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_21182144" TREE_ID="ID_99784352">
<node ID="ID_967734235" TREE_ID="ID_1089872481">
<node ID="ID_453960317" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1544365081" CREATED="1617049302773" MODIFIED="1617550340206" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_975679515" CREATED="1617630950104" MODIFIED="1617630950838"/>
</node>
</node>
</node>
<node TEXT="Nested-Task-List-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1973326803" CREATED="1617458933745" MODIFIED="1617483617967" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Nested-Task-List-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_403182541" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1204388281" CREATED="1616620756952" MODIFIED="1617549862095" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_599535322" CREATED="1617049302773" MODIFIED="1617550340919" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1293549300" CREATED="1617630950846" MODIFIED="1617630951523"/>
</node>
<node TEXT="nested task list" ID="ID_1963577249" CREATED="1617021773702" MODIFIED="1617461218469">
<node ID="ID_1256619235" TREE_ID="ID_1562050628"/>
<node ID="ID_901461118" TREE_ID="ID_236114154">
<node ID="ID_707985292" TREE_ID="ID_827043414">
<node ID="ID_609983130" TREE_ID="ID_1683551776">
<node ID="ID_114361829" TREE_ID="ID_1363294655">
<node ID="ID_507975208" TREE_ID="ID_1868677313"/>
</node>
<node ID="ID_1255067065" TREE_ID="ID_1918971112">
<node ID="ID_145194793" TREE_ID="ID_532029130"/>
</node>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_853909907" CREATED="1617407160603" MODIFIED="1617407163731">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_358113692" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_974890573" CREATED="1616873748042" MODIFIED="1617635484817" LINK="#ID_1991987286"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_136750438" CREATED="1617486640744" MODIFIED="1617486640821"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_1416369951" TREE_ID="ID_99784352">
<node ID="ID_911080275" TREE_ID="ID_1089872481">
<node ID="ID_835391573" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_335611901" CREATED="1617049302773" MODIFIED="1617550341633" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_815139691" CREATED="1617630951530" MODIFIED="1617630952197"/>
</node>
</node>
</node>
<node TEXT="Table-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1815573524" CREATED="1617458929666" MODIFIED="1617483619222" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Table-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_931679234" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_782197238" CREATED="1616620756952" MODIFIED="1617549863183" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_601469136" CREATED="1617049302773" MODIFIED="1617550342424" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_542794445" CREATED="1617630952205" MODIFIED="1617630952876"/>
</node>
<node TEXT="table" ID="ID_191131104" CREATED="1617021785969" MODIFIED="1617461399179">
<node ID="ID_1004562894" TREE_ID="ID_414157073"/>
<node TEXT="Modifiers" ID="ID_1600799966" CREATED="1617461445293" MODIFIED="1617461448619">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1781690651" CREATED="1617022064874" MODIFIED="1617461251282"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1655437995" CREATED="1617022071518" MODIFIED="1617461374958"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 - Align column centered
    </p>
    <p>
      
    </p>
    <p>
      $2 - Align column to the right
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1632860379" CREATED="1616628376338" MODIFIED="1617461251298" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1661747788" CREATED="1616873748042" MODIFIED="1617635485795" LINK="#ID_215172306"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1276163101" CREATED="1616628376338" MODIFIED="1617461251305" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_588792360" CREATED="1616873748042" MODIFIED="1617635486846" LINK="#ID_920768424"/>
</node>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_1396069728" CREATED="1617407176798" MODIFIED="1617407179842">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1351634586" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_472916951" CREATED="1616873748042" MODIFIED="1617635488122" LINK="#ID_608624469"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1087678156" CREATED="1617486917934" MODIFIED="1617486918021"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_1862755344" TREE_ID="ID_99784352">
<node ID="ID_16140360" TREE_ID="ID_1089872481">
<node ID="ID_1086917165" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_516554286" CREATED="1617049302773" MODIFIED="1617550343159" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1838771445" CREATED="1617630952884" MODIFIED="1617630953599"/>
</node>
</node>
</node>
<node TEXT="Code-Block-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_304858143" CREATED="1617458933745" MODIFIED="1617483620483" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Code-Block-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_478020164" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1103001484" CREATED="1616620756952" MODIFIED="1617549864200" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1570990277" CREATED="1617049302773" MODIFIED="1617550343884" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1352369139" CREATED="1617630953606" MODIFIED="1617630954272"/>
</node>
<node TEXT="code block" ID="ID_1699446565" CREATED="1617021797007" MODIFIED="1617405411923">
<node ID="ID_324714799" TREE_ID="ID_1719308891"/>
<node TEXT="Rules" ID="ID_341843650" CREATED="1617461478270" MODIFIED="1617462022127">
<node TEXT="The &apos;code block&apos; node looks for its first child that fulfills this rules:" ID="ID_625911851" CREATED="1617461520579" MODIFIED="1617461607582"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1561893391" CREATED="1617461619959" MODIFIED="1617461620750"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="node&apos;s details starts with a dot &apos;.&apos;" ID="ID_176365765" CREATED="1617461624101" MODIFIED="1617461699286"/>
<node TEXT="it has a note" ID="ID_247716240" CREATED="1617461677212" MODIFIED="1617461684569"/>
</node>
<node TEXT="and translates its content this way:" ID="ID_864210890" CREATED="1617461717468" MODIFIED="1617461737913"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_599457691" CREATED="1617461742052" MODIFIED="1617461742165"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="takes the node&apos;s text as &quot;title&quot; of the code shown" ID="ID_820083568" CREATED="1617461744250" MODIFIED="1617461799785"/>
<node TEXT="uses the first word after the dot in the details as the language of the code block" ID="ID_1708721834" CREATED="1617461801841" MODIFIED="1617461866337"/>
<node TEXT="uses the text in the node as the code" ID="ID_279852421" CREATED="1617461851635" MODIFIED="1617461860658"/>
</node>
</node>
<node TEXT="code block" STYLE_REF="MarkdownHelperNode" ID="ID_1424818165" CREATED="1617462177270" MODIFIED="1617470221429">
<icon BUILTIN="emoji-26D4"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.codeBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="how the code block is builded" ID="ID_1459213408" CREATED="1617462011012" MODIFIED="1617462323336"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>Code: **&apos;[node&apos;s text]&apos;**

```language
[node&apos;s note]
```</text>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .text
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Example code" ID="ID_248284354" CREATED="1617470252945" MODIFIED="1617470258690">
<node TEXT="example code" ID="ID_1159825936" CREATED="1617462011012" MODIFIED="1617470239078"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>Code: \*\*&apos;[node&apos;s text]&apos;\*\*

\```language

[node&apos;s note]

\```</text>
</richcontent>
<richcontent CONTENT-TYPE="plain/" TYPE="DETAILS"/>
</node>
</node>
<node TEXT="Example" ID="ID_1659998585" CREATED="1617407184185" MODIFIED="1617407187320">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1768291547" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1682057378" CREATED="1616873748042" MODIFIED="1617635489441" LINK="#ID_1403255199"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_500788112" CREATED="1617486927717" MODIFIED="1617486927803"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_1064040108" TREE_ID="ID_99784352">
<node ID="ID_898208962" TREE_ID="ID_1089872481">
<node ID="ID_817017432" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_957554529" CREATED="1617049302773" MODIFIED="1617550344653" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1795410370" CREATED="1617630954283" MODIFIED="1617630954951"/>
</node>
</node>
</node>
<node TEXT="Text-Block-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_369712842" CREATED="1617458929666" MODIFIED="1617483621721" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Text-Block-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1101142281" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1879397448" CREATED="1616620756952" MODIFIED="1617549865166" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1434673202" CREATED="1617049302773" MODIFIED="1617550345384" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_615662920" CREATED="1617630954958" MODIFIED="1617630955625"/>
</node>
<node TEXT="text block" ID="ID_666019421" CREATED="1617021807464" MODIFIED="1617405411926">
<node ID="ID_947422584" TREE_ID="ID_1332466658"/>
<node TEXT="Example" ID="ID_21527120" CREATED="1617407212225" MODIFIED="1617407215067">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_101004085" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_739779023" CREATED="1616873748042" MODIFIED="1617635490582" LINK="#ID_773557304"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1941125083" CREATED="1617486937354" MODIFIED="1617486937439"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_1398508276" TREE_ID="ID_99784352">
<node ID="ID_594388218" TREE_ID="ID_1089872481">
<node ID="ID_1958800403" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_437369562" CREATED="1617049302773" MODIFIED="1617550346090" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1259741911" CREATED="1617630955632" MODIFIED="1617630956372"/>
</node>
</node>
</node>
<node TEXT="Comment-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_903601228" CREATED="1617458933745" MODIFIED="1617483623075" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Comment-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1864531601" CREATED="1617206940753" MODIFIED="1617319119535">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1991880192" CREATED="1616620756952" MODIFIED="1617549866148" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1370368821" CREATED="1617049302773" MODIFIED="1617550346796" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1596185430" CREATED="1617630956380" MODIFIED="1617630957074"/>
</node>
<node TEXT="comment" ID="ID_1649775184" CREATED="1617021829704" MODIFIED="1617405411930">
<node ID="ID_1047032463" TREE_ID="ID_1011349463"/>
<node TEXT="Example" ID="ID_1449955968" CREATED="1617407222942" MODIFIED="1617407226206">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_891030534" CREATED="1616628376338" MODIFIED="1617197971821" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1357679536" CREATED="1616873748042" MODIFIED="1617635491622" LINK="#ID_1620682938"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1539142773" CREATED="1617486945916" MODIFIED="1617486946006"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node ID="ID_39089921" TREE_ID="ID_99784352">
<node ID="ID_1790045338" TREE_ID="ID_1089872481">
<node ID="ID_276351527" TREE_ID="ID_625629302"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_334188655" CREATED="1617049302773" MODIFIED="1617550347570" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1509352092" CREATED="1617630957081" MODIFIED="1617630957754"/>
</node>
</node>
</node>
</node>
<node TEXT="Extras.md" STYLE_REF="MarkdownHelperNode" ID="ID_502227104" CREATED="1617110939773" MODIFIED="1617654861567" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Extras.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="false"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea Descartada" FOLDED="true" ID="ID_207765965" CREATED="1617069044376" MODIFIED="1617660342596">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1178455116" CREATED="1616620756952" MODIFIED="1617549867217" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1181557468" CREATED="1617049302773" MODIFIED="1617550348377" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_211161092" CREATED="1617630957762" MODIFIED="1617630958441"/>
</node>
<node TEXT="docsInside" ID="ID_1743066839" CREATED="1616620756952" MODIFIED="1617550103440" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Table of Contents" ID="ID_1009196896" CREATED="1617654809411" MODIFIED="1617654818518">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_1594675683" CREATED="1617654805043" MODIFIED="1617659092011">
<attribute NAME="TOClevels" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="TOCindent" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.TOC(node)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="locked" STYLE_REF="locked" ID="ID_325892462" CREATED="1617660395859" MODIFIED="1617660415780">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="Jump to Markdown Document and back" FOLDED="true" ID="ID_1003452445" CREATED="1617640196205" MODIFIED="1617660407605">
<node ID="ID_442686995" TREE_ID="ID_429477830">
<node ID="ID_1884423662" TREE_ID="ID_1106593427"/>
</node>
<node ID="ID_969504543" TREE_ID="ID_815671628"/>
<node TEXT="Example" ID="ID_1999671309" CREATED="1617111685569" MODIFIED="1617654786605">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_62241626" CREATED="1617654781304" MODIFIED="1617654781459"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_822394115" CREATED="1617654285602" MODIFIED="1617654310428" LINK="#ID_1650791776"/>
</node>
</node>
</node>
<node TEXT="Export as node" FOLDED="true" ID="ID_15714015" CREATED="1617640236954" MODIFIED="1617660407656">
<node ID="ID_1691048020" TREE_ID="ID_1190915897">
<node ID="ID_116629300" TREE_ID="ID_937000663"/>
</node>
<node ID="ID_189618531" TREE_ID="ID_1886394757"/>
<node ID="ID_970378712" TREE_ID="ID_999628118"/>
<node TEXT="Example: exporting a NDH list" ID="ID_1791641259" CREATED="1617654678332" MODIFIED="1617654700340">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1015297961" CREATED="1617654652577" MODIFIED="1617654652741"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_969241007" CREATED="1617654285602" MODIFIED="1617654316707" LINK="#ID_1723344385"/>
</node>
</node>
<node TEXT="Example: exporting a MDH Doc" ID="ID_144213486" CREATED="1617111685569" MODIFIED="1617654722154">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1998484635" CREATED="1617654657152" MODIFIED="1617654657294"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1544974769" CREATED="1617654285602" MODIFIED="1617654320972" LINK="#ID_135925025"/>
</node>
</node>
</node>
<node TEXT="Save as File" FOLDED="true" ID="ID_18241291" CREATED="1617640277406" MODIFIED="1617660407703">
<node ID="ID_1986470523" TREE_ID="ID_1925529429">
<node ID="ID_1067258859" TREE_ID="ID_1972414744"/>
</node>
<node ID="ID_1389650530" TREE_ID="ID_1014715066"/>
<node ID="ID_774338190" TREE_ID="ID_232736594"/>
<node TEXT="Example" ID="ID_1202177096" CREATED="1617111685569" MODIFIED="1617654631775">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1268306553" CREATED="1617654594641" MODIFIED="1617654594786"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1348008523" CREATED="1617654285602" MODIFIED="1617654325279" LINK="#ID_1353656225"/>
</node>
</node>
</node>
<node TEXT="Define base folder path" FOLDED="true" ID="ID_1957296082" CREATED="1617640309998" MODIFIED="1617660407753">
<node ID="ID_129946716" TREE_ID="ID_1368549179">
<node ID="ID_1271232912" TREE_ID="ID_178050385"/>
</node>
<node ID="ID_21592862" TREE_ID="ID_569136296"/>
<node ID="ID_996712979" TREE_ID="ID_191864898"/>
<node TEXT="Example" STYLE_REF="Tarea pendiente" ID="ID_1471216478" CREATED="1617111685569" MODIFIED="1617640523596"/>
</node>
<node TEXT="Help" FOLDED="true" ID="ID_1692793679" CREATED="1617640374305" MODIFIED="1617660407794">
<node ID="ID_831961113" TREE_ID="ID_661017996">
<node ID="ID_1900759303" TREE_ID="ID_1378301212"/>
</node>
<node ID="ID_1029735664" TREE_ID="ID_1760466771"/>
<node ID="ID_437282596" TREE_ID="ID_478708737"/>
</node>
<node TEXT="Insert &apos;to be linked&apos; node" FOLDED="true" ID="ID_202537644" CREATED="1617640385254" MODIFIED="1617660407837">
<node ID="ID_336636353" TREE_ID="ID_863602145">
<node ID="ID_1270248234" TREE_ID="ID_1039538830"/>
</node>
<node ID="ID_1318678558" TREE_ID="ID_108911097"/>
<node ID="ID_958696286" TREE_ID="ID_859552238"/>
<node ID="ID_660241925" TREE_ID="ID_649912601"/>
<node ID="ID_851961970" TREE_ID="ID_1775153748"/>
<node ID="ID_35814534" TREE_ID="ID_778974328">
<node ID="ID_578974397" TREE_ID="ID_1460048240">
<node ID="ID_841736620" TREE_ID="ID_364551109"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_119416677" CREATED="1617049302773" MODIFIED="1617550349120" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1008359219" CREATED="1617630958455" MODIFIED="1617630959164"/>
</node>
</node>
</node>
<node TEXT="URI-management.md" STYLE_REF="MarkdownHelperNode" ID="ID_1832804564" CREATED="1617655634945" MODIFIED="1617655684311" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/URI-management.md">
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
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
<node TEXT="content" STYLE_REF="Tarea Descartada" FOLDED="true" ID="ID_597639917" CREATED="1617659363167" MODIFIED="1617660459503">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_875095684" CREATED="1616620756952" MODIFIED="1617549867217" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo currentLocation
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_686754974" CREATED="1617049302773" MODIFIED="1617550348377" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_141371047" CREATED="1617630957762" MODIFIED="1617630958441"/>
</node>
<node TEXT="docsInside" ID="ID_1219415595" CREATED="1616620756952" MODIFIED="1617550103440" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo docsInside
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Work on progress" ID="ID_1108384199" CREATED="1617659391455" MODIFIED="1617659401268">
<node TEXT="casos especiales Local" STYLE_REF="Tarea pendiente" ID="ID_1623848991" CREATED="1617633056663" MODIFIED="1617633078817"/>
<node TEXT="diferentes posibilidades de parametros de Link to Local FIle e ImageFile" STYLE_REF="Tarea pendiente" ID="ID_1494002374" CREATED="1617633083239" MODIFIED="1617633241916"/>
</node>
<node TEXT="previousAndNext" ID="ID_1890408692" CREATED="1617049302773" MODIFIED="1617550349120" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
    <p>
      
    </p>
    <p>
      //cambio masivo previousAndNext
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_426041356" CREATED="1617630958455" MODIFIED="1617630959164"/>
</node>
</node>
</node>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1079685359" CREATED="1616675051000" MODIFIED="1617663683491">
<attribute NAME="log_MDI" VALUE="No"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2021-04-05&nbsp;&nbsp;18:10:43
    </p>
    <p>
      
    </p>
    <p>
      ------- Files: --------&nbsp;
    </p>
    <p>
      &nbsp;0 node(s) pointing to unexisting/filtered files (marked as 'broken')
    </p>
    <p>
      &nbsp;0 link(s) corrected in nodes
    </p>
    <p>
      &nbsp;0 new file(s) imported as node(s)&nbsp;
    </p>
    <p>
      &nbsp;0 node(s) moved/renamed in drive
    </p>
    <p>
      
    </p>
    <p>
      ------- Folders: --------&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      4.3 seconds
    </p>
    <p>
      
    </p>
    <p>
      =====================================
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="scripts apoyo" ID="ID_1658831433" CREATED="1616702801988" MODIFIED="1616702807250">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1485102649" CREATED="1616628376338" MODIFIED="1617290992156" BACKGROUND_COLOR="#0000cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/master/&apos;)</text>
</richcontent>
</node>
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_1017003729" CREATED="1616678955930" MODIFIED="1617290992990" BACKGROUND_COLOR="#0000cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.fileLink(node,&apos;../raw/master/&apos;) </text>
</richcontent>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1441566027" CREATED="1616628376338" MODIFIED="1617290993202" BACKGROUND_COLOR="#0099cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/v0.1.0/&apos;)</text>
</richcontent>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_604396937" CREATED="1616628376338" MODIFIED="1617290993408" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
</node>
<node TEXT="scripts" ID="ID_1363289282" CREATED="1617488565489" MODIFIED="1617488570250">
<node TEXT="tomar texto de nodo linkeado" ID="ID_1446645901" CREATED="1616873313551" MODIFIED="1617488546452"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def nodos = c.selecteds
    </p>
    <p>
      nodos.each{nodo -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def n = nodo.connectorsOut.target.find{it.link.file}?:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// primer &quot;nodo con link a file&quot; conectado desde nodo
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nodo.link?.node&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// &quot;nodo con link a file&quot; linkeado desde nodo
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;if (n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nodo.text = n.text
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
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
  </body>
</html></richcontent>
</node>
<node TEXT="generador de blabla" ID="ID_1226377477" CREATED="1616702809016" MODIFIED="1617206565487"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // generador blabla
    </p>
    <p>
      
    </p>
    <p>
      rnd = new Random()
    </p>
    <p>
      
    </p>
    <p>
      node.note = blabla()
    </p>
    <p>
      
    </p>
    <p>
      def blabla(){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def b = 'bla'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nP = 6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// n Párrafos
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nO = 8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// nOraciones
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nW = 12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// nPalabras
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def nS = 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// nSilabas
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto = new StringBuilder()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;for(def i = 1; i&lt;=r(nP); i++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(def j = r(nO); j&gt;=0; j--){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; 'Bla'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(def l = 2; l&lt;=r(nS); l++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; b
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; 'h '
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(def k = 1; k&lt;=r(nW); k++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def bold = (r(10)&gt;8)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; ' ' &lt;&lt; (bold?'**':'')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(def l = 1; l&lt;=r(nS); l++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; b&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; (bold?'h**':'h')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; (j==0 || r(10)&gt;5?'. ':', ')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; '\n\n'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return texto.toString().trim()
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def r(i){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;rnd.nextInt(i)+1
    </p>
    <p>
      }
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
  </body>
</html></richcontent>
<node TEXT="bla" ID="ID_539291308" CREATED="1617205369870" MODIFIED="1617206476841"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Blablah&nbsp;&nbsp;blablablah, Blablah&nbsp;&nbsp;**blablah** blablablablah blablablah blablah, Blablah&nbsp;&nbsp;blablablah **blablah** blah, Blablah&nbsp;&nbsp;blablah. Blah&nbsp;&nbsp;**blah** blablablah.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Blah&nbsp;&nbsp;**blablah** blablah **blablah** blah blah. Blablablah&nbsp;&nbsp;blablah blablah blah blah **blablablablah** **blah**. Blablah&nbsp;&nbsp;blablah blah blablablablah blah **blablablablah** blablah blablablah, Blah&nbsp;&nbsp;blablah blablablah **blah** blablablah, Blah&nbsp;&nbsp;blablablah blablah blah blablah blablablah **blablah** **blablablah** blablablah, Blablablah&nbsp;&nbsp;blablah **blablah** blablablah blablah. Blablah&nbsp;&nbsp;**blablablah** blablah blablablah blah.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Blablah&nbsp;&nbsp;blah blah blah blablablah blablah, Blablah&nbsp;&nbsp;blablah blablablah **blah**. Blah&nbsp;&nbsp;blablablah blah blablah **blah** blablah blablablablah **blablablablah** **blablah**. Blablah&nbsp;&nbsp;blablablablah **blah** blah blablablah **blablah** **blablablah** blablablah, Blablah&nbsp;&nbsp;blablablablah, Blablah&nbsp;&nbsp;blablablah blablah **blablah** blablablah blah.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="forzar type markdown a nodos con estilo &apos;MarkdownHelperNode&apos; bajo nodo seleccionado" ID="ID_1321457767" CREATED="1617223665609" MODIFIED="1617488550065"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def nodos = node.find{it.hasStyle('MarkdownHelperNode')}
    </p>
    <p>
      
    </p>
    <p>
      //(des)comentar o modificar linea siguiente para especificar que grupo de nodos modificar
    </p>
    <p>
      nodos = nodos.findAll{it.text.endsWith('.md')}
    </p>
    <p>
      
    </p>
    <p>
      nodos*.noteContentType = 'markdown'
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
  </body>
</html></richcontent>
</node>
<node TEXT="Toma texto de hijo para título markdown doc" ID="ID_997419723" CREATED="1617462628959" MODIFIED="1617488551537"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def nodos = c.selecteds
    </p>
    <p>
      
    </p>
    <p>
      nodos.each{nodo -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto = nodo.children[0].text.split(' ').collect{ it.toLowerCase().capitalize() }.join('-') + &quot;-example.md&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodo.text = texto
    </p>
    <p>
      }
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
  </body>
</html></richcontent>
</node>
<node TEXT="guardar md docs de rama" ID="ID_393300812" CREATED="1617464331473" MODIFIED="1617466423301"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import edofro.MarkDownHelper.MarkdownDialog
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def nodo = node
    </p>
    <p>
      
    </p>
    <p>
      def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith('.md') &amp;&amp; !it.text.startsWith('_') }
    </p>
    <p>
      def docNodes = nodo.find(isMDDoc)
    </p>
    <p>
      def j=0
    </p>
    <p>
      
    </p>
    <p>
      docNodes.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;j += MarkdownDialog.saveFile(n, true)&nbsp;&nbsp;// saveFile(nodo, overwriteConfirmed)
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      return j
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
  </body>
</html></richcontent>
<node TEXT="no funciona. genera errores" ID="ID_1768617856" CREATED="1617466423283" MODIFIED="1617466431898"/>
<node TEXT="al parecer es un tema que recalcula formuals entre grabación y grabación y se enreda" ID="ID_1231995327" CREATED="1617466432284" MODIFIED="1617466458137"/>
</node>
<node TEXT="guarda doc y selecciona siguiente" ID="ID_420232279" CREATED="1617466880517" MODIFIED="1617483562526"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import edofro.MarkDownHelper.MarkdownDialog
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
    </p>
    <p>
      def baseUri = baseNode.link.uri.toString()
    </p>
    <p>
      
    </p>
    <p>
      def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith('.md') /* &amp;&amp; !it.text.startsWith('_') */ }
    </p>
    <p>
      
    </p>
    <p>
      def pathToRootDocNodes = node.pathToRoot.findAll(isMDDoc)
    </p>
    <p>
      def thisDocNode = pathToRootDocNodes?pathToRootDocNodes[-1]:null
    </p>
    <p>
      if(!thisDocNode) return 'no se encontró MdDoc'
    </p>
    <p>
      def j
    </p>
    <p>
      if(node == thisDocNode){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;j = MarkdownDialog.saveFile(thisDocNode, true)
    </p>
    <p>
      } else {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;c.select(thisDocNode)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return 'no guardado, sólo seleccionado'
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def docNodes = baseNode.find(isMDDoc)
    </p>
    <p>
      def pos = docNodes.indexOf(thisDocNode)
    </p>
    <p>
      
    </p>
    <p>
      //def prevDocNode = pos&gt;0?docNodes[pos - 1]:null
    </p>
    <p>
      def nextDocNode = pos&lt;docNodes.size()?docNodes[pos + 1]:null
    </p>
    <p>
      
    </p>
    <p>
      if (nextDocNode) c.select(nextDocNode)
    </p>
    <p>
      
    </p>
    <p>
      return 'hecho: ' + j
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
  </body>
</html></richcontent>
</node>
<node TEXT="cambio masivo de nodos con formulas a nodos con librería" ID="ID_1793854044" CREATED="1617549911648" MODIFIED="1617550517584"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def nodos = node.find{it.text == 'doc structure v2'}
    </p>
    <p>
      def command = 'currentLocation'
    </p>
    <p>
      
    </p>
    <p>
      //def nodos = c.selecteds
    </p>
    <p>
      //c.select(nodos)
    </p>
    <p>
      
    </p>
    <p>
      def j=0
    </p>
    <p>
      nodos.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.text = command
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.icons.add('emoji-1F343')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.noteText = &quot;= edofro.MarkDownHelper.WikiTools.${command}(node)\n\n//cambio masivo ${command}&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.noteContentType = 'markdown'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;j++
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      return j
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
  </body>
</html></richcontent>
</node>
<node TEXT="cambio masivo de nodos &apos;to be linked to Node with file&apos;" ID="ID_263515468" CREATED="1617551409465" MODIFIED="1617551469871"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def condicion = {n -&gt; n.text.contains('to be linked to node with file')}
    </p>
    <p>
      
    </p>
    <p>
      def nodos = node.find(condicion)
    </p>
    <p>
      
    </p>
    <p>
      def j=0
    </p>
    <p>
      
    </p>
    <p>
      // lo limité a sólo primer item por si acaso había clones y no me quise arriesgar. Preferí repetirlo multiples veces hasta que el resultado fuera 0
    </p>
    <p>
      // no sé si hubiese funcionado bien sin esto. seguramente sí, pero no lo comprobé
    </p>
    <p>
      nodos[0].each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.text =&quot;= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) \n\n// cambio masivo nodos 'to be linked to node with File'&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.icons.add('emoji-1F343')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;j++
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      return j
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
  </body>
</html></richcontent>
</node>
<node TEXT="cerrar nodos &apos;content&apos;" ID="ID_552781098" CREATED="1617561409605" MODIFIED="1617630517284"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // cerrar nodos 'content'
    </p>
    <p>
      node.find{it.text == 'content'}*.folded = true
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="agregar hijo a nodos previousAndNext" ID="ID_751629098" CREATED="1617632718581" MODIFIED="1617632746439"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // cerrar nodos 'content'
    </p>
    <p>
      def nodos = node.find{it.text == 'previousAndNext'}
    </p>
    <p>
      nodos.findAll{it.children.size()==0}*.createChild('-----')
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="cambiar formato nodos linkedNodeText" ID="ID_1547578702" CREATED="1617642758122" MODIFIED="1617642778229"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def condicion = { n -&gt; n.text.contains('edofro.MarkDownHelper.MDH.linkedNodeText') &amp;&amp; n.style.name != 'MarkdownHelperLink' }
    </p>
    <p>
      
    </p>
    <p>
      def nodos=node.find(condicion)
    </p>
    <p>
      
    </p>
    <p>
      //def iconos = [] as Set
    </p>
    <p>
      
    </p>
    <p>
      nodos.each{n -&gt;
    </p>
    <p>
      //&nbsp;&nbsp;&nbsp;&nbsp;iconos &lt;&lt; n.icons.icons
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.icons.clear()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.style.name = 'MarkdownHelperLink'
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      return nodos.size()
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="cambiar fileLinksRelative a true o false" ID="ID_500468903" CREATED="1617659779283" MODIFIED="1617660081306"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def att = 'fileLinksRelative'
    </p>
    <p>
      
    </p>
    <p>
      def a = 0
    </p>
    <p>
      def opcion = a==1?true:false
    </p>
    <p>
      
    </p>
    <p>
      def nodos = node.find{n -&gt; n.attributes.containsKey(att)}
    </p>
    <p>
      
    </p>
    <p>
      nodos.each{n -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n[att] = opcion
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //fileLinksRelative&nbsp;&nbsp;&nbsp;&nbsp;true
    </p>
  </body>
</html>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="MDH" STYLE_REF="Tarea finalizada" ID="ID_990523897" CREATED="1617631220327" MODIFIED="1617636121928">
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) //pprob&#xa;//xxxx" STYLE_REF="MarkdownHelperLink" ID="ID_53296978" CREATED="1616873748042" MODIFIED="1617635175903" LINK="#ID_462044149"/>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1805852082" CREATED="1617633332102" MODIFIED="1617635176350" LINK="#ID_598044806"/>
</node>
<node TEXT="WikiTools" STYLE_REF="Tarea pendiente" ID="ID_138969719" CREATED="1617488968624" MODIFIED="1617636124952">
<node TEXT="Agregar estos nodos a dialogo WikiTools" STYLE_REF="Siguiente tarea" ID="ID_1053826906" CREATED="1617660598868" MODIFIED="1617660628283"/>
<node TEXT="currentLocation" ID="ID_1889830071" CREATED="1616873748042" MODIFIED="1617545815178" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
    <p>
      //prueba
    </p>
  </body>
</html></richcontent>
<node TEXT="where are we:" ID="ID_1355070808" CREATED="1617490871938" MODIFIED="1617490889330"/>
<node TEXT="----" ID="ID_1642671536" CREATED="1617490890029" MODIFIED="1617490896471"/>
</node>
<node TEXT="docsInside" ID="ID_510256750" CREATED="1616873748042" MODIFIED="1617545801414" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
    <p>
      //prueba
    </p>
  </body>
</html></richcontent>
<node TEXT="Pages:" ID="ID_494983069" CREATED="1617492248011" MODIFIED="1617545883377"/>
<node TEXT="----" ID="ID_51267757" CREATED="1617492253669" MODIFIED="1617492256197"/>
</node>
<node TEXT="topDocsList" ID="ID_1943543754" CREATED="1616873748042" MODIFIED="1617546252554" BACKGROUND_COLOR="#ffcc99"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.topDocsList(node)
//prueba
</text>
</richcontent>
</node>
<node TEXT="structuredDocsList" ID="ID_1924968974" CREATED="1616873748042" MODIFIED="1617546252567" BACKGROUND_COLOR="#ffcc99"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.structuredDocsList(node)
//prueba
</text>
</richcontent>
</node>
<node TEXT="linkToWikipage" ID="ID_720822359" CREATED="1616873748042" MODIFIED="1617546284571" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1562104311" CREATED="1616873748042" MODIFIED="1617546399455" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.previousAndNext(node)
// prueba</text>
</richcontent>
<node TEXT="continuar:" ID="ID_559415795" CREATED="1617546434132" MODIFIED="1617546445292"/>
<node TEXT="bye!" ID="ID_411539975" CREATED="1617546451310" MODIFIED="1617546455860"/>
</node>
</node>
</node>
</node>
<node TEXT="Freeplane_MarkdownHelper" STYLE_REF="baseFolder" POSITION="right" ID="ID_539998996" CREATED="1616675044234" MODIFIED="1617662236748" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/">
<attribute_layout NAME_WIDTH="98.25 pt" VALUE_WIDTH="98.25 pt"/>
<attribute NAME="nameFilter" VALUE=""/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
    <p>
      
    </p>
    <p>
      ================ MDI =====================
    </p>
    <p>
      
    </p>
    <p>
      The import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node:
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;-- nameFilter:
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A filter to perform on the name of traversed files. If set, only files which match are brought.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This option allowes four types of inputs:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. nothing (empty) means no filtering (default)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/.*\.mp3/
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. 'simplified' regex&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~.*\.mp3
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. string with *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*.mp3&nbsp;&nbsp;&nbsp;&nbsp;(equivalent to regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/(?i).*\.mp3/&nbsp;&nbsp;)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. list of strings with * and ;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- example:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*.mp3;*.png&nbsp;&nbsp;&nbsp;(equivalent to regex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~/(?i)(.*\.mp3|.*\.png)/&nbsp;&nbsp;)
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;-- maxDepth:
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The maximum number of directory levels when recursing
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(default is -1 which means no limit, set to 0 for no recursion)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;-- markWhenMoved:
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;change styles to moved/renamed file Nodes
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;set to:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;0 : to change style only if node hasn't a previous one (default),
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;1 : to allways change the style,
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;-1 : to never change the style
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;-- checkIfReallyBroken:
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Check if existing nodes pointing to filtered files still exist.&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This option is only useful if you defined a nameFilter before&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;but in the map there are also some files that doesn't match&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this filter definition&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(for example if you brought them manually or import them&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;before the actual namefilter setting)&nbsp;&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;- default is 0 which means don't check --&gt; Mark node as missing also if it doesn't match the current filter,
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;- set to 1 to extra check if a not matching file still exists in drive&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ==========================================
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;
    </p>
  </body>
</html></richcontent>
<node TEXT=".git" STYLE_REF="locked" ID="ID_844747112" CREATED="1616675127129" MODIFIED="1616675177962" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/.git/"/>
<node TEXT="MarkdownHelper" ID="ID_1507654983" CREATED="1616675127136" MODIFIED="1616675127140" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/">
<node TEXT="no relevante acá" STYLE_REF="Organizador" FOLDED="true" ID="ID_1780514987" CREATED="1616675998423" MODIFIED="1616676014797">
<node TEXT="locked" STYLE_REF="locked" FOLDED="true" ID="ID_719479184" CREATED="1616675455526" MODIFIED="1616675989195">
<node TEXT=".gradle" ID="ID_97801152" CREATED="1616675127152" MODIFIED="1616675485448" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/.gradle/"/>
<node TEXT="build" ID="ID_1632654840" CREATED="1616675127158" MODIFIED="1616675485470" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/build/"/>
<node TEXT="lib" ID="ID_163701953" CREATED="1616675127324" MODIFIED="1616675485476" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/lib/"/>
<node TEXT="src" ID="ID_140075956" CREATED="1616675127341" MODIFIED="1616675485480" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/src/"/>
</node>
<node TEXT="xx" FOLDED="true" ID="ID_1763961188" CREATED="1616675368888" MODIFIED="1616675971386">
<node TEXT=".gitignore" ID="ID_1842365769" CREATED="1616675250733" MODIFIED="1616676113853" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/.gitignore"/>
<node TEXT="MarkdownHelper-v0.1.0.addon.mm" ID="ID_315700758" CREATED="1616675250741" MODIFIED="1616676113855" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper-v0.1.0.addon.mm"/>
<node TEXT="MarkdownHelper.mm" ID="ID_141786730" CREATED="1616675250753" MODIFIED="1616676113857" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper.mm"/>
<node TEXT="MarkdownHelper.mm.bak" ID="ID_1785208798" CREATED="1616675250765" MODIFIED="1616676113859" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper.mm.bak"/>
<node TEXT="build.gradle" ID="ID_494987974" CREATED="1616675250773" MODIFIED="1616676113860" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/build.gradle"/>
<node TEXT="version.properties" ID="ID_1305958281" CREATED="1616675250780" MODIFIED="1616676113861" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/version.properties"/>
</node>
</node>
<node TEXT="images" ID="ID_1182099985" CREATED="1616675127316" MODIFIED="1616675127321" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/">
<node TEXT="MarkdownHelper-icon.svg" ID="ID_1091536814" CREATED="1616675250602" MODIFIED="1616676113887" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/MarkdownHelper-icon.svg"/>
<node TEXT="MarkdownHelper-screenshot-1.png" ID="ID_1552923571" CREATED="1616675250612" MODIFIED="1616676113893" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/MarkdownHelper-screenshot-1.png"/>
<node TEXT="MarkdownHelper.png" ID="ID_1890520642" CREATED="1616675250620" MODIFIED="1616676113898" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/MarkdownHelper.png"/>
<node TEXT="MarkdownHelper(100x63).png" ID="ID_1305936608" CREATED="1617052122135" MODIFIED="1617052157344" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/MarkdownHelper(100x63).png"/>
</node>
<node TEXT="scripts" FOLDED="true" ID="ID_1028109873" CREATED="1616675127331" MODIFIED="1616676056631" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/">
<node TEXT="rebuildMarkdownHelperDialog.groovy" ID="ID_1281777088" CREATED="1616675250654" MODIFIED="1616676113861" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/rebuildMarkdownHelperDialog.groovy"/>
<node TEXT="showLinkedImageAsDetails.groovy" ID="ID_1377142652" CREATED="1616675250663" MODIFIED="1616676113872" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/showLinkedImageAsDetails.groovy"/>
<node TEXT="showLinkedImageAsNote.groovy" ID="ID_580106851" CREATED="1616675250672" MODIFIED="1616676113879" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/showLinkedImageAsNote.groovy"/>
<node TEXT="showMarkdownHelperDialog.groovy" ID="ID_772887423" CREATED="1616675250682" MODIFIED="1616676113884" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/showMarkdownHelperDialog.groovy"/>
</node>
<node TEXT="zips" FOLDED="true" ID="ID_1699371995" CREATED="1616675127367" MODIFIED="1616675127371" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/">
<node TEXT="doc" ID="ID_1371431375" CREATED="1616675127375" MODIFIED="1616675127379" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/doc/">
<node TEXT="MarkdownHelper" ID="ID_807755283" CREATED="1616675127382" MODIFIED="1616675127386" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/doc/MarkdownHelper/"/>
</node>
<node TEXT="templates" ID="ID_507287786" CREATED="1616675127388" MODIFIED="1616675127392" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/">
<node TEXT="MarkdownHelper" ID="ID_1353506768" CREATED="1616675127395" MODIFIED="1616675127399" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/MarkdownHelper/">
<node TEXT="MarkdownHelper template.mm" ID="ID_421285328" CREATED="1616675250723" MODIFIED="1616676113901" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/MarkdownHelper/MarkdownHelper%20template.mm"/>
</node>
</node>
</node>
</node>
<node TEXT="ignore" ID="ID_557684061" CREATED="1616675127402" MODIFIED="1616675127406" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/"/>
<node TEXT="resources" ID="ID_537134883" CREATED="1616675127409" MODIFIED="1616675127413" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/">
<node TEXT="MarkdownHelper (inkscape).svg" ID="ID_1439494555" CREATED="1616675250809" MODIFIED="1616676113906" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/MarkdownHelper%20(inkscape).svg"/>
<node TEXT="icons" FOLDED="true" ID="ID_1919038751" CREATED="1616687625827" MODIFIED="1616687625832" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/">
<node TEXT="mostrar detalles : alt + F2" ID="ID_145131732" CREATED="1616687694619" MODIFIED="1616687705272"/>
<node ID="ID_592300335" TREE_ID="ID_764465307"/>
<node ID="ID_271616567" TREE_ID="ID_1055771673"/>
<node ID="ID_399460055" TREE_ID="ID_1361113556"/>
<node ID="ID_690642508" TREE_ID="ID_846704092"/>
<node ID="ID_381377435" TREE_ID="ID_1647115959"/>
<node ID="ID_1582843978" TREE_ID="ID_413807381"/>
<node ID="ID_1416402004" TREE_ID="ID_1630580039"/>
<node ID="ID_1633104826" TREE_ID="ID_23311262"/>
<node ID="ID_1342536234" TREE_ID="ID_215172306"/>
<node ID="ID_1004202993" TREE_ID="ID_920768424"/>
<node ID="ID_1314835537" TREE_ID="ID_1050715986"/>
<node ID="ID_179748363" TREE_ID="ID_1794146171"/>
<node ID="ID_428787796" TREE_ID="ID_1831950189"/>
<node ID="ID_1870561780" TREE_ID="ID_1106593427"/>
<node ID="ID_792334664" TREE_ID="ID_1972414744"/>
<node ID="ID_122600027" TREE_ID="ID_178050385"/>
<node ID="ID_1296524444" TREE_ID="ID_937000663"/>
<node ID="ID_113961659" TREE_ID="ID_1378301212"/>
<node TEXT="FP Icon 020.png" ID="ID_828967076" CREATED="1617637618659" MODIFIED="1617637649704" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20020.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Dialog" FOLDED="true" ID="ID_571522914" CREATED="1616698266055" MODIFIED="1616698287422" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/">
<node TEXT="MD Dialog.png" ID="ID_686316564" CREATED="1616696879063" MODIFIED="1616698287433" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/MD%20Dialog.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Dialog 1 2 3.png" ID="ID_1930852978" CREATED="1616698136717" MODIFIED="1616698287438" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%201%202%203.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1348594118" TREE_ID="ID_1305975695"/>
<node ID="ID_1473149478" TREE_ID="ID_1004620486"/>
<node ID="ID_248582926" TREE_ID="ID_1064538750"/>
</node>
<node TEXT="Examples" STYLE_REF="file_folder" FOLDED="true" ID="ID_229880131" CREATED="1617119845116" MODIFIED="1617119860902" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/">
<node TEXT="web link 001.png" ID="ID_932222153" CREATED="1617119947758" MODIFIED="1617119947786" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/web%20link%20001.png"/>
<node TEXT="web link 002.png" ID="ID_1654606312" CREATED="1617119947788" MODIFIED="1617119947816" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/web%20link%20002.png"/>
<node TEXT="web link 003.png" ID="ID_1681402618" CREATED="1617119947818" MODIFIED="1617119947846" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/web%20link%20003.png"/>
<node TEXT="markdownDocument example 001.png" ID="ID_1666300950" CREATED="1617290096856" MODIFIED="1617290128382" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/markdownDocument%20example%20001.png"/>
<node TEXT="markdownDocument example 002.png" ID="ID_628251191" CREATED="1617290096881" MODIFIED="1617290128405" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/markdownDocument%20example%20002.png"/>
<node TEXT="markdownDocument example 003.png" ID="ID_1584384688" CREATED="1617290096905" MODIFIED="1617290128420" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/markdownDocument%20example%20003.png"/>
<node TEXT="MDdoc 01.gif" ID="ID_1688158345" CREATED="1617308473627" MODIFIED="1617308473646" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDdoc%2001.gif"/>
<node TEXT="MDDoc 02.gif" ID="ID_741879942" CREATED="1617317359538" MODIFIED="1617317359585" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2002.gif"/>
<node TEXT="MDDoc 03.gif" ID="ID_999929514" CREATED="1617317359588" MODIFIED="1617317359637" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2003.gif"/>
<node TEXT="MDDoc 04.gif" ID="ID_1497405467" CREATED="1617317359639" MODIFIED="1617317359677" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2004.gif"/>
<node TEXT="MDDoc 05.gif" ID="ID_139387978" CREATED="1617317359684" MODIFIED="1617317359720" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2005.gif"/>
<node TEXT="MDDoc 06.gif" ID="ID_626702459" CREATED="1617317359723" MODIFIED="1617317359767" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2006.gif"/>
<node TEXT="MDDoc 07.gif" ID="ID_1869821183" CREATED="1617317359771" MODIFIED="1617317359822" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2007.gif"/>
<node TEXT="MDHnodes-TOC.gif" ID="ID_723123711" CREATED="1617324152433" MODIFIED="1617406876512" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-TOC.gif"/>
<node TEXT="MDHnodes-WebImage.gif" ID="ID_1511992597" CREATED="1617324152492" MODIFIED="1617406876578" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-WebImage.gif"/>
<node TEXT="MDHnodes-WebLink.gif" ID="ID_1630985854" CREATED="1617324152535" MODIFIED="1617406876616" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-WebLink.gif"/>
<node TEXT="MDHnodes-CodeBlock.gif" ID="ID_1403255199" CREATED="1617405486056" MODIFIED="1617405486104" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-CodeBlock.gif"/>
<node TEXT="MDHnodes-LinkToFile.gif" ID="ID_277975381" CREATED="1617405486108" MODIFIED="1617405486164" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-LinkToFile.gif"/>
<node TEXT="MDHnodes-LinkToImage.gif" ID="ID_93564966" CREATED="1617405486167" MODIFIED="1617405486229" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-LinkToImage.gif"/>
<node TEXT="MDHnodes-Lists.gif" ID="ID_1810589116" CREATED="1617405486231" MODIFIED="1617405486282" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-Lists.gif"/>
<node TEXT="MDHnodes-Table.gif" ID="ID_608624469" CREATED="1617405486283" MODIFIED="1617405486331" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-Table.gif"/>
<node TEXT="MDHnodes-comment.gif" ID="ID_1620682938" CREATED="1617405486333" MODIFIED="1617405486381" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-comment.gif"/>
<node TEXT="MDHnodes-plainTasks.gif" ID="ID_1622565705" CREATED="1617405486383" MODIFIED="1617405486450" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-plainTasks.gif"/>
<node TEXT="MDHnodes-structuredTasks.gif" ID="ID_1991987286" CREATED="1617405486452" MODIFIED="1617405486495" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-structuredTasks.gif"/>
<node TEXT="MDHnodes-textBlock.gif" ID="ID_773557304" CREATED="1617405486498" MODIFIED="1617405486548" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-textBlock.gif"/>
<node TEXT="MDHnodes-numberedList.gif" ID="ID_874556509" CREATED="1617406854137" MODIFIED="1617468591459" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-numberedList.gif"/>
<node TEXT="MDHnodes-numberedList2.gif" ID="ID_1881998686" CREATED="1617406854188" MODIFIED="1617468591504" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-numberedList2.gif"/>
<node TEXT="Extras-Back.gif" ID="ID_1650791776" CREATED="1617654221771" MODIFIED="1617661444390" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Extras-Back.gif"/>
<node TEXT="Extras-ExportToNode.gif" ID="ID_1723344385" CREATED="1617654221873" MODIFIED="1617661444460" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Extras-ExportToNode.gif"/>
<node TEXT="Extras-ExportToNode02.gif" ID="ID_135925025" CREATED="1617654221970" MODIFIED="1617661444520" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Extras-ExportToNode02.gif"/>
<node TEXT="Extras-save.gif" ID="ID_1353656225" CREATED="1617654222068" MODIFIED="1617661444578" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Extras-save.gif"/>
<node TEXT="Links-HowTo.gif" ID="ID_1143746605" CREATED="1617654222157" MODIFIED="1617661444639" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Links-HowTo.gif"/>
<node TEXT="Links-toBeLinkedNode.gif" ID="ID_1514218151" CREATED="1617654222251" MODIFIED="1617661444709" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Links-toBeLinkedNode.gif"/>
<node TEXT="WaysToAssignLink.png" ID="ID_1533585553" CREATED="1617654222344" MODIFIED="1617661444323" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/WaysToAssignLink.png"/>
</node>
<node TEXT="MarkdownHelper_footer.png" ID="ID_1354023376" CREATED="1617052122171" MODIFIED="1617052160470" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/MarkdownHelper_footer.png"/>
<node TEXT="Menu" ID="ID_186639222" CREATED="1617662217442" MODIFIED="1617662273689" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Menu/">
<node TEXT="Menu01.png" ID="ID_1132953885" CREATED="1617662217579" MODIFIED="1617662273760" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Menu/Menu01.png"/>
<node TEXT="Menu02.gif" ID="ID_763334886" CREATED="1617662217320" MODIFIED="1617662273824" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Menu/Menu02.gif"/>
</node>
</node>
<node TEXT="tests - examples" ID="ID_927204430" CREATED="1616675127417" MODIFIED="1616675127423" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/">
<node TEXT="Markdown document.md" ID="ID_52461332" CREATED="1616675250868" MODIFIED="1616676113909" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Markdown%20document.md"/>
<node TEXT="dinosaur-5995333_100.png" ID="ID_909854168" CREATED="1616675250874" MODIFIED="1616676113924" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/dinosaur-5995333_100.png"/>
<node TEXT="example 01.md" ID="ID_328963337" CREATED="1616675250880" MODIFIED="1616676113933" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/example%2001.md"/>
<node TEXT="heros-journey.png" ID="ID_598044806" CREATED="1616675250885" MODIFIED="1616676113940" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/heros-journey.png"/>
<node TEXT="plain task list.md" ID="ID_814508748" CREATED="1616675250890" MODIFIED="1616676113947" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/plain%20task%20list.md"/>
<node TEXT="readme.txt" ID="ID_1556048050" CREATED="1616675250896" MODIFIED="1616676113952" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/readme.txt"/>
<node TEXT="Calvin and Hobbes.md" ID="ID_1708992289" CREATED="1617052122206" MODIFIED="1617052142405" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Calvin%20and%20Hobbes.md"/>
<node TEXT="Calvin and Hobbes Example.mm" ID="ID_1494550371" CREATED="1617290096953" MODIFIED="1617324168505" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Calvin%20and%20Hobbes%20Example.mm"/>
<node TEXT="Markdown Helper example 01.mm" ID="ID_788762744" CREATED="1617290096976" MODIFIED="1617324168537" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Markdown%20Helper%20example%2001.mm"/>
<node TEXT="MD-ex01_01.md" ID="ID_1750916147" CREATED="1617486391766" MODIFIED="1617486391825" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/MD-ex01_01.md"/>
<node TEXT="MD-ex01_02.md" ID="ID_548507964" CREATED="1617486391826" MODIFIED="1617486391871" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/MD-ex01_02.md"/>
<node TEXT="MD-ex01_03.md" ID="ID_474132283" CREATED="1617486391872" MODIFIED="1617486391917" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/MD-ex01_03.md"/>
</node>
<node TEXT="wiki" ID="ID_198308461" CREATED="1616675127431" MODIFIED="1616675127436" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/wiki/">
<node TEXT="Markdown Helper Wiki.mm" ID="ID_1522672475" CREATED="1616675250913" MODIFIED="1616676113957" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/wiki/Markdown%20Helper%20Wiki.mm"/>
</node>
<node TEXT="delete" STYLE_REF="file_folder" ID="ID_1225805113" CREATED="1616675839984" MODIFIED="1616675958372" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/">
<node TEXT="dialogo MD con save.groovy" ID="ID_822713443" CREATED="1616675250794" MODIFIED="1616676113959" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/dialogo%20MD%20con%20save.groovy"/>
<node TEXT="markdown-cheat-sheet.md" ID="ID_1776801324" CREATED="1616675250819" MODIFIED="1616676113969" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/markdown-cheat-sheet.md"/>
<node TEXT="markdown-cheatsheet-online.pdf" ID="ID_1250795291" CREATED="1616675250828" MODIFIED="1616676113977" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/markdown-cheatsheet-online.pdf"/>
<node TEXT="testmap formula y markdown.mm" ID="ID_1324961310" CREATED="1616675250849" MODIFIED="1616676113985" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/testmap%20formula%20y%20markdown.mm"/>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1907036147" CREATED="1616675225753" MODIFIED="1617662245521">
<attribute NAME="log_MDI" VALUE="No"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2021-04-05&nbsp;&nbsp;18:37:17
    </p>
    <p>
      
    </p>
    <p>
      ------- Files: --------&nbsp;
    </p>
    <p>
      &nbsp;0 node(s) pointing to unexisting/filtered files (marked as 'broken')
    </p>
    <p>
      &nbsp;0 link(s) corrected in nodes
    </p>
    <p>
      &nbsp;0 new file(s) imported as node(s)&nbsp;
    </p>
    <p>
      &nbsp;1 node(s) moved/renamed in drive
    </p>
    <p>
      
    </p>
    <p>
      ------- Folders: --------&nbsp;
    </p>
    <p>
      19 folders didn't need to be moved&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      0.7 seconds
    </p>
    <p>
      
    </p>
    <p>
      =====================================
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT=".gitattributes" ID="ID_363259253" CREATED="1616675250918" MODIFIED="1616676113987" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/.gitattributes"/>
<node TEXT="README.md" ID="ID_1306888434" CREATED="1616675250923" MODIFIED="1616676113992" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/README.md"/>
</node>
</node>
</map>
