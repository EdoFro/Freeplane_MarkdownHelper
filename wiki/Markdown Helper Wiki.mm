<map version="freeplane 1.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<node TEXT="Markdown Helper&#xa;Wiki" FOLDED="false" ID="ID_696401721" LINK="file:/C:/Respaldo%20EF/ef/Documentos%20con%20macros/08%20Freemind%20Groovy/scripts/ScriptsEnComputadorYDesarrollosEdo%20v1.9.mm#ID_1051614714">
<font SIZE="18"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      S:8 P:57 F:24
    </p>
  </body>
</html></richcontent>
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
    <properties mapUsesOwnSaveOptions="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" save_folding="save_folding_if_map_is_changed" fit_to_viewport="false" save_modification_times="false" followedMapLocation="file:/C:/Users/Edo/AppData/Roaming/Freeplane/1.9.x/templates/vis01%20light_nord_template%20vEdo.mm" followedMapLastTime="1620850721902" save_last_visited_node="default" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="2 px">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;-15 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
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
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode TEXT="MarkdownHelperNode" ID="ID_447772452" COLOR="#dbffdb" BACKGROUND_COLOR="#333333" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="baseFolder" ID="ID_364546615" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="newFolderImport" ID="ID_251252450" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="freshNew" ID="ID_1275502152" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</stylenode>
<stylenode TEXT="movedRenamed" ID="ID_938352535" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</stylenode>
<stylenode TEXT="file" ID="ID_368908414" BORDER_WIDTH="2.5 px" BACKGROUND_COLOR="#bcc6e0" FORMAT="NO_FORMAT">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="file_folder" ID="ID_376023395" BORDER_WIDTH="3 px"/>
<stylenode TEXT="missing" ID="ID_171165347" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="broken-line"/>
</stylenode>
<stylenode TEXT="modifiedFile" ID="ID_331069801" BACKGROUND_COLOR="#ffcc00" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#00659b">
<icon BUILTIN="emoji-002A-20E3"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="locked" ID="ID_691859632" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px">
<icon BUILTIN="emoji-1F512"/>
</stylenode>
<stylenode TEXT="file_folder_with_icon" ID="ID_1845885385">
<icon BUILTIN="emoji-1F4C2"/>
</stylenode>
<stylenode TEXT="GroovyNode" ID="ID_1879278504" BACKGROUND_COLOR="#66cccc" STYLE="rectangle">
<icon BUILTIN="emoji-1F951"/>
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="Warning" ID="ID_1188674284" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="6 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#990000">
<icon BUILTIN="closed"/>
</stylenode>
<stylenode TEXT="hasGroovyNode" ID="ID_45306036">
<icon BUILTIN="emoji-1F951"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.topic" ID="ID_510539165" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" ID="ID_42989071" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" ID="ID_1581018590" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="Siguiente tarea" ID="ID_444699505" BACKGROUND_COLOR="#ffff33">
<icon BUILTIN="yes"/>
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="Tarea pendiente" ID="ID_151111732" BACKGROUND_COLOR="#99ffff">
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="Tarea finalizada" ID="ID_299181276" COLOR="#333333" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="checked"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="Tarea Descartada" ID="ID_248116627" COLOR="#666666" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="Descartado"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="contieneSigTareas" ID="ID_165383342" BACKGROUND_COLOR="#eaea86">
<icon BUILTIN="emoji-1F7E5"/>
</stylenode>
<stylenode TEXT="contieneTareaPend" ID="ID_1691237868" BACKGROUND_COLOR="#b5d7d7">
<icon BUILTIN="emoji-23F9"/>
</stylenode>
<stylenode TEXT="Proyecto" ID="ID_174555413" COLOR="#003399">
<font NAME="SansSerif" SIZE="12" BOLD="true" ITALIC="false"/>
<edge COLOR="#003399" WIDTH="6"/>
</stylenode>
<stylenode TEXT="Grupito" ID="ID_1048202689">
<cloud COLOR="#e4e6ff" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Iniciativa" ID="ID_986218777">
<icon BUILTIN="attach"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Organizador" ID="ID_1348643076">
<icon BUILTIN="folder"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Minuta" ID="ID_800861160">
<icon BUILTIN="list"/>
<cloud COLOR="#69a1f8" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Acuerdo" ID="ID_1045716067" BACKGROUND_COLOR="#66ff33">
<icon BUILTIN="flag-black"/>
</stylenode>
<stylenode TEXT="numerado" ID="ID_515783193" BACKGROUND_COLOR="#add1ea" STYLE="bubble" NUMBERED="true" MAX_WIDTH="200 px" MIN_WIDTH="200 px"/>
<stylenode TEXT="con duda" ID="ID_515448800" BACKGROUND_COLOR="#ffff66">
<icon BUILTIN="help"/>
<font BOLD="false" ITALIC="true"/>
</stylenode>
<stylenode TEXT="BotonMenu" ID="ID_1460030812" ICON_SIZE="16 pt" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"/>
<stylenode TEXT="MarkdownHelperLink" ID="ID_1690494856" COLOR="#dbffdb" BACKGROUND_COLOR="#4c4c7f" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F517"/>
</stylenode>
<stylenode TEXT="xxxxx" BACKGROUND_COLOR="#ffff00">
<icon BUILTIN="emoji-1F522"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="15 pt" TEXT_ALIGN="CENTER" MAX_WIDTH="4 cm" MIN_WIDTH="3 cm">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ID="ID_144205114" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font SIZE="16"/>
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
<node TEXT="Freeplane_MarkdownHelper.wiki" STYLE_REF="baseFolder" POSITION="right" ID="ID_391523987" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/">
<attribute_layout NAME_WIDTH="104.25 pt" VALUE_WIDTH="306.74999 pt"/>
<attribute NAME="nameFilter" VALUE=""/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="MarkdownRootFolder" VALUE="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/"/>
<attribute NAME="MDHGithubBranch" VALUE="main"/>
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
</html></richcontent>
<node TEXT="_Sidebar.md" STYLE_REF="MarkdownHelperNode" ID="ID_1787661554" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/_Sidebar.md" VGAP_QUANTITY="2 px">
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_713676921">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="### Pages in this wiki" ID="ID_584228544"/>
<node TEXT="structuredDocsList" ID="ID_255515949" BACKGROUND_COLOR="#ffcc99"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.structuredDocsList(node)
//prueba
// 02

</text>
</richcontent>
</node>
<node TEXT="### Other useful links" ID="ID_1687962102"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_558899461"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.list(node)
//gfz
</text>
</richcontent>
<node TEXT="Freeplane" ID="ID_130481720" VGAP_QUANTITY="2 px">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1665147980" HGAP_QUANTITY="17.75 pt" VSHIFT_QUANTITY="-7.5 pt"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Freeplane&apos;s homepage" ID="ID_563687723" LINK="https://www.freeplane.org/wiki/index.php/Home"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1870228058"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Download version 1.9.0" ID="ID_1318035139" LINK="https://sourceforge.net/projects/freeplane/files/freeplane%20preview/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_744784022"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Installing an AddOn in Freeplane" ID="ID_24965837" LINK="https://www.freeplane.org/wiki/index.php/Add-ons_(install)"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1461616022"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Open Discussion Forum" ID="ID_181875134" LINK="https://sourceforge.net/p/freeplane/discussion/758437/"/>
</node>
</node>
<node TEXT="Markdown" ID="ID_303546968">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1433795100"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="in Wikipedia" ID="ID_213820103" LINK="https://en.wikipedia.org/wiki/Markdown"/>
</node>
<node TEXT="Markdown in Github" ID="ID_1454918326">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1770055187"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Mastering Markdown" ID="ID_423112989" LINK="https://guides.github.com/features/mastering-markdown/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_196970251"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Basic writing and formatting syntax" ID="ID_907185665" LINK="https://docs.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1407191594"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="markdown-cheatsheet-online (pdf)" ID="ID_798460855" LINK="https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf"/>
</node>
</node>
<node TEXT="other Markdown cheat sheets in the web" ID="ID_252329010">
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1806082052"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="adam-p/markdown-here Markdown Cheatsheet" ID="ID_1644216827" LINK="https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_830813872"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="markdownguide.org Markdown Cheat Sheet" ID="ID_4856985" LINK="https://www.markdownguide.org/cheat-sheet/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_711764091"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="markdownguide.org Basic Syntax" ID="ID_350077318" LINK="https://www.markdownguide.org/basic-syntax/"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="_Footer.md" STYLE_REF="MarkdownHelperNode" ID="ID_1049274304" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/_Footer.md">
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_231250936" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1170172966"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.textBlock(node)  </text>
</richcontent>
<node TEXT="footer" ID="ID_775159434"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1547755323" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
// eeffe</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_751299620" LINK="#ID_1354023376"/>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1872222017"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.textBlock(node)  </text>
</richcontent>
<node TEXT="p" ID="ID_1904996976"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_123751221"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Freeplane" ID="ID_1100912299" LINK="https://www.freeplane.org/wiki/index.php/Home"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1359724600"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Markdown Helper AddOn" ID="ID_1312325070" LINK="https://github.com/EdoFro/Freeplane_MarkdownHelper"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_213933762"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="ScreenToGif" ID="ID_729597614" LINK="https://www.screentogif.com/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1379896452"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="PicPick" ID="ID_1692888215" LINK="https://picpick.app/"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_272065202"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Krita" ID="ID_393265298" LINK="https://krita.org"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Home.md" STYLE_REF="MarkdownHelperNode" ID="ID_206044241" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Home.md">
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1746332684">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1703917514" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_280764281" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_630613530"/>
</node>
<node TEXT="Markdown Helper Add On for Freeplane" FOLDED="true" ID="ID_689678676">
<node TEXT="párrafo introducción" ID="ID_1686567372"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Welcome to the **alpha** version of the **Markdown Helper AddOn** for **Freeplane**.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="what it is" ID="ID_743361085"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      This Add On is a tool to create markdown documents in a Freeplane mindmapping way.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="How it works" FOLDED="true" ID="ID_218329724">
<node TEXT="The general idea of this AddOn is to insert **special nodes** in your map that help to **translate** the information in a mindmap **into a Markdown** document." ID="ID_1655331551"/>
<node TEXT="Here you can see an example where a **paragraph** is **combined with** nodes with links to **images** and **webpages** into a Markdown formatted text." ID="ID_1960270936"/>
<node TEXT="You obtain a good looking document retaining the **flexibility** that offers Freeplane and Mindmapping. You can easy reorder and insert new ideas as usual." ID="ID_697224250"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1859886616"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1789876402" LINK="#ID_1156849491"/>
</node>
</node>
<node TEXT="-----" ID="ID_953788148"/>
<node TEXT="docsInside" FOLDED="true" ID="ID_374069221" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.docsInside(node)

//cambio masivo docsInside
//prueba 02
</text>
</richcontent>
<node TEXT="Pages in this section:" ID="ID_1658934363"/>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_979642529" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_466943714"/>
</node>
</node>
<node TEXT="Screenshots.md" STYLE_REF="MarkdownHelperNode" ID="ID_734683777" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Screenshots.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_815389749">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_768989873" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_740598892" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_547698201"/>
</node>
<node TEXT="Mindmap and notepanel" FOLDED="true" ID="ID_257860736">
<node TEXT="Building a textblock with links to webpages" FOLDED="true" ID="ID_684662168">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1808638012"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_741391716" LINK="#ID_426263812"/>
</node>
</node>
<node TEXT="Building a table" FOLDED="true" ID="ID_120214311">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_105343902"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1200076551" LINK="#ID_1150503925"/>
</node>
</node>
</node>
<node TEXT="Resulting document in VSCode" FOLDED="true" ID="ID_1944261535">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_476177979"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_421095471" LINK="#ID_1150567671"/>
</node>
</node>
<node TEXT="Seeing the resulting document in Notepad++" FOLDED="true" ID="ID_1161387057">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_847023918"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1589315051" LINK="#ID_1092741363"/>
</node>
<node TEXT="another example:" ID="ID_1568933231"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_387704052"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1193103869" LINK="#ID_26833910"/>
</node>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_1435511626" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_919114970"/>
</node>
</node>
</node>
<node TEXT="Installing-and-first-steps.md" STYLE_REF="MarkdownHelperNode" ID="ID_899633095" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Installing-and-first-steps.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="145.5 pt" VALUE_WIDTH="56.25 pt"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="true"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_989284925">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1366691305" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_1981942367" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_305721986"/>
</node>
<node TEXT="docsInside" ID="ID_419530914" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="Table of Contents" FOLDED="true" ID="ID_190483932">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_263651147">
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
</html></richcontent>
</node>
</node>
<node TEXT="Installing the AddOn" FOLDED="true" ID="ID_644861717">
<node TEXT="Introducción" ID="ID_744739861"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Installing a new AddOn is very straight forward in Freeplane.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="You only need to follow these **simple steps**:" ID="ID_1909144568"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_656979838">
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
</html></richcontent>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1959083006"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="download the addOn" FOLDED="true" ID="ID_871892169"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Download the $1 of the addOn
    </p>
  </body>
</html></richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1322276093"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="latest release" ID="ID_387295666" LINK="https://github.com/EdoFro/Freeplane_MarkdownHelper/releases/latest"/>
</node>
</node>
</node>
<node TEXT="Open it in Freeplane" ID="ID_1070260105"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1780273767"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="dialog" FOLDED="true" ID="ID_1657075442"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1<br/>$2
    </p>
  </body>
</html></richcontent>
<node TEXT="A first dialog will open." ID="ID_996269935"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1428711066"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node, true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_305371940" LINK="#ID_8240058"/>
</node>
</node>
</node>
<node TEXT="Click **Yes** and follow the instructions." ID="ID_562997526"/>
<node TEXT="Close and reopen Freeplane to complete the installation." ID="ID_1054145521"/>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_452237489"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="more info" FOLDED="true" ID="ID_40855485"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More information about Add Ons and how to install them in Freeplane can be found in the oficial $1.
    </p>
  </body>
</html></richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_475990360"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Freeplane wiki: Add-ons_(install)" ID="ID_1278496374" LINK="https://www.freeplane.org/wiki/index.php/Add-ons_(install)"/>
</node>
</node>
</node>
<node TEXT="imagen dialog instalación" FOLDED="true" ID="ID_658859693">
<icon BUILTIN="emoji-26D4"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_531749021"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node, true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_139714360" LINK="#ID_352092704"/>
</node>
</node>
</node>
<node TEXT="Setting your map up" FOLDED="true" ID="ID_1707274159">
<node TEXT="The map where you want to use this AddOn needs to have two custom format styles to work properly." ID="ID_668631412"/>
<node TEXT="Their names are:" ID="ID_78785983"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1173816117"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="MarkdownHelperNode" ID="ID_670560519"/>
<node TEXT="MarkdownHelperLink" ID="ID_1463183255"/>
</node>
<node TEXT="So, you need to add them to your map before using the AddOn on it." ID="ID_402932560"/>
<node TEXT="To do that, you have different choises" ID="ID_1861901637"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_265135030"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="import them from a template map" ID="ID_1982474739"/>
<node TEXT="create them manually" ID="ID_627508904"/>
</node>
<node TEXT="A brief explanation:" ID="ID_1612734300"/>
<node TEXT="Using the Markdown Helper Template Map" FOLDED="true" ID="ID_744916804">
<node TEXT="Map templates are an excellent tool to easily format your maps the way you like and to mantain a standarized outlook between them." ID="ID_585668590"/>
<node TEXT="Since Freeplane v1.9.0 you have the possibilty to import formats from multiple template maps and assign template maps to be followed. This way you define any change in you base template and all your maps will follow these changes." ID="ID_1646153376"/>
<node TEXT="getting the styles" FOLDED="true" ID="ID_143330569">
<node TEXT="**This AddOn has its own template map that you can find in the user templates folder.**" ID="ID_60919418"/>
<node TEXT="To add the custom format styles needed for the AddOn to work in your map you have to **follow these steps**" ID="ID_1423541364"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1683859539">
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
</html></richcontent>
<node TEXT="open the map you want to work with" ID="ID_1445176730"/>
<node TEXT="use the menu command:&#xa;Format / Manage styles / Copy map styles from ..." ID="ID_459547460"/>
<node TEXT="the &quot;open&quot; dialog appears" ID="ID_1601770243"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1662022324"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="dialog" FOLDED="true" ID="ID_1109029824"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1<br/>$2
    </p>
  </body>
</html></richcontent>
<node TEXT="Select in &quot;Files of type&quot; the option &quot;User templates&quot;" ID="ID_1565634634"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_449135723"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node, true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1016931156" LINK="#ID_852266485"/>
</node>
</node>
</node>
<node TEXT="Select the Markdown Helper template map in the MarkdownHelper folder and open it." ID="ID_1459797305"/>
</node>
<node TEXT="Now your map have these two new formats adn your ready to go!" ID="ID_1902300328"/>
</node>
<node TEXT="some additional information:" FOLDED="true" ID="ID_666979441">
<node TEXT="Your map took also the standard formats from the template. If you don&apos;t like them you can copy the formats from your own template and the styles will change again, but the custom Styles needed for this AddOn will remain." ID="ID_1356228800"/>
<node TEXT="I recomend you to make your own templates and that they have all the custom styles you need." ID="ID_187245966"/>
<node TEXT="I also recomend you to make a copy of the Markdown Helper template map and modify the styles the way you like them, so you can use this map as your template when using the addon." ID="ID_1818193477"/>
<node TEXT="Do not use the original template map to customize the styles, because every time the AddOn get updated your customization will beet lost. Not a big deal, but certainly anoying." ID="ID_1770403671"/>
</node>
</node>
<node TEXT="Creating custom Styles manually" FOLDED="true" ID="ID_63543856">
<node TEXT="The other way is to create the two styles manually." ID="ID_677106435"/>
<node TEXT="This may be a better option if you have already created a lot of custom styles or customized the standard styles in the map and you don&apos;t have a copy of these styles in a template." ID="ID_1306609147"/>
<node TEXT="I recomend you to create a template and learn how to use them. They are very useful. But in the meantime you can do this:" ID="ID_1047139929"/>
<node TEXT="Option A: Create style from selection" FOLDED="true" ID="ID_840757132">
<node TEXT="This is the simpliest way to crate a new style:" ID="ID_1837337524"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_428931688"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Add a new node" ID="ID_554662266"/>
<node TEXT="Change some format options to the node&#xa;For example:" LOCALIZED_STYLE_REF="default" FOLDED="true" ID="ID_1311028321">
<node TEXT="Node background color" ID="ID_903721436"/>
<node TEXT="Node Text color" ID="ID_450634557"/>
<node TEXT="Node shape" ID="ID_507038101"/>
<node TEXT="Add some icon" ID="ID_760549703"/>
</node>
<node TEXT="Select the node" ID="ID_689142142" BACKGROUND_COLOR="#ffff00">
<icon BUILTIN="emoji-1F522"/>
</node>
<node TEXT="Apply menu command:&#xa;**Format / Manage Styles / new style from selection**" ID="ID_201316378"/>
<node TEXT="Enter **MarkdownHelperNode** as new style&apos;s name&#xa;(*)" ID="ID_204742587"/>
<node TEXT="Repeat all again to create the **MarkdownHelperLink** (*) custom style" ID="ID_1493926816"/>
</node>
<node TEXT="(*) The names must be written the same as shown here, including upper and lower cases." ID="ID_1605110754"/>
</node>
<node TEXT="Option B: Edit Styles..." FOLDED="true" ID="ID_459188221">
<node TEXT="You can create the styles (or modify them) in the &quot;Edit Styles ...&quot; map" ID="ID_1422022844"/>
<node TEXT="It is very similar as the previous procedure: The difference is that you name the style first, when creating the node, and then you do the changes to the node." ID="ID_518535424"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_918264972"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="use menu command&#xa;**Format / Manage Styles / Edit Styles...**" ID="ID_1183069511"/>
<node TEXT="the styles map opens" ID="ID_1820299688"/>
<node TEXT="Select a node with a Style to use as starting format" FOLDED="true" ID="ID_630016270">
<node TEXT="for example Details or Attributes" ID="ID_870639508"/>
</node>
<node TEXT="Right click on it and aselect &quot;new style from selection&quot; option" ID="ID_1576978983"/>
<node ID="ID_1391994300" TREE_ID="ID_204742587"/>
<node TEXT="change the format of the new node the way you like" ID="ID_545165341"/>
<node ID="ID_1318283993" TREE_ID="ID_1493926816"/>
<node TEXT="close the editor by clicking the green check icon or by pressing Ctrl + Enter" ID="ID_1489969625"/>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_1772290697" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1473205125"/>
</node>
</node>
</node>
<node TEXT="Markdown-Helper-Menu.md" STYLE_REF="MarkdownHelperNode" ID="ID_1118785541" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-Helper-Menu.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1576015938">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_5419379" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_1579003798" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1877137470"/>
</node>
<node TEXT="docsInside" ID="ID_1770099086" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="The menu" FOLDED="true" ID="ID_873239008">
<node TEXT="You can find the commands in **Edo Tools / Markdown Helper** menu:" ID="ID_1385371087"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1814080628"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1725477218" LINK="#ID_1132953885"/>
</node>
</node>
<node TEXT="Menu commands" ID="ID_732302606">
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_260035170"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" FOLDED="true" ID="ID_1847966265">
<node TEXT="command" ID="ID_22785699"/>
<node TEXT="explanation" ID="ID_1974749246"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_669600216">
<node TEXT="linked image as Markdown details" ID="ID_1193335139"/>
<node TEXT="If the selected node has a link to an Image, It adds a formula in the **details** to show the image as markdown content type" ID="ID_1293096129"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1624502">
<node TEXT="linked image as Markdown note" ID="ID_1601823928"/>
<node TEXT="If the selected node has a link to an Image, It adds a formula in the **note** to show the image as markdown content type" ID="ID_1459811231"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_505873838">
<node TEXT="show Markdown Helper Dialog" ID="ID_281021310"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_540043626"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="it shows the Markdown ..." FOLDED="true" ID="ID_1354366276"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      It shows the $1.
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_1776053790" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1484437908" LINK="#ID_1361749976"/>
</node>
</node>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1915335164">
<node TEXT="rebuild Dialog" ID="ID_560601890"/>
<node TEXT="It&apos;s the same as the previous one, but rebuilds the buttons and actions of the Dialog.&#xa;I use it to update the dialog every time I make a change in the scripts.&#xa;&#xa; - It takes all changes made in the preferences panel&#xa; - It adds the &apos;patch&apos; button to the dialog" ID="ID_1964315313">
<node TEXT="TODO: agregar que toma los nuevos valores desde las preferencias" STYLE_REF="Tarea finalizada" ID="ID_1515783387"/>
<node TEXT="TODO: agregar que muestra botón adicional &quot;patch&quot;" STYLE_REF="Tarea finalizada" ID="ID_415801205"/>
</node>
</node>
</node>
</node>
<node TEXT="Example: showing linked image as Markdown" FOLDED="true" ID="ID_1487060859">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_496247563"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_945837252" LINK="#ID_763334886"/>
</node>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_384811746" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_667319513"/>
</node>
</node>
</node>
<node TEXT="Markdown-Helper-Dialog.md" STYLE_REF="MarkdownHelperNode" ID="ID_1361749976" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-Helper-Dialog.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="false"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_45770369">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1500072034" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_1216282910" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1260303909"/>
</node>
<node TEXT="## The Markdown Helper dialog" ID="ID_1851550358"/>
<node TEXT="intro" ID="ID_936151994"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The dialog is the central part of this Add On. It has most of the features that can help you create a map that dinamically creates and updates a markdown document.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="The dialog is composed by four different parts, each one has it special function." ID="ID_1815071739"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1063078082" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 

//
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_454366263" LINK="#ID_1930852978"/>
</node>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_636205443"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" FOLDED="true" ID="ID_274322150">
<node TEXT="Dialog part" ID="ID_446454825"/>
<node TEXT="Explanation" ID="ID_770134557"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_317918920">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_281775736" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 001.png" ID="ID_1305975695" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20001.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1848046915"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 1" ID="ID_1040296506"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_1879169968" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1651095985" LINK="#ID_1067554703"/>
</node>
</node>
</node>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_723512072">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_701192874" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 002.png" ID="ID_1004620486" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20002.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_847197"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 2" ID="ID_486435346"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html>
</richcontent>
<node TEXT="link to wikipage" ID="ID_1784156102" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
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
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_525957612" LINK="#ID_1724840148"/>
</node>
</node>
</node>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1554349882">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_848478161" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 003.png" ID="ID_1064538750" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20003.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_465790358"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 3" FOLDED="true" ID="ID_1007098581"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The third part of the dialog contains some extra functions
    </p>
    <p>
      &nbsp;explained in the $1 page.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="link to wikipage" FOLDED="true" ID="ID_1680877141" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
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
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1722294935" LINK="#ID_462044149"/>
</node>
</node>
</node>
</node>
<node TEXT="r" ID="ID_1716001111">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1756735033" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1622771727" LINK="#ID_280948892"/>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1821229944"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 4" ID="ID_1159321485"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The downmost part of the dialog contains buttons that inserts special nodes to the map that help to transform a mindmap with multiple Markdown documents into a GITHUB wiki.
    </p>
    <p>
      
    </p>
    <p>
      More information about each button in page $1.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="linkToWikipage" STYLE_REF="MarkdownHelperNode" ID="ID_1687838729"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_100117452" LINK="#ID_1288450491"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="docsInside" FOLDED="true" ID="ID_625211500" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----&#xa;Pages in this section" ID="ID_709947667"/>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_1538477903" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1368595675"/>
</node>
</node>
<node TEXT="Icons-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_1067554703" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Icons-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_963770516" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_352880054" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation
// prueba 02
</text>
</richcontent>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_1781571543" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.previousAndNext(node)

//cambio masivo previousAndNext
//prueba 02
</text>
</richcontent>
<node TEXT="-----" ID="ID_1023951110"/>
</node>
<node TEXT="docsInside" ID="ID_1826746643" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.docsInside(node)

//cambio masivo docsInside
// prueba 02
</text>
</richcontent>
</node>
<node TEXT="explicación panel 1" ID="ID_116506090"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="-----" ID="ID_1210700296"/>
<node TEXT="In this table you can see a list with all the icons and their functions:" ID="ID_379478928"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_157293715"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.table(node) </text>
</richcontent>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1379163417">
<node TEXT="Icon" ID="ID_1113482371"/>
<node TEXT="affects" ID="ID_561990910">
<icon BUILTIN="emoji-2194"/>
</node>
<node TEXT="Explanation" ID="ID_510336078"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_763943521">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_564277630" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 001.png" ID="ID_764465307" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20001.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="Any node" ID="ID_518435251"/>
<node TEXT="Deletes the first icon in the selected node&#xa;(as usual)" ID="ID_634705398"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_884142952">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1321829539" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 002.png" ID="ID_1055771673" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20002.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="Any node" ID="ID_1243232326"/>
<node TEXT="Deletes the last icon in the selected node&#xa;(as usual)" ID="ID_1395965933"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1868359018">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_236407308" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 003.png" ID="ID_1361113556" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20003.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="Any node" ID="ID_370111889"/>
<node TEXT="Deletes all icons in the selected node&#xa;(as usual)" ID="ID_19474923"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_69176246">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1719934872" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 004.png" ID="ID_846704092" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20004.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="Any node" ID="ID_2875252"/>
<node TEXT="When building the document the node with this icon is treated as a leave node and its children are ignored" ID="ID_329020992"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1438239317">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1808837262" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 005.png" ID="ID_1647115959" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20005.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="Any node" ID="ID_630344482"/>
<node TEXT="The nodes with this icon are ignored to build the Markdown document. Its content and its descendant are totally ignored" ID="ID_1071533674"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1384539097">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1510963070" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//

</text>
</richcontent>
<node TEXT="FP Icon 006.png" ID="ID_413807381" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20006.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="Any node" ID="ID_1437114759"/>
<node TEXT="Nodes with this icon are ignored, but only their content. Their children are not ignored.&#xa;This nodes are &apos;bypassed&apos;" ID="ID_229195846"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1680902322">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_489557426" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 007.png" ID="ID_1630580039" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20007.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="List nodes" ID="ID_1260735423"/>
<node TEXT="When using the *list* MDH node, nodes which parent has this icon, get numbered.&#xa;It indicates that the children of the nodes are a numbered list." ID="ID_1009433949"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1727864872">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_773989455" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 008.png" ID="ID_23311262" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20008.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="List nodes" ID="ID_1222853683"/>
<node TEXT="When using the *list* MDH node, nodes which parent has this icon, get bulletted.&#xa;It indicates that the children of the nodes are a bullet point list." ID="ID_1133052647"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1327461167">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1824010068" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 009.png" ID="ID_215172306" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20009.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="header row nodes in table" ID="ID_47620099"/>
<node TEXT="When using the *table* MDH node, if you want that a column has a centered alignment you have to add this icon to the node that representes that column&apos;s header." ID="ID_495277331"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1549628890">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_564630518" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 



</text>
</richcontent>
<node TEXT="FP Icon 010.png" ID="ID_920768424" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20010.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="header row nodes in table" ID="ID_1656065015"/>
<node TEXT="When using the *table* MDH node, if you want that a column is aligned to the right, you have to add this icon to the node that representes that column&apos;s header." ID="ID_1119138084"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1242321259">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_233094257" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 011.png" ID="ID_1050715986" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20011.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="link to web page, image or file node" ID="ID_1022103290"/>
<node TEXT="to add an extra newLine after this node.&#xa;(I have doubts that this feature is really needed)" ID="ID_1202671568"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_552945385">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1558283613" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 012.png" ID="ID_1794146171" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20012.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="task" ID="ID_1569342020"/>
<node TEXT="When in *task list* nodes you have to use this icon to define which of the nodes represents tasks. All other nodes are ignored so you can add comments that are not shown in the document." ID="ID_1518294993"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1690364489">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1741147808" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 013.png" ID="ID_1831950189" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20013.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="task" ID="ID_479095662"/>
<node TEXT="Adding this icon to a task indicates it was finished" ID="ID_1401637530"/>
</node>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_3335987" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1697708552"/>
</node>
</node>
</node>
<node TEXT="MDH-Nodes-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_1724840148" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/MDH-Nodes-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1179611047">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1513808003" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" FOLDED="true" ID="ID_1305042686" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1571592432"/>
</node>
<node TEXT="docsInside" ID="ID_434854553" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="## MDH special nodes" ID="ID_1593683131"/>
<node TEXT="explicación panel 2" ID="ID_808164187"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="-----" ID="ID_363998184"/>
<node TEXT="In this table you can see the list with all the nodes and their descriptions:" ID="ID_1291659985"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_997874648"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_33419335">
<node TEXT="Button" ID="ID_363351604"/>
<node TEXT="Description" ID="ID_1159043817"/>
<node TEXT="Modifiers" ID="ID_1378144628">
<icon BUILTIN="emoji-2194"/>
</node>
<node TEXT="Example" ID="ID_382580454"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1063094109">
<node TEXT="Markdown document.md" ID="ID_759266907" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="This node collects the information in its descendant to build a markdown type note and a possible document file.&#xa;This is the most important MDH node type. All other MDH nodes are helpers to this one." ID="ID_1325423218"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_442236860"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.textBlock(node)
//xxx</text>
</richcontent>
<node TEXT="icons" FOLDED="true" ID="ID_1174081430"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_797993408" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_295410066" LINK="#ID_846704092"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_697679148" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_135900191" LINK="#ID_1647115959"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1528529582" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_967973918" LINK="#ID_413807381"/>
</node>
<node TEXT="headersToUnderline" ID="ID_1833430869"/>
<node TEXT="hideFolded" ID="ID_296884270"/>
<node TEXT="headerNumbering" ID="ID_234589768"/>
<node TEXT="topHeadersNumbered" ID="ID_619708588"/>
<node TEXT="topHeaderStartingNumber" ID="ID_507005086"/>
<node TEXT="fileLinksRelative" ID="ID_1738920683"/>
</node>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_408476465" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_791011516" LINK="#ID_1723936029"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1764132217">
<node TEXT="ToC" ID="ID_1556356543" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Creates an automatic Table of Contents of the document" ID="ID_205398220"/>
<node TEXT="TOCLevels&#xa;TOCindent" ID="ID_1187684070"/>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_1324117855" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1837356910" LINK="#ID_1232286520"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1349141901">
<node TEXT="web link" ID="ID_1974617312" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates the web link from its child node into the markdown document" ID="ID_1791474806"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1898565091" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_532813961" LINK="#ID_1050715986"/>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_1572542666" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_793848366" LINK="#ID_1684208820"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_154941353">
<node TEXT="web Image" ID="ID_882341070" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates the web link from its child node and brings the image into the markdown document" ID="ID_1376338644"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1666759803" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_767762313" LINK="#ID_1050715986"/>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_1519832007" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_521201548" LINK="#ID_52705290"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1358778602">
<node TEXT="link to local file" ID="ID_1198515018" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates a link to a local file from its child node into the markdown document" ID="ID_1150239509"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1991011778" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1174287345" LINK="#ID_1050715986"/>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_1022080758" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1473137787" LINK="#ID_695451635"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1381900190">
<node TEXT="local image" ID="ID_883982996" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates a link to a local file from its child node and brings the image into the markdown document" ID="ID_1995019202"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_926946850" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_879198346" LINK="#ID_1050715986"/>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_677641637" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_471556374" LINK="#ID_669426396"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1526767699">
<node TEXT="list" ID="ID_1235587922" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown list structure" ID="ID_1968544542"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1081654896"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" FOLDED="true" ID="ID_1438737403"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_535303631" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1990936581" LINK="#ID_1630580039"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_137813504" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_477281071" LINK="#ID_23311262"/>
</node>
</node>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_129029634" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_189265273" LINK="#ID_1407037290"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1643828511">
<node TEXT="plain task list" ID="ID_816627802" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown plain task list structure" ID="ID_321923834"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1222139769"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" FOLDED="true" ID="ID_1245486958"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_504227921" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1287866365" LINK="#ID_1794146171"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_468025986" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_746080422" LINK="#ID_1831950189"/>
</node>
</node>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_134643124" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_292635067" LINK="#ID_1493636815"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_208575392">
<node TEXT="nested task list" ID="ID_1981369009" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown nested task list structure" ID="ID_1562050628"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_175450695"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" FOLDED="true" ID="ID_1410712330"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1989660978" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_822567808" LINK="#ID_1794146171"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1654371042" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_417777069" LINK="#ID_1831950189"/>
</node>
</node>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_1492800912" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_53785238" LINK="#ID_1973326803"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1411154885">
<node TEXT="table" ID="ID_850120574" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown table structure" ID="ID_414157073"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1013348832"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" FOLDED="true" ID="ID_808490222"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_470066516" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_737175300" LINK="#ID_215172306"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_544190909" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1314423097" LINK="#ID_920768424"/>
</node>
</node>
</node>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_471237098" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1296286293" LINK="#ID_1815573524"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_391977560">
<node TEXT="code block" ID="ID_462755844" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It takes a node with a script in its note and shows it as a markdown code block" ID="ID_1719308891"/>
<node TEXT="" ID="ID_1051034929"/>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_618314368" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_757732396" LINK="#ID_304858143"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_435747602">
<node TEXT="text block" ID="ID_912653789" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It builds a text block combining text with images and links" ID="ID_1332466658"/>
<node TEXT="" ID="ID_1570718138"/>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_59583354" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1773369333" LINK="#ID_369712842"/>
</node>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1205431345">
<node TEXT="horizontal line" ID="ID_89131434" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="it just insert an horizontal line" ID="ID_1906393819"/>
<node TEXT="" ID="ID_595799117"/>
<node TEXT="" ID="ID_1390739776"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_64898422">
<node TEXT="comment" ID="ID_960651008" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It presents all its childs as commented paragraphs" ID="ID_1011349463"/>
<node TEXT="" ID="ID_1208972233"/>
<node TEXT="linkToWikipage" FOLDED="true" ID="ID_1435400742" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba  x</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1743617328" LINK="#ID_903601228"/>
</node>
</node>
</node>
<node TEXT="previousAndNext" FOLDED="true" ID="ID_237158773" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1590365107"/>
</node>
</node>
</node>
<node TEXT="Extras-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_462044149" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Extras-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_436753611">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_900174901" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_82121476" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_495942326"/>
</node>
<node TEXT="docsInside" ID="ID_66291003" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="explicación panel 3" ID="ID_1852699276"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The third part of the dialog contains some extra functions that enhance the AddOns functionalities.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_185331739"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_182472106">
<node TEXT="Button" ID="ID_1928744044"/>
<node TEXT="Works on" ID="ID_1024011120"/>
<node TEXT="Explanation" ID="ID_1962944434"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_83670014">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_429477830" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 015.png" ID="ID_1106593427" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20015.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="any node inside the **Markdown document** branch" ID="ID_1999672408"/>
<node TEXT="**Jumps** to the **Markdown document.md** node.&#xa;If clicked again it **jumps back** to the starting node." ID="ID_815671628"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_886823028">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1190915897" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 018.png" ID="ID_937000663" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20018.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="any MDH node" ID="ID_1886394757"/>
<node TEXT="Creates a sibling node with the **note** information of the selected node but now **as text**, not as formula" ID="ID_999628118"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_652595087">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1925529429" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 016.png" ID="ID_1972414744" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20016.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="a Markdown document node" ID="ID_1014715066"/>
<node TEXT="It saves the note in the node as a Markdown document file in the drive" ID="ID_232736594"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1714191243">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1368549179" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 017.png" ID="ID_178050385" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20017.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="a MarkdownDocument node or a node in its path to root" ID="ID_569136296"/>
<node TEXT="Adds an attribute to the selected node where the user can specify a common base folder path so it can calculate realtive paths between folders" ID="ID_191864898"/>
</node>
<node TEXT="r" STYLE_REF="locked" FOLDED="true" ID="ID_1543035838">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_661017996" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 019.png" ID="ID_1378301212" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20019.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="any MDH node" ID="ID_1760466771"/>
<node TEXT="It displays help information about the desired MDH node type&#xa;(Not implemented yet)" ID="ID_478708737"/>
</node>
<node TEXT="r" ID="ID_1491300042">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1492776503"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1715687526" LINK="#ID_159615767"/>
</node>
<node TEXT="Selection in Note panel" ID="ID_313347804"/>
<node TEXT="Exports the selected text in the note panel to a childnode.&#xa;It&apos;s made to be used when defining a textBlock." ID="ID_1218187479"/>
</node>
<node TEXT="r" ID="ID_1118003477">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_863602145"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1039538830" LINK="#ID_828967076"/>
</node>
<node TEXT="web link&#xa;web Image&#xa;link to local file&#xa;local image&#xa;linkToWikipage" ID="ID_108911097"/>
<node TEXT="Adds a node that can be linked to another node that has an actual link to a file, image or webpage&#xa;It &apos;does&apos; nothing, just helps to mantain a visible organization of the map" ID="ID_859552238"/>
</node>
<node TEXT="r" ID="ID_1589356404">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1551428038"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1556455554" LINK="#ID_209146527"/>
</node>
<node TEXT="" ID="ID_1497283246"/>
<node TEXT="Shows/hides the panel with  the **Wiki nodes** buttons in the dialog" ID="ID_1238763111"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_1805869507">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_177685329"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_449029576" LINK="#ID_1393108735"/>
</node>
<node TEXT="Markdown document.md&#xa;ToC" ID="ID_218022050"/>
<node TEXT="Adds missing attributes to MDH nodes.&#xa;This button is intended for updating nodes made with previous versions of the add on" ID="ID_859616853"/>
</node>
</node>
<node TEXT="horizontal line" STYLE_REF="MarkdownHelperNode" ID="ID_626321894"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_656898989"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="more info in" ID="ID_1328938035"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More information and examples in the $1 page
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_575804454" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_91447609" LINK="#ID_502227104"/>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_91562905" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1531162836"/>
</node>
</node>
</node>
<node TEXT="Wiki-Nodes-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_1288450491" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Wiki-Nodes-panel.md">
<icon BUILTIN="emoji-26D4"/>
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
<node TEXT="content" ID="ID_1368613899">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation(1)" STYLE_REF="MarkdownHelperNode" ID="ID_1401541941"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="previousAndNext(1)" STYLE_REF="MarkdownHelperNode" ID="ID_876005135"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="-----" ID="ID_1265883417"/>
</node>
<node TEXT="docsInside(1)" STYLE_REF="MarkdownHelperNode" ID="ID_1823741666"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.docsInside(node)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="explicación panel 4" ID="ID_423165391"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The downmost part of the dialog contains buttons that inserts special nodes that help to transform a mindmap with multiple Markdown documents into a GITHUB wiki.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_12079331"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="how to show this dialog" ID="ID_1859082595"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>For this dialog panel to be shown you have to **click** on this button: $1</text>
</richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_669029299"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1350865283" LINK="#ID_1556455554"/>
</node>
</node>
</node>
<node TEXT="---" ID="ID_1513135499"/>
<node TEXT="In this table you can see the list with all the nodes and their descriptions:" ID="ID_936527787"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_515633323"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_1239643182">
<node TEXT="Button" ID="ID_436830084"/>
<node TEXT="Description" ID="ID_1991879426"/>
<node TEXT="Modifiers" ID="ID_1094275148"/>
</node>
<node TEXT="r" ID="ID_1794645910">
<node TEXT="currentLocation" ID="ID_1017552721"/>
<node TEXT="Description" STYLE_REF="Siguiente tarea" ID="ID_1695774672"/>
<node TEXT="You can add two childnodes to it to specify texts to go before and after the node&apos;s result. These are showed only if this node builds some content" ID="ID_1477008265"/>
</node>
<node TEXT="r" ID="ID_890880739">
<node TEXT="docsInside" ID="ID_1924013731"/>
<node TEXT="Description" STYLE_REF="Siguiente tarea" ID="ID_1331366489"/>
<node TEXT="You can add two childnodes to it to specify texts to go before and after the node&apos;s result. These are showed only if this node builds some content" ID="ID_1127182572"/>
</node>
<node TEXT="r" ID="ID_611779299">
<node TEXT="topDocsList" ID="ID_1448566123"/>
<node TEXT="Description" STYLE_REF="Siguiente tarea" ID="ID_68527123"/>
<node TEXT="If you add an icon (first icon), it shows only the MDH doc nodes that have that icon too" ID="ID_1027886643"/>
</node>
<node TEXT="r" ID="ID_390750646">
<node TEXT="structuredDocsList" ID="ID_1845560150"/>
<node TEXT="Description" STYLE_REF="Siguiente tarea" ID="ID_933381272"/>
<node TEXT="If you add an icon (first icon), it shows only the MDH doc nodes that have that icon too" ID="ID_1391339987"/>
</node>
<node TEXT="r" ID="ID_1195716865">
<node TEXT="linkToWikipage" ID="ID_747567886"/>
<node TEXT="Description" STYLE_REF="Siguiente tarea" ID="ID_141496520"/>
<node TEXT="" ID="ID_1294346469"/>
</node>
<node TEXT="r" ID="ID_1309877196">
<node TEXT="previousAndNext" ID="ID_1603070614"/>
<node TEXT="Description" STYLE_REF="Siguiente tarea" ID="ID_1242179387"/>
<node TEXT="You can add two childnodes to it to specify texts to go before and after the node&apos;s result. These are showed only if this node builds some content" ID="ID_120589932"/>
</node>
</node>
<node TEXT="horizontal line" STYLE_REF="MarkdownHelperNode" ID="ID_218141589"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_35224897"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="more info in" FOLDED="true" ID="ID_574305772"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More information and examples in the $1 page
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_439967333" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1074728735" LINK="#ID_361680479"/>
</node>
</node>
</node>
<node TEXT="previousAndNext(1)" STYLE_REF="MarkdownHelperNode" ID="ID_618650327"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1180283225"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Tutorial-Examples.md" STYLE_REF="MarkdownHelperNode" ID="ID_1865194865" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Tutorial-Examples.md">
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="false"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)</text>
</richcontent>
<node TEXT="content" FOLDED="true" ID="ID_1426210796">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1017312006" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_39223680" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1354425686"/>
</node>
<node TEXT="In this section you can see different examples of the features of the AddOn, their logic, parameters and use cases." ID="ID_1009866561"/>
<node TEXT="About *&quot;translating&quot;*" FOLDED="true" ID="ID_407202958">
<node TEXT="Freeplane is Markdown capable on its own. You don&apos;t need this AddOn to use Markdown in Freeplane. The AddOn is just a tool that helps in *&apos;translating&apos;* the mindmaping way of handle information into markdown type documents." ID="ID_232412550"/>
<node TEXT="Example" ID="ID_1500382231">
<node TEXT="An easy to understand example of this **&apos;*translating*&apos;** is the **web link** MDH node." ID="ID_1262427894">
<node TEXT="agregar link a weblink?" STYLE_REF="Tarea Descartada" ID="ID_1859443081">
<icon BUILTIN="emoji-26D4"/>
</node>
</node>
<node TEXT="It takes a node that has a link to a web page and formats it to presents its text and its URI in the markdown format:" ID="ID_718823695"/>
<node TEXT="* \[node&apos;s text\]\(node&apos;s link uri\)" ID="ID_58929043"/>
<node TEXT="-----" ID="ID_1643453879"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_955242676"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_605537485">
<node TEXT="Steps" ID="ID_1997705382"/>
<node TEXT="Image" ID="ID_864167097">
<icon BUILTIN="emoji-2194"/>
</node>
</node>
<node TEXT="r" ID="ID_347664058">
<node TEXT="1. Having a **node with a link** to a webpage" ID="ID_331924110"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_693477419" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1779446740" LINK="#ID_932222153"/>
</node>
</node>
<node TEXT="r" ID="ID_1295466164">
<node TEXT="2. The **MDH &apos;*web link*&apos; node** translates it.&#xa;Here we can see the result in the note of the node **in text format**" ID="ID_783354261"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_820904897" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1715277051" LINK="#ID_1654606312"/>
</node>
</node>
<node TEXT="r" ID="ID_1625226533">
<node TEXT="3. This image shows the same as the one above it, but now we can see the result **markdown interpreted**" ID="ID_1804354311"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1317220462" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_951402128" LINK="#ID_1681402618"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Markdown in freeplane" ID="ID_781649445">
<node TEXT="It is good to have an idea on how to do markdown in Freeplane without this addon too, because you can get the best results when combining both technics." ID="ID_1927204272"/>
<node TEXT="Some features of the Markdown Helper addon are very useful in some cases but are overcomplicated for other uses. It is up to you when to use them and when to go the standard markdown way. By knowing when to choose one or another your workflow will excel." ID="ID_1006878215"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1071430242"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="A little explanation on how to use Markdown in Freeplane can be seen here." ID="ID_783164557"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More information about this in the $1 page.
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_1462152485" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_145807473" LINK="#ID_619341818">
<node TEXT="aun no existe la página wiki" STYLE_REF="Tarea pendiente" ID="ID_568279723"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Good to know" FOLDED="true" ID="ID_871302716">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_681944580"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Please look at the **Markdown document.md** explanation before looking at the other functions of the AddOn." ID="ID_1095002437"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Please look at the **$1** explanation before looking at the other functions of the AddOn (MDH Nodes and Extras).
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_27740027" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_253032285" LINK="#ID_1723936029"/>
</node>
</node>
</node>
</node>
<node TEXT="----" ID="ID_1594754246"/>
<node TEXT="docsInside" ID="ID_1710218156" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="Pages in this section:" ID="ID_792615519"/>
<node TEXT="----" ID="ID_917469085"/>
</node>
<node TEXT="previousAndNext" ID="ID_740318588" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_607286699"/>
</node>
</node>
<node TEXT="TODO: cambiar nombre a Guide?" STYLE_REF="Tarea pendiente" ID="ID_1903933844">
<icon BUILTIN="emoji-26D4"/>
</node>
<node TEXT="Markdown-document.md" STYLE_REF="MarkdownHelperNode" ID="ID_1723936029" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-document.md" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_690326592">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_433965799" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_67572382" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_674075690"/>
</node>
<node TEXT="docsInside" ID="ID_1183629966" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="Table of contents" ID="ID_400504717">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_148553046">
<attribute NAME="TOClevels" VALUE="3" OBJECT="org.freeplane.features.format.FormattedNumber|3|#0.####"/>
<attribute NAME="TOCindent" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.TOC(node) //ef</text>
</richcontent>
</node>
</node>
<node TEXT="Foreground" FOLDED="true" ID="ID_1932221260">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_546517287"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="first: Markdown in Freeplane" ID="ID_433712213"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Before trying to understand this AddOn, it is good to know how the Markdown notation works and how you can use it in Freeplane. I recomend you to have a look at the $1 page first.
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_593028823" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_852108483" LINK="#ID_619341818"/>
</node>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1846197265"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="first: Formulas" ID="ID_1498978210"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      It is also good to have a little knowledge $1, what they are, how they work and when they get updated. Just to know that they exist and that this addon relies on them.
    </p>
  </body>
</html></richcontent>
<node TEXT="linkToWikipage" ID="ID_724385922" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1345047354" LINK="#ID_1013483585"/>
</node>
</node>
</node>
</node>
<node TEXT="The &quot;Markdown document.md&quot; node" FOLDED="true" ID="ID_1442176543" VGAP_QUANTITY="2 px">
<node TEXT="Definition" ID="ID_744847346">
<node TEXT="The &quot;Markdown document.md&quot; node is the central Markdown Helper feature." ID="ID_1615184994"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="Here you can see a simple example of this kind of nodes with descendants and how the builded document in its note looks like:" ID="ID_898733468"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1847511296" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1277013852" LINK="#ID_1666300950"/>
</node>
</node>
<node TEXT="Basic logic" ID="ID_161047862">
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_835285738"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Parent nodes" ID="ID_890212835">
<node TEXT="Nodes that have children are considered as headers." ID="ID_9129778"/>
<node TEXT="The text in the node is assigned as the header&apos;s text." ID="ID_1803279050"/>
<node TEXT="If the node has details or a note, they are considered as the first paragraphs under this header in the document." ID="ID_967731447"/>
</node>
<node TEXT="Leaf nodes" ID="ID_1093727853">
<node TEXT="Nodes without children are considered as document paragraphs." ID="ID_1700165280"/>
<node TEXT="If the node has details or a note, then the node&apos;s text is ignored and only the details and the note are included in the final document." ID="ID_224992276"/>
</node>
</node>
</node>
<node TEXT="Basic logic example" ID="ID_1368688726">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1501887196" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_884754289" LINK="#ID_628251191"/>
</node>
<node TEXT="in this image you can see that:" ID="ID_485168973"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_757970735"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="the &quot;Chapter 1&quot; node has **details** and a **note**" ID="ID_631738480"/>
<node TEXT="the text in this **details** is shown as the first paragraph under the header **&quot;Chapter 1&quot;**" ID="ID_204476376"/>
<node TEXT="The next paragraph is the text that is in the **note** (not shown in the image)" ID="ID_578484925"/>
<node TEXT="The last node bottom right is a **leaf node** (has no children)" ID="ID_1308569573"/>
<node TEXT="It has a **note** and no details." ID="ID_550533461"/>
<node TEXT="The text on the node is ignored in the final document and the last paragraph is the text in the node&apos;s note" ID="ID_1729400078"/>
</node>
<node TEXT="Here is animated for better understanding:" ID="ID_320468424"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1666240109" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_837288493" LINK="#ID_1688158345"/>
</node>
</node>
<node TEXT="Modifiers" ID="ID_678306203">
<node TEXT="Modifiers are icons or attributes that change the logic the Markdown Document node uses to build the markdown document in the node&apos;s note." ID="ID_142546924"/>
<node TEXT="Icons" ID="ID_655631743">
<node TEXT="Following icons can be used in the nodes of the branch to indicate to the Markdown Document node that those node must be interpreted in an special way." ID="ID_906336923"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_17168912"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_590847160">
<node TEXT="Modifier" ID="ID_1032204789"/>
<node TEXT="Explanation" ID="ID_1816878651"/>
</node>
<node TEXT="r" ID="ID_1344657448">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1537940240" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1466110276" LINK="#ID_846704092"/>
</node>
<node TEXT="This &apos;leaf&apos; icon indicates that the node must be treaten as a leaf node by the Markdown Document node. That means that its children won&apos;t be considered: they are invisible for the logic when building the markdown document.&#xa;This way you can add extra information in any branch that is useful to you but won&apos;t be shown in the document.&#xa;You can have a node that use a formula to get some result from its descendants and show only this result, but have the posibility to have the information you used to get this result right there and modify it if needed. The Freeplane mindmapping way." ID="ID_385119847"/>
</node>
<node TEXT="r" ID="ID_1436652439">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_348997861" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1482151354" LINK="#ID_1647115959"/>
</node>
<node TEXT="The &apos;no entry&apos; icon indicates that the node and all its desendants must be totally ignored by the Markdown Document node. They are invisible when building the markdown document.&#xa;This way you can add extra information that you don&apos;t need to be shown in the document." ID="ID_158995254"/>
</node>
<node TEXT="r" ID="ID_1052339338">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1545940884" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_320842663" LINK="#ID_413807381"/>
</node>
<node TEXT="The &apos;see-no-evil monkey&apos; icon indicates that the content of the node must be ignored by the Markdown Document node, but only this node, not its descendants. They stay visible for the Markdown Document node when building the markdown document.&#xa;This may help when you want to create some groups in the nodes tree, but you don&apos;t want that this affects the document structure." ID="ID_1095926586"/>
</node>
</node>
</node>
<node TEXT="Attributes" FOLDED="true" ID="ID_1318246327">
<node TEXT="The **&quot;Markdown Document.md&quot; node** has the following attributes that can be used to get different results when building the markdown document in the node&apos;s note." ID="ID_970974993"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_89360947" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_506350473" LINK="#ID_1584384688"/>
</node>
<node TEXT="It is good to know that if you have a markdown document inside another one, the logic uses the attributes values from the parent." ID="ID_1692990802"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_1762643597"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_891884960">
<node TEXT="Modifier" ID="ID_58266947"/>
<node TEXT="Posible&#xa;values" ID="ID_1688050446"/>
<node TEXT="Explanation" ID="ID_1404844207"/>
</node>
<node TEXT="r" ID="ID_1320968976">
<node TEXT="headersToUnderline" ID="ID_1925182442"/>
<node TEXT="0, 1, 2, 3, ..." ID="ID_1957645200"/>
<node TEXT="This Attribute indicates if the builder must add an extra line under the headers. The value indicates how many header&apos;s levels must be underlined. 0 indicates no underlining." ID="ID_1301642060"/>
</node>
<node TEXT="r" ID="ID_66154949">
<node TEXT="hideFolded" ID="ID_1473179670"/>
<node TEXT="true, false" ID="ID_315577351"/>
<node TEXT="This attribute indicates if nodes that are folded must be ignored by the Markdown document builder or not.&#xa;This works the same way as adding the &apos;no entry&apos; icon to those nodes." ID="ID_1199112487"/>
</node>
<node TEXT="r" ID="ID_310066607">
<node TEXT="headerNumbering" ID="ID_1078009445"/>
<node TEXT="true, false" ID="ID_691910777"/>
<node TEXT="This attribute indicates if the headers must be numbered or not" ID="ID_17841811"/>
</node>
<node TEXT="r" ID="ID_559146358">
<node TEXT="topHeadersNumbered" ID="ID_523686254"/>
<node TEXT="true, false" ID="ID_1998498278"/>
<node TEXT="This attribute indicates if the top header level must be included in the headers numbering or not." ID="ID_603280426"/>
</node>
<node TEXT="r" ID="ID_872878535">
<node TEXT="topHeaderStartingNumber" ID="ID_1227115065"/>
<node TEXT="0, 1, 2, 3, ..." ID="ID_1445077419"/>
<node TEXT="This attribute indicates the starting number for the headers numbering.&#xa;This can be useful if you have separate documents for each chapter of a bigger book, for example." ID="ID_244772438"/>
</node>
<node TEXT="r" ID="ID_1155691933">
<node TEXT="fileLinksRelative" ID="ID_733362552"/>
<node TEXT="true, false" ID="ID_908403667"/>
<node TEXT="This attribute indicates if the ***links MDH nodes&apos;** must translate the URIs as relative or absolute ones.&#xa;This is helpful to view the images or link the files if working in your own computer, but be able to export it to web location or other computer and continue working." ID="ID_562188282"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1618684146" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_424996176"/>
</node>
</node>
<node TEXT="Markdown-document-modifiers-examples.md" STYLE_REF="MarkdownHelperNode" ID="ID_784339167" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-document-modifiers-examples.md" HGAP_QUANTITY="14.75 pt" VSHIFT_QUANTITY="0.75 pt">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="140.25 pt" VALUE_WIDTH="56.25 pt"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_756525389">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_366913679" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_1215682771" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1065340719"/>
</node>
<node TEXT="docsInside" ID="ID_873923923" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="Table of contents" ID="ID_506952719">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_146856805">
<attribute NAME="TOClevels" VALUE="4" OBJECT="org.freeplane.features.format.FormattedNumber|4|#0.####"/>
<attribute NAME="TOCindent" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.TOC(node) // xxxzz</text>
</richcontent>
</node>
</node>
<node TEXT="-----" ID="ID_914363293"/>
<node TEXT="Icons" FOLDED="true" ID="ID_1290436136">
<node ID="ID_1184122163" TREE_ID="ID_906336923"/>
<node TEXT="&apos;Leaf&apos; icon" ID="ID_1811016108">
<node ID="ID_1811682212" TREE_ID="ID_1537940240">
<node ID="ID_50418886" TREE_ID="ID_1466110276"/>
</node>
<node ID="ID_297843003" TREE_ID="ID_385119847"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_717419289" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_383716513" LINK="#ID_741879942"/>
</node>
</node>
<node TEXT="&apos;no entry&apos; icon" ID="ID_458819857">
<node ID="ID_690346734" TREE_ID="ID_348997861">
<node ID="ID_1452820070" TREE_ID="ID_1482151354"/>
</node>
<node ID="ID_388284857" TREE_ID="ID_158995254"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1555277817" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1674352548" LINK="#ID_999929514"/>
</node>
</node>
<node TEXT="&apos;see-no-evil monkey&apos; icon" ID="ID_1584100305">
<node ID="ID_860993877" TREE_ID="ID_1545940884">
<node ID="ID_555772965" TREE_ID="ID_320842663"/>
</node>
<node ID="ID_641233392" TREE_ID="ID_1095926586"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_723292115" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_616762731" LINK="#ID_1497405467"/>
</node>
</node>
</node>
<node TEXT="----" ID="ID_1090984033"/>
<node TEXT="Attributes" FOLDED="true" ID="ID_504106832">
<node ID="ID_1919231855" TREE_ID="ID_970974993"/>
<node ID="ID_1914937847" TREE_ID="ID_89360947">
<node ID="ID_1610605547" TREE_ID="ID_506350473"/>
</node>
<node ID="ID_450312083" TREE_ID="ID_1692990802"/>
<node TEXT="headersToUnderline" ID="ID_941487276">
<node ID="ID_656092233" TREE_ID="ID_1301642060"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_480451863" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_18435657" LINK="#ID_139387978"/>
</node>
</node>
<node TEXT="hideFolded" ID="ID_385016754">
<node ID="ID_1001914055" TREE_ID="ID_1199112487"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_285450646" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1704688192" LINK="#ID_626702459"/>
</node>
</node>
<node TEXT="Headers numbering" ID="ID_1246666312">
<node TEXT="headerNumbering" ID="ID_64791446">
<node ID="ID_1296348469" TREE_ID="ID_17841811"/>
</node>
<node TEXT="topHeadersNumbered" ID="ID_1805237001">
<node ID="ID_1492358379" TREE_ID="ID_603280426"/>
</node>
<node TEXT="topHeaderStartingNumber" ID="ID_783560803">
<node ID="ID_348906935" TREE_ID="ID_244772438"/>
</node>
<node TEXT="example" ID="ID_738721111">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_331796221" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_968519541" LINK="#ID_1869821183"/>
</node>
</node>
</node>
<node TEXT="fileLinksRelative" ID="ID_1094730480">
<node ID="ID_1019369923" TREE_ID="ID_562188282"/>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1660959295" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1451538631"/>
</node>
</node>
</node>
</node>
<node TEXT="MDH-nodes.md" STYLE_REF="MarkdownHelperNode" ID="ID_633931909" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/MDH-nodes.md" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_257775792">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1780891444" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_155384423" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1356665731"/>
</node>
<node TEXT="Table of Contents" ID="ID_234872564">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_1844137029">
<attribute NAME="TOClevels" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="TOCindent" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.TOC(node)//</text>
</richcontent>
</node>
</node>
<node TEXT="Introduction" FOLDED="true" ID="ID_1120724309">
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_916538146"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_346748392">
<node TEXT="" ID="ID_162304528"/>
<node TEXT="" ID="ID_612622516"/>
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
<node TEXT="All MDH nodes are nodes that translates or builds some information into the markdown writing format." ID="ID_1633776057"/>
<node TEXT="They have a special defined style that includes the &quot;leaf&quot; icon. That means that the Markdown Document node takes its content but ignores all descendants of this kind of nodes." ID="ID_1209818117"/>
</node>
<node TEXT="Markdown Helper nodes" ID="ID_1774584085">
<node TEXT="Markdown document.md" FOLDED="true" ID="ID_1271671167">
<node ID="ID_1609217875" TREE_ID="ID_1325423218"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_704039717"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="more information .." ID="ID_6243890"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More detailled information in the $1 page.
    </p>
  </body>
</html></richcontent>
<node TEXT="link to wikipage" ID="ID_959302503" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
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
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1974155536" LINK="#ID_1723936029"/>
</node>
</node>
</node>
</node>
<node TEXT="horizontal line" ID="ID_231476520">
<node ID="ID_944748524" TREE_ID="ID_1906393819"/>
</node>
<node TEXT="Other Markdown Helper nodes examples" ID="ID_25655400">
<node TEXT="docsInside" ID="ID_119818500" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1938123418"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="result doc" ID="ID_99784352"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The resulting document can be seen here: $1
    </p>
  </body>
</html></richcontent>
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_1089872481"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.fileLink(node,&apos;../raw/&apos;,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_625629302" LINK="#ID_474132283"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1934504689" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1429053588"/>
</node>
</node>
<node TEXT="ToC-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1232286520" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/ToC-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_857514274">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1965513133" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_1078846595" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1354119852"/>
</node>
<node TEXT="ToC" ID="ID_1352136013">
<node ID="ID_820366696" TREE_ID="ID_205398220"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_601905948"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="It has two attributes that modifies its content" ID="ID_738273954">
<node TEXT="TOClevels" ID="ID_1736370834">
<node TEXT="Indicates how many headers levels must be included in the table of content" ID="ID_1779822750"/>
<node TEXT="Integer" ID="ID_679297047"/>
</node>
<node TEXT="TOCindent" ID="ID_422691685">
<node TEXT="Indicates if the headers in the table must be indented or not." ID="ID_486447285"/>
<node TEXT="Boolean" ID="ID_524995356"/>
</node>
</node>
</node>
<node TEXT="ToC example" ID="ID_1044042573">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_553988761" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node, true) 
// xxx</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1792566711" LINK="#ID_723123711"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_570921241"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_1306535591" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1756803369"/>
</node>
</node>
</node>
<node TEXT="Web-Link-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1684208820" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Web-Link-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_620361137">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_982459026" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_311694122" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_353324681"/>
</node>
<node TEXT="web link" ID="ID_993064222">
<node ID="ID_1654952654" TREE_ID="ID_1791474806"/>
<node TEXT="Example" ID="ID_1186335196">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1319061313" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1605736368" LINK="#ID_1630985854"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1203271837"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_716835890" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_857266272"/>
</node>
</node>
</node>
<node TEXT="Web-Image-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_52705290" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Web-Image-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1832326592">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1854623175" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_1957298994" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_485435179"/>
</node>
<node TEXT="web Image" ID="ID_589363603">
<node ID="ID_930359615" TREE_ID="ID_1376338644"/>
<node TEXT="Example" ID="ID_403213067">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1859042292" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1133771364" LINK="#ID_1511992597"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1401504687"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_1826331113" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1474443085"/>
</node>
</node>
</node>
<node TEXT="Link-To-Local-File-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_695451635" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Link-To-Local-File-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1071845525">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1088731070" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_751929797" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_663129690"/>
</node>
<node TEXT="link to local file" ID="ID_967186942">
<node ID="ID_1763905173" TREE_ID="ID_1150239509"/>
<node TEXT="Example" ID="ID_1933103337">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1863010842" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_461775913" LINK="#ID_277975381"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1558795191"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_1933690620" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1719103284"/>
</node>
</node>
</node>
<node TEXT="Local-Image-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_669426396" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Local-Image-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1980162262">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1332078115" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_269517419" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_606494488"/>
</node>
<node TEXT="local image" ID="ID_459126336">
<node ID="ID_891449310" TREE_ID="ID_1995019202"/>
<node TEXT="Example" ID="ID_621624181">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1044444914" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_892740839" LINK="#ID_93564966"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_553541981"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_1471328543" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_835611208"/>
</node>
</node>
</node>
<node TEXT="Ways-to-assign-a-link.md" STYLE_REF="MarkdownHelperNode" ID="ID_1452920882" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Ways-to-assign-a-link.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1386466500">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1149470457" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_186465412" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_475272848"/>
</node>
<node TEXT="Ways to assign a link" ID="ID_662270512">
<node TEXT="There are four MDH node types to transform a link form a node into markdown format" ID="ID_507848226"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1767392712"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="web link" ID="ID_219101854"/>
<node TEXT="web Image" ID="ID_1302134988"/>
<node TEXT="link to local file" ID="ID_659370553"/>
<node TEXT="local Image" ID="ID_368687070"/>
</node>
<node TEXT="All four nodes use the same logic to get the links information by looking at their child nodes." ID="ID_75771283"/>
<node TEXT="In the previous pages we could see the standard way to assign a link, but there are more ways:" ID="ID_872245387"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1343616973">
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
</html></richcontent>
<node TEXT="By adding a child to the MDH node" ID="ID_1661571946">
<node TEXT="child with direct link to file" ID="ID_492011616" MIN_WIDTH="5 cm"/>
<node TEXT="child is clone of node with direct link to file" ID="ID_630827377"/>
<node TEXT="child has connector to node  with direct link to file" ID="ID_46812540"/>
<node TEXT="child has link to node  with direct link to file" ID="ID_1697661517"/>
</node>
<node TEXT="Assigning the link directly to the MDH node" ID="ID_1665047306">
<node TEXT="node has connector to node  with direct link to file" ID="ID_1979163453"/>
<node TEXT="node has link to node  with direct link to file" ID="ID_1253542410"/>
</node>
</node>
<node TEXT="The ways to assign a link" ID="ID_445282608">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_815299493" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_43361371" LINK="#ID_1533585553"/>
</node>
</node>
<node TEXT="Animation: Assigning the same image in every possible way" ID="ID_285079941">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1355708114" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_109523405" LINK="#ID_1143746605"/>
</node>
</node>
</node>
<node TEXT="Using the &apos;to be linked&apos; nodes" ID="ID_1366111969">
<node TEXT="As you can see in the upper animation, when adding a child and linking it to a &quot;node with a link&quot;, you get the links information, but the child nodes texts aren&apos;t very helpful." ID="ID_1532088320"/>
<node TEXT="That&apos;s why I added the &apos;to be linked&apos; nodes." ID="ID_1964257990"/>
<node TEXT="They doesn&apos;t add any functionality, but they show in their text the text of the linked node, helping to have a better overview in the map." ID="ID_649912601"/>
<node TEXT="Please look at the following animation for better understanding." ID="ID_1775153748"/>
<node TEXT="The node&apos;s texts update themself" ID="ID_778974328">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1460048240" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_364551109" LINK="#ID_1514218151"/>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_808527818" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_168414202"/>
</node>
</node>
</node>
<node TEXT="List-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1407037290" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/List-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_373461530">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_679972907" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_1849166811" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_75186097"/>
</node>
<node TEXT="list" ID="ID_892229846">
<node ID="ID_208846566" TREE_ID="ID_1968544542"/>
<node TEXT="Modifiers" ID="ID_144023087">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_636826169"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1608043155"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1405273966" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_40434924" LINK="#ID_1630580039"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1287053397" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_258596863" LINK="#ID_23311262"/>
</node>
</node>
</node>
</node>
<node TEXT="List example" ID="ID_1895295787">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1330727022" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_682438791" LINK="#ID_1810589116"/>
</node>
</node>
<node TEXT="Numbered list - example 1" ID="ID_105609115">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1913839279" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_250671405" LINK="#ID_874556509"/>
</node>
</node>
<node TEXT="Numbered list - example 2" ID="ID_31613875">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_710979356" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_442571545" LINK="#ID_1881998686"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1043605255"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_434960867" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1634499536"/>
</node>
</node>
</node>
<node TEXT="Plain-Task-List-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1493636815" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Plain-Task-List-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_815069289">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_138701378" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_375685051" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_979620714"/>
</node>
<node TEXT="plain task list" ID="ID_605109150">
<node ID="ID_1559620646" TREE_ID="ID_321923834"/>
<node TEXT="Modifiers" ID="ID_236114154">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_827043414"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1683551776"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1363294655" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1868677313" LINK="#ID_1794146171"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1918971112" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_532029130" LINK="#ID_1831950189"/>
</node>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_278337443">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_697700837" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1026582327" LINK="#ID_1622565705"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1215981961"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_1544365081" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_975679515"/>
</node>
</node>
</node>
<node TEXT="Nested-Task-List-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1973326803" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Nested-Task-List-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_403182541">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1204388281" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_599535322" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1293549300"/>
</node>
<node TEXT="nested task list" ID="ID_1963577249">
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
<node TEXT="Example" ID="ID_853909907">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_358113692" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_974890573" LINK="#ID_1991987286"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_136750438"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_335611901" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_815139691"/>
</node>
</node>
</node>
<node TEXT="Table-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1815573524" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Table-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" FOLDED="true" ID="ID_931679234">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_782197238" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_601469136" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_542794445"/>
</node>
<node TEXT="table" ID="ID_191131104">
<node ID="ID_1004562894" TREE_ID="ID_414157073"/>
<node TEXT="Modifiers" ID="ID_1600799966">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1781690651"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1655437995"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1632860379" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1661747788" LINK="#ID_215172306"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1276163101" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_588792360" LINK="#ID_920768424"/>
</node>
</node>
</node>
</node>
<node TEXT="Table example" ID="ID_1396069728">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1351634586" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_472916951" LINK="#ID_608624469">
<node TEXT="TODO: actualizar para que se vean los bordes de tabla" STYLE_REF="Tarea pendiente" ID="ID_1703874099"/>
</node>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1087678156"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_516554286" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1838771445"/>
</node>
</node>
</node>
<node TEXT="Code-Block-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_304858143" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Code-Block-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_478020164">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1103001484" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_1570990277" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1352369139"/>
</node>
<node TEXT="code block" ID="ID_1699446565">
<node ID="ID_324714799" TREE_ID="ID_1719308891"/>
<node TEXT="Rules" ID="ID_341843650">
<node TEXT="The &apos;code block&apos; node looks for its first child that fulfills this rules:" ID="ID_625911851"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1561893391"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="node&apos;s details starts with a dot &apos;.&apos;" ID="ID_176365765"/>
<node TEXT="it has a note" ID="ID_247716240"/>
</node>
<node TEXT="and translates its content this way:" ID="ID_864210890"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_599457691"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="takes the node&apos;s text as &quot;title&quot; of the code shown" ID="ID_820083568"/>
<node TEXT="uses the first word after the dot in the details as the language of the code block" ID="ID_1708721834"/>
<node TEXT="uses the text in the node as the code" ID="ID_279852421"/>
</node>
</node>
<node TEXT="code block" STYLE_REF="MarkdownHelperNode" ID="ID_1424818165">
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
<node TEXT="how the code block is builded" ID="ID_1459213408"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="Example code" ID="ID_248284354">
<node TEXT="example code" ID="ID_1159825936"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>Code: \*\*&apos;[node&apos;s text]&apos;\*\*

\```language

[node&apos;s note]

\```</text>
</richcontent>
<richcontent CONTENT-TYPE="plain/" TYPE="DETAILS"/>
</node>
</node>
<node TEXT="Example" ID="ID_1659998585">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1768291547" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1682057378" LINK="#ID_1403255199"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_500788112"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_957554529" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1795410370"/>
</node>
</node>
</node>
<node TEXT="Text-Block-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_369712842" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Text-Block-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" FOLDED="true" ID="ID_1101142281">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1879397448" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_1434673202" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_615662920"/>
</node>
<node TEXT="text block" ID="ID_666019421">
<node ID="ID_947422584" TREE_ID="ID_1332466658"/>
<node TEXT="Example" ID="ID_21527120">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_101004085" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_739779023" LINK="#ID_773557304"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1941125083"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="TODO: Agregar parrafo y link a botón que extrae parámetros" STYLE_REF="Tarea pendiente" ID="ID_1946053274"/>
</node>
<node TEXT="previousAndNext" ID="ID_437369562" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1259741911"/>
</node>
</node>
</node>
<node TEXT="Comment-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_903601228" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Comment-example.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_1864531601">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1991880192" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_1370368821" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1596185430"/>
</node>
<node TEXT="comment" ID="ID_1649775184">
<node ID="ID_1047032463" TREE_ID="ID_1011349463"/>
<node TEXT="Example" ID="ID_1449955968">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_891030534" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" STYLE_REF="MarkdownHelperLink" ID="ID_1357679536" LINK="#ID_1620682938"/>
</node>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1539142773"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_334188655" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1509352092"/>
</node>
</node>
</node>
</node>
<node TEXT="Extras.md" STYLE_REF="MarkdownHelperNode" ID="ID_502227104" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Extras.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="false"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" FOLDED="true" ID="ID_207765965">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1178455116" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_1181557468" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_211161092"/>
</node>
<node TEXT="docsInside" ID="ID_1743066839" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="Table of Contents" ID="ID_1009196896">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_1594675683">
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
</html></richcontent>
</node>
</node>
<node TEXT="locked" STYLE_REF="locked" ID="ID_325892462">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="Help" FOLDED="true" ID="ID_1692793679">
<node ID="ID_831961113" TREE_ID="ID_661017996">
<node ID="ID_1900759303" TREE_ID="ID_1378301212"/>
</node>
<node ID="ID_1029735664" TREE_ID="ID_1760466771"/>
<node ID="ID_437282596" TREE_ID="ID_478708737"/>
</node>
<node TEXT="Export as node" ID="ID_15714015">
<node ID="ID_1691048020" TREE_ID="ID_1190915897">
<node ID="ID_116629300" TREE_ID="ID_937000663"/>
</node>
<node ID="ID_189618531" TREE_ID="ID_1886394757"/>
<node ID="ID_970378712" TREE_ID="ID_999628118"/>
<node TEXT="Example: exporting a NDH list" ID="ID_1791641259">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1015297961"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_969241007" LINK="#ID_1723344385"/>
</node>
</node>
<node TEXT="Example: exporting a MDH Doc" ID="ID_144213486">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1998484635"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1544974769" LINK="#ID_135925025"/>
</node>
</node>
</node>
<node TEXT="Jump to Markdown Document and back" FOLDED="true" ID="ID_1003452445">
<node ID="ID_442686995" TREE_ID="ID_429477830">
<node ID="ID_1884423662" TREE_ID="ID_1106593427"/>
</node>
<node ID="ID_969504543" TREE_ID="ID_815671628"/>
<node TEXT="Example" ID="ID_1999671309">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_62241626"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_822394115" LINK="#ID_1650791776"/>
</node>
</node>
</node>
<node TEXT="Save as File" FOLDED="true" ID="ID_18241291">
<node ID="ID_1986470523" TREE_ID="ID_1925529429">
<node ID="ID_1067258859" TREE_ID="ID_1972414744"/>
</node>
<node ID="ID_1389650530" TREE_ID="ID_1014715066"/>
<node ID="ID_774338190" TREE_ID="ID_232736594"/>
<node TEXT="Example" ID="ID_1202177096">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1268306553"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,true)</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1348008523" LINK="#ID_1353656225"/>
</node>
</node>
</node>
<node TEXT="Define base folder path" ID="ID_1957296082">
<node ID="ID_129946716" TREE_ID="ID_1368549179">
<node ID="ID_1271232912" TREE_ID="ID_178050385"/>
</node>
<node ID="ID_21592862" TREE_ID="ID_569136296"/>
<node ID="ID_996712979" TREE_ID="ID_191864898"/>
<node TEXT="Example" STYLE_REF="Tarea pendiente" ID="ID_1471216478"/>
</node>
<node TEXT="TODO: extrae parametros textBlock" ID="ID_1109762488">
<node TEXT="TODO: imagen" STYLE_REF="Tarea pendiente" ID="ID_1034231570"/>
<node TEXT="TODO: Descripción" STYLE_REF="Tarea pendiente" ID="ID_1960987760"/>
<node TEXT="TODO: example gif" STYLE_REF="Tarea pendiente" ID="ID_1860164887"/>
</node>
<node TEXT="Insert &apos;to be linked&apos; node" ID="ID_202537644">
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
<node TEXT="Chain of links" ID="ID_312839883">
<node TEXT="TODO: descripción chain of links" STYLE_REF="Tarea pendiente" ID="ID_385706618"/>
<node TEXT="TODO: example gif" STYLE_REF="Tarea pendiente" ID="ID_1140127114"/>
</node>
<node TEXT="type of links" ID="ID_1414845749">
<node TEXT="to" ID="ID_1969431368">
<node TEXT="connector" STYLE_REF="Tarea pendiente" ID="ID_837037586"/>
<node TEXT="local link to node" STYLE_REF="Tarea pendiente" ID="ID_1035470521"/>
</node>
<node TEXT="final node" ID="ID_1540698699">
<node TEXT="link to file (or image)" STYLE_REF="Tarea pendiente" ID="ID_24601800"/>
<node TEXT="embeded image" STYLE_REF="Tarea pendiente" ID="ID_637380711"/>
<node TEXT="link to webpage / file" STYLE_REF="Tarea pendiente" ID="ID_708565316"/>
</node>
</node>
<node TEXT="nuevo toma automàticamente link de nodo seleccionado" STYLE_REF="Tarea pendiente" ID="ID_917961245"/>
</node>
<node TEXT="TODO: show/hide wiki buttons panel" ID="ID_1383649648">
<node TEXT="TODO: imagen" STYLE_REF="Tarea pendiente" ID="ID_1828194758"/>
<node TEXT="TODO: Descripción" STYLE_REF="Tarea pendiente" ID="ID_1461422739"/>
<node TEXT="TODO: example gif" STYLE_REF="Tarea pendiente" ID="ID_412926051"/>
</node>
<node TEXT="TODO: patch button" ID="ID_817969557">
<node TEXT="TODO: imagen" STYLE_REF="Tarea pendiente" ID="ID_1177511008"/>
<node TEXT="TODO: Descripción" STYLE_REF="Tarea pendiente" ID="ID_64599619"/>
<node TEXT="TODO: example gif" STYLE_REF="Tarea pendiente" ID="ID_1628656608"/>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_119416677" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1008359219"/>
</node>
</node>
</node>
<node TEXT="URI-management.md" STYLE_REF="MarkdownHelperNode" ID="ID_1832804564" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/URI-management.md">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="content" FOLDED="true" ID="ID_597639917">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_875095684" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_686754974" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_141371047"/>
</node>
<node TEXT="docsInside" ID="ID_1219415595" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="Work in progress" ID="ID_1108384199">
<node TEXT="casos especiales Local" STYLE_REF="Tarea pendiente" ID="ID_1623848991"/>
<node TEXT="diferentes posibilidades de parametros de Link to Local FIle e ImageFile" STYLE_REF="Tarea pendiente" ID="ID_1494002374"/>
</node>
<node TEXT="previousAndNext" ID="ID_1890408692" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_426041356"/>
</node>
</node>
</node>
<node TEXT="wiki-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_361680479" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/wiki-panel.md">
<icon BUILTIN="emoji-26D4"/>
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
</html></richcontent>
<node TEXT="content" ID="ID_1490755392">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation(1)" STYLE_REF="MarkdownHelperNode" ID="ID_659310757"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.currentLocation(node)
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="previousAndNext(1)" STYLE_REF="MarkdownHelperNode" ID="ID_934722115"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_1913956764"/>
</node>
<node TEXT="Table of Contents" ID="ID_1540177910">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_1893892557">
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
</html></richcontent>
</node>
</node>
<node TEXT="Introduction" ID="ID_589214695">
<node TEXT="introduction" STYLE_REF="Tarea pendiente" ID="ID_1182515304"/>
</node>
<node TEXT="Wiki MDH nodes" ID="ID_479948524">
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_522325442"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="currentLocation" STYLE_REF="Tarea pendiente" ID="ID_88748756"/>
<node TEXT="docsInside" STYLE_REF="Tarea pendiente" ID="ID_1531960030"/>
<node TEXT="topDocsList" STYLE_REF="Tarea pendiente" ID="ID_544100482"/>
<node TEXT="structuredDocsList" STYLE_REF="Tarea pendiente" ID="ID_945593619"/>
<node TEXT="linkToWikipage" STYLE_REF="Tarea pendiente" ID="ID_1352813723"/>
<node TEXT="previousAndNext" STYLE_REF="Tarea pendiente" ID="ID_1007614509"/>
</node>
</node>
<node TEXT="previousAndNext(1)" STYLE_REF="MarkdownHelperNode" ID="ID_1234552273"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.WikiTools.previousAndNext(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="-----" ID="ID_536162797"/>
</node>
</node>
<node TEXT="guardar como archivo" STYLE_REF="Tarea pendiente" ID="ID_1604152478">
<icon BUILTIN="emoji-26D4"/>
</node>
</node>
</node>
<node TEXT="Examples.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_513131525">
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
</html></richcontent>
<node TEXT="content" FOLDED="true" ID="ID_481079629">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="TODO: content" STYLE_REF="Tarea pendiente" ID="ID_1110501452"/>
</node>
<node TEXT="guardar como archivo" STYLE_REF="Tarea pendiente" ID="ID_1305593980">
<icon BUILTIN="emoji-26D4"/>
</node>
<node TEXT="Creating-README.MD-for-GITHUB.md" STYLE_REF="MarkdownHelperNode" ID="ID_1118407216">
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
</html></richcontent>
<node TEXT="content" FOLDED="true" ID="ID_1579270234">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="TODO: content" STYLE_REF="Tarea pendiente" ID="ID_25826736"/>
</node>
<node TEXT="guardar como archivo" STYLE_REF="Tarea pendiente" ID="ID_337176685">
<icon BUILTIN="emoji-26D4"/>
</node>
</node>
<node TEXT="Creating-Wiki-in-GITHUB.md" STYLE_REF="MarkdownHelperNode" ID="ID_146109289">
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
</html></richcontent>
<node TEXT="content" FOLDED="true" ID="ID_118745213">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="TODO: content" STYLE_REF="Tarea pendiente" ID="ID_71838490"/>
</node>
<node TEXT="guardar como archivo" STYLE_REF="Tarea pendiente" ID="ID_906892883">
<icon BUILTIN="emoji-26D4"/>
</node>
</node>
</node>
<node TEXT="borradores" FOLDED="true" ID="ID_533935512"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      postergados
    </p>
  </body>
</html></richcontent>
<node TEXT="Guide.md" STYLE_REF="MarkdownHelperNode" ID="ID_607240369">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="46.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
 </text>
</richcontent>
<node TEXT="content" FOLDED="true" ID="ID_1946417255">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1851158014" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1322880842" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1128573075"/>
</node>
<node TEXT="horizontal line" STYLE_REF="MarkdownHelperNode" ID="ID_1281429669"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
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
<node TEXT="parrafo con info" STYLE_REF="Tarea pendiente" ID="ID_1261445403"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="horizontal line" STYLE_REF="MarkdownHelperNode" ID="ID_288990799"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
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
<node TEXT="docsInside" ID="ID_272433030" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.docsInside(node)

//cambio masivo docsInside</text>
</richcontent>
</node>
<node TEXT="parrafo con info" STYLE_REF="Tarea pendiente" ID="ID_1365145687"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="previousAndNext" ID="ID_192277716" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_199257388"/>
</node>
</node>
</node>
<node TEXT="Markdown-in-Freeplane.md" STYLE_REF="MarkdownHelperNode" ID="ID_619341818">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" FOLDED="true" ID="ID_1749183462" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_55891498" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_438167552" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1126128593"/>
</node>
<node TEXT="docsInside" ID="ID_987827803" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="What is Markdown?" ID="ID_1658738098">
<node TEXT="here comes an explanation about markdown" ID="ID_1586576889"/>
<node TEXT="Work in progress ...." STYLE_REF="Tarea pendiente" ID="ID_84386400"/>
</node>
<node TEXT="Where can it be used in Freeplane?" ID="ID_1979536871">
<node TEXT="Work in progress ...." STYLE_REF="Tarea pendiente" ID="ID_138875141"/>
</node>
<node TEXT="Some examples" ID="ID_541634829">
<node TEXT="Work in progress ...." STYLE_REF="Tarea pendiente" ID="ID_1188871731"/>
</node>
<node TEXT="previousAndNext" ID="ID_1864476700" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1606126257"/>
</node>
</node>
</node>
<node TEXT="about-Freeplane-formulas.md" STYLE_REF="MarkdownHelperNode" ID="ID_1013483585">
<icon BUILTIN="emoji-26D4"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
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
<node TEXT="content" FOLDED="true" ID="ID_1595823225">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1215355287" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="previousAndNext" ID="ID_189573776" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_996108677"/>
</node>
<node TEXT="docsInside" ID="ID_493747795" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_217539551"/>
<node TEXT="content" FOLDED="true" ID="ID_594196428">
<node TEXT="explicación de que son las fórmulas" ID="ID_237393629"/>
<node TEXT="explicar sus características" ID="ID_63834615"/>
<node TEXT="necesita que se salga y vuelva a nodo para que se recalcule" ID="ID_734771434"/>
</node>
<node TEXT="some examples" FOLDED="true" ID="ID_118124717">
<icon BUILTIN="emoji-1F343"/>
<node TEXT="=15*3 +12" ID="ID_965358613"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
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
<node TEXT="= Math.cos(Math.PI/3)" ID="ID_92255049"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
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
<node TEXT="= node.children.sum{it.value.to.num0}" ID="ID_958217358">
<node TEXT="45" OBJECT="java.lang.Long|45" ID="ID_1241520859"/>
<node TEXT="12" OBJECT="java.lang.Long|12" ID="ID_1988010007"/>
<node TEXT="hello world" ID="ID_410254321"/>
<node TEXT="15" OBJECT="java.lang.Long|15" ID="ID_877541763"/>
<node TEXT="27" OBJECT="java.lang.Long|27" ID="ID_814827773"/>
<node TEXT="56" OBJECT="java.lang.Long|56" ID="ID_1866815356"/>
</node>
<node TEXT="= node.children?node.children.sum{it.value.to.num0}:&apos;no children nodes&apos;" ID="ID_1259495119">
<node TEXT="45" OBJECT="java.lang.Long|45" ID="ID_1644689937"/>
<node TEXT="12" OBJECT="java.lang.Long|12" ID="ID_988061342"/>
<node TEXT="hello world" ID="ID_1305955536"/>
<node TEXT="27" OBJECT="java.lang.Long|27" ID="ID_1349242405"/>
<node TEXT="56" OBJECT="java.lang.Long|56" ID="ID_1510947058"/>
</node>
<node TEXT="= node.connectorsOut?node.connectorsOut.getAt(0).target.text:&apos;no connectorOut&apos;" ID="ID_758038776">
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
<node TEXT="= c.selected==node?&apos;this very node&apos;:c.selected.value" ID="ID_80622038"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
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
<node TEXT="previousAndNext" ID="ID_559835038" BACKGROUND_COLOR="#a6cba6">
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
<node TEXT="-----" ID="ID_1472460263"/>
</node>
</node>
<node TEXT="Freeplane wiki: Formulas" ID="ID_525036067" LINK="https://www.freeplane.org/wiki/index.php/Formulas"/>
</node>
<node TEXT="About.md" STYLE_REF="MarkdownHelperNode" ID="ID_468621347">
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)</text>
</richcontent>
<node TEXT="content" FOLDED="true" ID="ID_264860380">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="donación.md" STYLE_REF="Tarea pendiente" ID="ID_849014079"/>
<node TEXT="agradecimientos" ID="ID_1046825975">
<node TEXT="Dimitry" ID="ID_1837620210"/>
<node TEXT="lilive" ID="ID_46691070"/>
<node TEXT="otros" ID="ID_210963894"/>
</node>
<node TEXT="x" ID="ID_60272875"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="x" ID="ID_804325431"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= &quot;2 +2 = &quot; + (2+2)</text>
</richcontent>
</node>
</node>
</node>
<node TEXT="About Freeplane Styles" STYLE_REF="Organizador" ID="ID_468781740">
<icon BUILTIN="emoji-26D4"/>
<node TEXT="content" STYLE_REF="Tarea pendiente" FOLDED="true" ID="ID_747947058">
<node TEXT="What are Styles" ID="ID_1422360585">
<node TEXT="Freeplane Wiki: Node Styles" ID="ID_1507974500" LINK="https://www.freeplane.org/wiki/index.php/Node_styles"/>
</node>
<node TEXT="What are conditional Styles" ID="ID_1999287480">
<node TEXT="https://www.freeplane.org/wiki/index.php/Conditional_node_styles" ID="ID_390587621" LINK="https://www.freeplane.org/wiki/index.php/Conditional_node_styles"/>
</node>
<node TEXT="What are map templates" ID="ID_1478252249">
<node TEXT="Freeplane wiki: Map templates" ID="ID_1676963784" LINK="https://www.freeplane.org/wiki/index.php/Map_templates"/>
</node>
<node TEXT="a partir de v1.9.0" ID="ID_1231358808"/>
</node>
</node>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1079685359">
<attribute NAME="log_MDI" VALUE="No"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2021-05-15&nbsp;&nbsp;19:27:54
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
      5.1 seconds
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
<node TEXT="scripts apoyo" ID="ID_1658831433">
<node TEXT="scripts" STYLE_REF="Organizador" ID="ID_1363289282">
<node TEXT="aún útiles" STYLE_REF="Organizador" ID="ID_107293823">
<node TEXT="guarda doc y selecciona siguiente" ID="ID_420232279">
<icon BUILTIN="forward"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
      return &quot;hecho: $thisDocNode&nbsp;&nbsp;$j&quot;
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
      busca desde nodo seleccionado
    </p>
  </body>
</html></richcontent>
</node>
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
<node TEXT="cambiar fileLinksRelative a true o false" ID="ID_500468903">
<icon BUILTIN="forward"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
      def nodos = c.selecteds.findAll{n -&gt; n.attributes.containsKey(att)}
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
    <p>
      
    </p>
    <p>
      return &quot;Attribute '$att' changed to '$opcion' to ${nodos.size()} nodes&quot;
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
      a nodos seleccionados (que tengan el atributo)
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="transformar &apos;siguientes Tarea&apos; a &apos;pendiente&apos;" ID="ID_144160291"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
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
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def fromStyle ='Siguiente tarea'
    </p>
    <p>
      def toStyle = 'Tarea pendiente'
    </p>
    <p>
      
    </p>
    <p>
      def n = node
    </p>
    <p>
      
    </p>
    <p>
      def nodos = n.find{it.style.name==fromStyle}
    </p>
    <p>
      
    </p>
    <p>
      nodos*.style*.name = toStyle
    </p>
    <p>
      
    </p>
    <p>
      return &quot;${nodos.size()} node(s) changed&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="ya cumplieron" STYLE_REF="Organizador" FOLDED="true" ID="ID_1023789228">
<node TEXT="generador de blabla" ID="ID_1226377477"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="bla" ID="ID_539291308"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>Blablah  blablablah, Blablah  **blablah** blablablablah blablablah blablah, Blablah  blablablah **blablah** blah, Blablah  blablah. Blah  **blah** blablablah.

Blah  **blablah** blablah **blablah** blah blah. Blablablah  blablah blablah blah blah **blablablablah** **blah**. Blablah  blablah blah blablablablah blah **blablablablah** blablah blablablah, Blah  blablah blablablah **blah** blablablah, Blah  blablablah blablah blah blablah blablablah **blablah** **blablablah** blablablah, Blablablah  blablah **blablah** blablablah blablah. Blablah  **blablablah** blablah blablablah blah.

Blablah  blah blah blah blablablah blablah, Blablah  blablah blablablah **blah**. Blah  blablablah blah blablah **blah** blablah blablablablah **blablablablah** **blablah**. Blablah  blablablablah **blah** blah blablablah **blablah** **blablablah** blablablah, Blablah  blablablablah, Blablah  blablablah blablah **blablah** blablablah blah.</text>
</richcontent>
</node>
</node>
<node TEXT="forzar type markdown a nodos con estilo &apos;MarkdownHelperNode&apos; bajo nodo seleccionado" ID="ID_1321457767"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="Toma texto de hijo para título markdown doc" ID="ID_997419723"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="cambio masivo de nodos con formulas a nodos con librería" ID="ID_1793854044"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="cambio masivo de nodos &apos;to be linked to Node with file&apos;" ID="ID_263515468"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="agregar hijo a nodos previousAndNext" ID="ID_751629098"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="cambiar formato nodos linkedNodeText" ID="ID_1547578702"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="crear hijo desde texto seleccionado ($1)" ID="ID_1698925764"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // this an example script:
    </p>
    <p>
      
    </p>
    <p>
      /*
    </p>
    <p>
      def name = ui.showInputDialog(node.delegate, &quot;hi! What's your name?&quot;, &quot;Juliberto&quot;)
    </p>
    <p>
      ui.informationMessage(&quot;Hello $name !!! Nice to meet you!!&quot;)
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      def nodo = c.selected
    </p>
    <p>
      def myFrame = ui.frame.mostRecentFocusOwner
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      if (myFrame.UIClassID.toString() == 'EditorPaneUI') {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto = htmlUtils.htmlToPlain(myFrame.text)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = nodo.children.size() + 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;texto = &quot;${texto[0..(myFrame.selectionStart-2)]}\$${i}${texto[(myFrame.selectionEnd-1) .. -1]}&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodo.createChild(myFrame.selectedText)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodo.note = texto
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
<node TEXT="cerrar nodos &apos;content&apos;" ID="ID_552781098"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="desechar" STYLE_REF="Organizador" FOLDED="true" ID="ID_1912037985">
<node TEXT="tomar texto de nodo linkeado" ID="ID_1446645901"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="guardar md docs de rama" ID="ID_393300812"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="no funciona. genera errores" ID="ID_1768617856"/>
<node TEXT="al parecer es un tema que recalcula formuals entre grabación y grabación y se enreda" ID="ID_1231995327"/>
</node>
</node>
<node TEXT="pruebas" STYLE_REF="Organizador" FOLDED="true" ID="ID_339810715">
<node TEXT="Bold" ID="ID_816293423"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // this an example script:
    </p>
    <p>
      
    </p>
    <p>
      /*
    </p>
    <p>
      def name = ui.showInputDialog(node.delegate, &quot;hi! What's your name?&quot;, &quot;Juliberto&quot;)
    </p>
    <p>
      ui.informationMessage(&quot;Hello $name !!! Nice to meet you!!&quot;)
    </p>
    <p>
      */
    </p>
    <p>
      
    </p>
    <p>
      def nodo = c.selected
    </p>
    <p>
      def myFrame = ui.frame.mostRecentFocusOwner
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      if (myFrame.UIClassID.toString() == 'EditorPaneUI') {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def texto = htmlUtils.htmlToPlain(myFrame.text)
    </p>
    <p>
      &nbsp;//&nbsp;&nbsp;&nbsp;texto = &quot;${texto[0..(myFrame.selectionStart-2)]}\$${i}${texto[(myFrame.selectionEnd-1) .. -1]}&quot;
    </p>
    <p>
      //&nbsp;&nbsp;&nbsp;&nbsp;nodo.createChild(myFrame.selectedText)
    </p>
    <p>
      //&nbsp;&nbsp;&nbsp;&nbsp;nodo.note = texto
    </p>
    <p>
      &nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;result =&nbsp;&nbsp;myFrame.class.methods*.toString().collect{limpiaMethod(it)}.join('\n')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;nodo.createChild('result').note = result
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def limpiaMethod(a){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = a.indexOf('(')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def j = a[0..i].lastIndexOf('.')
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;return a[j..-1]
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
<node TEXT="ejemplo" ID="ID_1926988121"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aaaaaaaaa bbbb ccccccccc ddddddddd eeeeeeeee fff ggggg hhhh.
    </p>
    <p>
      
    </p>
    <p>
      iiiiiiii jjj kkkkkkkkkk llll mmm.
    </p>
  </body>
</html></richcontent>
<node TEXT="result" ID="ID_917718886"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.drop(java.awt.dnd.DropTargetDropEvent)
    </p>
    <p>
      public com.lightdev.app.shtm.SHTMLDocument com.lightdev.app.shtm.SHTMLEditorPane.getDocument()
    </p>
    <p>
      public javax.swing.text.Document com.lightdev.app.shtm.SHTMLEditorPane.getDocument()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.setDocument(javax.swing.text.Document)
    </p>
    <p>
      public java.lang.String com.lightdev.app.shtm.SHTMLEditorPane.getSelectedText()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.replaceSelection(java.lang.String)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.replaceSelection(com.lightdev.app.shtm.HTMLText)
    </p>
    <p>
      public javax.swing.TransferHandler com.lightdev.app.shtm.SHTMLEditorPane.getTransferHandler()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.setUI(javax.swing.plaf.TextUI)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.updateUI()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.setText(java.lang.String)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.removeCharacterAttributes()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dragEnter(java.awt.dnd.DragSourceDragEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dragEnter(java.awt.dnd.DropTargetDragEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dragExit(java.awt.dnd.DropTargetEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dragExit(java.awt.dnd.DragSourceEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.setPopup(javax.swing.JPopupMenu)
    </p>
    <p>
      public javax.swing.JPopupMenu com.lightdev.app.shtm.SHTMLEditorPane.getPopup()
    </p>
    <p>
      public javax.swing.text.Element com.lightdev.app.shtm.SHTMLEditorPane.getCurrentLinkElement()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.appendTableColumn()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.applyTableAttributes(javax.swing.text.AttributeSet)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.applyListAttributes(javax.swing.text.AttributeSet)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.applyCellAttributes(javax.swing.text.AttributeSet,int)
    </p>
    <p>
      public javax.swing.text.Element com.lightdev.app.shtm.SHTMLEditorPane.getCurrentTableCell()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.setPasteModeFromPrefs()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.insertTableColumn()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.applyParagraphTag(java.lang.String,java.util.Vector)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.applyCharacterTag(java.lang.String)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dragOver(java.awt.dnd.DragSourceDragEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dragOver(java.awt.dnd.DropTargetDragEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dropActionChanged(java.awt.dnd.DragSourceDragEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dropActionChanged(java.awt.dnd.DropTargetDragEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.toggleTableHeaderCell()
    </p>
    <p>
      public com.lightdev.app.shtm.SHTMLDocument com.lightdev.app.shtm.SHTMLEditorPane.getSHTMLDocument()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.deleteTableCol()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.appendTableRow()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.insertTableRow(java.lang.String)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.deleteTableRow()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dragGestureRecognized(java.awt.dnd.DragGestureEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.setLink(java.lang.String,java.lang.String,java.lang.String)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.setLink(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.awt.Dimension)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.removeParagraphAttributes()
    </p>
    <p>
      public javax.swing.text.Element com.lightdev.app.shtm.SHTMLEditorPane.getCurrentParagraphElement()
    </p>
    <p>
      public boolean com.lightdev.app.shtm.SHTMLEditorPane.tryDefaultKeyStrokeActionWithinCell(int,int,java.awt.event.ActionEvent)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.initDnd()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.removeAnchor(java.lang.String)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.toggleList(java.lang.String,javax.swing.text.AttributeSet,boolean)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.insertNewTable(int)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.setPasteMode(com.lightdev.app.shtm.SHTMLEditorPane$PasteMode)
    </p>
    <p>
      public com.lightdev.app.shtm.SHTMLEditorPane$PasteMode com.lightdev.app.shtm.SHTMLEditorPane.getPasteMode()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.insertAnchor(java.lang.String)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.insertBreak()
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.dragDropEnd(java.awt.dnd.DragSourceDropEvent)
    </p>
    <p>
      public javax.swing.text.Element com.lightdev.app.shtm.SHTMLEditorPane.getTableCell(int)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.goPrevCell(javax.swing.text.Element)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.goNextCell(javax.swing.text.Element)
    </p>
    <p>
      public java.lang.String com.lightdev.app.shtm.SHTMLEditorPane.elementToHTML(javax.swing.text.Element)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.applyAttributes(javax.swing.text.AttributeSet,boolean)
    </p>
    <p>
      public void com.lightdev.app.shtm.SHTMLEditorPane.applyAttributes(javax.swing.text.AttributeSet,boolean,boolean)
    </p>
    <p>
      public void javax.swing.JEditorPane.read(java.io.InputStream,java.lang.Object) throws java.io.IOException
    </p>
    <p>
      public boolean javax.swing.JEditorPane.getScrollableTracksViewportWidth()
    </p>
    <p>
      public javax.swing.text.EditorKit javax.swing.JEditorPane.getEditorKit()
    </p>
    <p>
      public boolean javax.swing.JEditorPane.getScrollableTracksViewportHeight()
    </p>
    <p>
      public final java.lang.String javax.swing.JEditorPane.getContentType()
    </p>
    <p>
      public final void javax.swing.JEditorPane.setContentType(java.lang.String)
    </p>
    <p>
      public java.lang.String javax.swing.JEditorPane.getText()
    </p>
    <p>
      public java.lang.String javax.swing.JEditorPane.getUIClassID()
    </p>
    <p>
      public javax.accessibility.AccessibleContext javax.swing.JEditorPane.getAccessibleContext()
    </p>
    <p>
      public java.awt.Dimension javax.swing.JEditorPane.getPreferredSize()
    </p>
    <p>
      public void javax.swing.JEditorPane.setEditorKit(javax.swing.text.EditorKit)
    </p>
    <p>
      public synchronized void javax.swing.JEditorPane.addHyperlinkListener(javax.swing.event.HyperlinkListener)
    </p>
    <p>
      public static javax.swing.text.EditorKit javax.swing.JEditorPane.createEditorKitForContentType(java.lang.String)
    </p>
    <p>
      public void javax.swing.JEditorPane.fireHyperlinkUpdate(javax.swing.event.HyperlinkEvent)
    </p>
    <p>
      public static java.lang.String javax.swing.JEditorPane.getEditorKitClassNameForContentType(java.lang.String)
    </p>
    <p>
      public javax.swing.text.EditorKit javax.swing.JEditorPane.getEditorKitForContentType(java.lang.String)
    </p>
    <p>
      public synchronized javax.swing.event.HyperlinkListener[] javax.swing.JEditorPane.getHyperlinkListeners()
    </p>
    <p>
      public java.net.URL javax.swing.JEditorPane.getPage()
    </p>
    <p>
      public static void javax.swing.JEditorPane.registerEditorKitForContentType(java.lang.String,java.lang.String)
    </p>
    <p>
      public static void javax.swing.JEditorPane.registerEditorKitForContentType(java.lang.String,java.lang.String,java.lang.ClassLoader)
    </p>
    <p>
      public synchronized void javax.swing.JEditorPane.removeHyperlinkListener(javax.swing.event.HyperlinkListener)
    </p>
    <p>
      public void javax.swing.JEditorPane.scrollToReference(java.lang.String)
    </p>
    <p>
      public void javax.swing.JEditorPane.setEditorKitForContentType(java.lang.String,javax.swing.text.EditorKit)
    </p>
    <p>
      public void javax.swing.JEditorPane.setPage(java.lang.String) throws java.io.IOException
    </p>
    <p>
      public void javax.swing.JEditorPane.setPage(java.net.URL) throws java.io.IOException
    </p>
    <p>
      public void javax.swing.text.JTextComponent.write(java.io.Writer) throws java.io.IOException
    </p>
    <p>
      public void javax.swing.text.JTextComponent.read(java.io.Reader,java.lang.Object) throws java.io.IOException
    </p>
    <p>
      public javax.swing.Action[] javax.swing.text.JTextComponent.getActions()
    </p>
    <p>
      public boolean javax.swing.text.JTextComponent.print() throws java.awt.print.PrinterException
    </p>
    <p>
      public boolean javax.swing.text.JTextComponent.print(java.text.MessageFormat,java.text.MessageFormat) throws java.awt.print.PrinterException
    </p>
    <p>
      public boolean javax.swing.text.JTextComponent.print(java.text.MessageFormat,java.text.MessageFormat,boolean,javax.print.PrintService,javax.print.attribute.PrintRequestAttributeSet,boolean) throws java.awt.print.PrinterException
    </p>
    <p>
      public void javax.swing.text.JTextComponent.copy()
    </p>
    <p>
      public java.awt.Dimension javax.swing.text.JTextComponent.getPreferredScrollableViewportSize()
    </p>
    <p>
      public int javax.swing.text.JTextComponent.getScrollableUnitIncrement(java.awt.Rectangle,int,int)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.addCaretListener(javax.swing.event.CaretListener)
    </p>
    <p>
      public static javax.swing.text.Keymap javax.swing.text.JTextComponent.addKeymap(java.lang.String,javax.swing.text.Keymap)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.cut()
    </p>
    <p>
      public javax.swing.text.Caret javax.swing.text.JTextComponent.getCaret()
    </p>
    <p>
      public java.awt.Color javax.swing.text.JTextComponent.getCaretColor()
    </p>
    <p>
      public javax.swing.event.CaretListener[] javax.swing.text.JTextComponent.getCaretListeners()
    </p>
    <p>
      public int javax.swing.text.JTextComponent.getCaretPosition()
    </p>
    <p>
      public java.awt.Color javax.swing.text.JTextComponent.getDisabledTextColor()
    </p>
    <p>
      public boolean javax.swing.text.JTextComponent.getDragEnabled()
    </p>
    <p>
      public final javax.swing.text.JTextComponent$DropLocation javax.swing.text.JTextComponent.getDropLocation()
    </p>
    <p>
      public final javax.swing.DropMode javax.swing.text.JTextComponent.getDropMode()
    </p>
    <p>
      public char javax.swing.text.JTextComponent.getFocusAccelerator()
    </p>
    <p>
      public javax.swing.text.Highlighter javax.swing.text.JTextComponent.getHighlighter()
    </p>
    <p>
      public static javax.swing.text.Keymap javax.swing.text.JTextComponent.getKeymap(java.lang.String)
    </p>
    <p>
      public javax.swing.text.Keymap javax.swing.text.JTextComponent.getKeymap()
    </p>
    <p>
      public java.awt.Insets javax.swing.text.JTextComponent.getMargin()
    </p>
    <p>
      public javax.swing.text.NavigationFilter javax.swing.text.JTextComponent.getNavigationFilter()
    </p>
    <p>
      public java.awt.print.Printable javax.swing.text.JTextComponent.getPrintable(java.text.MessageFormat,java.text.MessageFormat)
    </p>
    <p>
      public int javax.swing.text.JTextComponent.getScrollableBlockIncrement(java.awt.Rectangle,int,int)
    </p>
    <p>
      public java.awt.Color javax.swing.text.JTextComponent.getSelectedTextColor()
    </p>
    <p>
      public java.awt.Color javax.swing.text.JTextComponent.getSelectionColor()
    </p>
    <p>
      public int javax.swing.text.JTextComponent.getSelectionEnd()
    </p>
    <p>
      public int javax.swing.text.JTextComponent.getSelectionStart()
    </p>
    <p>
      public javax.swing.plaf.TextUI javax.swing.text.JTextComponent.getUI()
    </p>
    <p>
      public static void javax.swing.text.JTextComponent.loadKeymap(javax.swing.text.Keymap,javax.swing.text.JTextComponent$KeyBinding[],javax.swing.Action[])
    </p>
    <p>
      public java.awt.Rectangle javax.swing.text.JTextComponent.modelToView(int) throws javax.swing.text.BadLocationException
    </p>
    <p>
      public void javax.swing.text.JTextComponent.moveCaretPosition(int)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.paste()
    </p>
    <p>
      public void javax.swing.text.JTextComponent.removeCaretListener(javax.swing.event.CaretListener)
    </p>
    <p>
      public static javax.swing.text.Keymap javax.swing.text.JTextComponent.removeKeymap(java.lang.String)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.selectAll()
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setCaret(javax.swing.text.Caret)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setCaretColor(java.awt.Color)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setCaretPosition(int)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setDisabledTextColor(java.awt.Color)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setDragEnabled(boolean)
    </p>
    <p>
      public final void javax.swing.text.JTextComponent.setDropMode(javax.swing.DropMode)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setFocusAccelerator(char)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setHighlighter(javax.swing.text.Highlighter)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setKeymap(javax.swing.text.Keymap)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setNavigationFilter(javax.swing.text.NavigationFilter)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setSelectedTextColor(java.awt.Color)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setSelectionColor(java.awt.Color)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setSelectionEnd(int)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setSelectionStart(int)
    </p>
    <p>
      public int javax.swing.text.JTextComponent.viewToModel(java.awt.Point)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.select(int,int)
    </p>
    <p>
      public java.lang.String javax.swing.text.JTextComponent.getText(int,int) throws javax.swing.text.BadLocationException
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setEditable(boolean)
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setMargin(java.awt.Insets)
    </p>
    <p>
      public java.lang.String javax.swing.text.JTextComponent.getToolTipText(java.awt.event.MouseEvent)
    </p>
    <p>
      public boolean javax.swing.text.JTextComponent.isEditable()
    </p>
    <p>
      public void javax.swing.text.JTextComponent.addInputMethodListener(java.awt.event.InputMethodListener)
    </p>
    <p>
      public java.awt.im.InputMethodRequests javax.swing.text.JTextComponent.getInputMethodRequests()
    </p>
    <p>
      public void javax.swing.text.JTextComponent.removeNotify()
    </p>
    <p>
      public void javax.swing.text.JTextComponent.setComponentOrientation(java.awt.ComponentOrientation)
    </p>
    <p>
      public void javax.swing.JComponent.update(java.awt.Graphics)
    </p>
    <p>
      public boolean javax.swing.JComponent.contains(int,int)
    </p>
    <p>
      public java.awt.Point javax.swing.JComponent.getLocation(java.awt.Point)
    </p>
    <p>
      public void javax.swing.JComponent.print(java.awt.Graphics)
    </p>
    <p>
      public java.awt.Dimension javax.swing.JComponent.getSize(java.awt.Dimension)
    </p>
    <p>
      public boolean javax.swing.JComponent.isOpaque()
    </p>
    <p>
      public void javax.swing.JComponent.disable()
    </p>
    <p>
      public void javax.swing.JComponent.enable()
    </p>
    <p>
      public void javax.swing.JComponent.setVisible(boolean)
    </p>
    <p>
      public int javax.swing.JComponent.getHeight()
    </p>
    <p>
      public int javax.swing.JComponent.getWidth()
    </p>
    <p>
      public java.awt.Rectangle javax.swing.JComponent.getBounds(java.awt.Rectangle)
    </p>
    <p>
      public void javax.swing.JComponent.paint(java.awt.Graphics)
    </p>
    <p>
      public javax.swing.JRootPane javax.swing.JComponent.getRootPane()
    </p>
    <p>
      public java.awt.FontMetrics javax.swing.JComponent.getFontMetrics(java.awt.Font)
    </p>
    <p>
      public java.util.EventListener[] javax.swing.JComponent.getListeners(java.lang.Class)
    </p>
    <p>
      public java.awt.Point javax.swing.JComponent.getPopupLocation(java.awt.event.MouseEvent)
    </p>
    <p>
      public javax.swing.KeyStroke[] javax.swing.JComponent.getRegisteredKeyStrokes()
    </p>
    <p>
      public java.awt.Point javax.swing.JComponent.getToolTipLocation(java.awt.event.MouseEvent)
    </p>
    <p>
      public java.lang.String javax.swing.JComponent.getToolTipText()
    </p>
    <p>
      public java.awt.Container javax.swing.JComponent.getTopLevelAncestor()
    </p>
    <p>
      public boolean javax.swing.JComponent.getVerifyInputWhenFocusTarget()
    </p>
    <p>
      public synchronized java.beans.VetoableChangeListener[] javax.swing.JComponent.getVetoableChangeListeners()
    </p>
    <p>
      public java.awt.Rectangle javax.swing.JComponent.getVisibleRect()
    </p>
    <p>
      public void javax.swing.JComponent.grabFocus()
    </p>
    <p>
      public static boolean javax.swing.JComponent.isLightweightComponent(java.awt.Component)
    </p>
    <p>
      public boolean javax.swing.JComponent.isManagingFocus()
    </p>
    <p>
      public boolean javax.swing.JComponent.isOptimizedDrawingEnabled()
    </p>
    <p>
      public final boolean javax.swing.JComponent.isPaintingForPrint()
    </p>
    <p>
      public boolean javax.swing.JComponent.isPaintingTile()
    </p>
    <p>
      public boolean javax.swing.JComponent.isRequestFocusEnabled()
    </p>
    <p>
      public void javax.swing.JComponent.paintImmediately(int,int,int,int)
    </p>
    <p>
      public void javax.swing.JComponent.paintImmediately(java.awt.Rectangle)
    </p>
    <p>
      public final void javax.swing.JComponent.putClientProperty(java.lang.Object,java.lang.Object)
    </p>
    <p>
      public void javax.swing.JComponent.registerKeyboardAction(java.awt.event.ActionListener,javax.swing.KeyStroke,int)
    </p>
    <p>
      public void javax.swing.JComponent.registerKeyboardAction(java.awt.event.ActionListener,java.lang.String,javax.swing.KeyStroke,int)
    </p>
    <p>
      public void javax.swing.JComponent.removeAncestorListener(javax.swing.event.AncestorListener)
    </p>
    <p>
      public synchronized void javax.swing.JComponent.removeVetoableChangeListener(java.beans.VetoableChangeListener)
    </p>
    <p>
      public boolean javax.swing.JComponent.requestDefaultFocus()
    </p>
    <p>
      public void javax.swing.JComponent.resetKeyboardActions()
    </p>
    <p>
      public void javax.swing.JComponent.scrollRectToVisible(java.awt.Rectangle)
    </p>
    <p>
      public final void javax.swing.JComponent.setActionMap(javax.swing.ActionMap)
    </p>
    <p>
      public void javax.swing.JComponent.setAlignmentX(float)
    </p>
    <p>
      public void javax.swing.JComponent.setAlignmentY(float)
    </p>
    <p>
      public void javax.swing.JComponent.setAutoscrolls(boolean)
    </p>
    <p>
      public void javax.swing.JComponent.setBorder(javax.swing.border.Border)
    </p>
    <p>
      public void javax.swing.JComponent.setComponentPopupMenu(javax.swing.JPopupMenu)
    </p>
    <p>
      public void javax.swing.JComponent.setDebugGraphicsOptions(int)
    </p>
    <p>
      public void javax.swing.JComponent.setDoubleBuffered(boolean)
    </p>
    <p>
      public void javax.swing.JComponent.setInheritsPopupMenu(boolean)
    </p>
    <p>
      public final void javax.swing.JComponent.setInputMap(int,javax.swing.InputMap)
    </p>
    <p>
      public void javax.swing.JComponent.setInputVerifier(javax.swing.InputVerifier)
    </p>
    <p>
      public void javax.swing.JComponent.setNextFocusableComponent(java.awt.Component)
    </p>
    <p>
      public void javax.swing.JComponent.setOpaque(boolean)
    </p>
    <p>
      public void javax.swing.JComponent.setRequestFocusEnabled(boolean)
    </p>
    <p>
      public void javax.swing.JComponent.setTransferHandler(javax.swing.TransferHandler)
    </p>
    <p>
      public void javax.swing.JComponent.setVerifyInputWhenFocusTarget(boolean)
    </p>
    <p>
      public void javax.swing.JComponent.unregisterKeyboardAction(javax.swing.KeyStroke)
    </p>
    <p>
      public int javax.swing.JComponent.getX()
    </p>
    <p>
      public int javax.swing.JComponent.getY()
    </p>
    <p>
      public java.awt.Graphics javax.swing.JComponent.getGraphics()
    </p>
    <p>
      public void javax.swing.JComponent.addNotify()
    </p>
    <p>
      public float javax.swing.JComponent.getAlignmentX()
    </p>
    <p>
      public float javax.swing.JComponent.getAlignmentY()
    </p>
    <p>
      public int javax.swing.JComponent.getBaseline(int,int)
    </p>
    <p>
      public java.awt.Component$BaselineResizeBehavior javax.swing.JComponent.getBaselineResizeBehavior()
    </p>
    <p>
      public java.awt.Insets javax.swing.JComponent.getInsets(java.awt.Insets)
    </p>
    <p>
      public java.awt.Insets javax.swing.JComponent.getInsets()
    </p>
    <p>
      public java.awt.Dimension javax.swing.JComponent.getMaximumSize()
    </p>
    <p>
      public java.awt.Dimension javax.swing.JComponent.getMinimumSize()
    </p>
    <p>
      public void javax.swing.JComponent.hide()
    </p>
    <p>
      public boolean javax.swing.JComponent.isDoubleBuffered()
    </p>
    <p>
      public boolean javax.swing.JComponent.isValidateRoot()
    </p>
    <p>
      public void javax.swing.JComponent.printAll(java.awt.Graphics)
    </p>
    <p>
      public void javax.swing.JComponent.repaint(java.awt.Rectangle)
    </p>
    <p>
      public void javax.swing.JComponent.repaint(long,int,int,int,int)
    </p>
    <p>
      public boolean javax.swing.JComponent.requestFocusInWindow()
    </p>
    <p>
      public void javax.swing.JComponent.reshape(int,int,int,int)
    </p>
    <p>
      public void javax.swing.JComponent.setBackground(java.awt.Color)
    </p>
    <p>
      public void javax.swing.JComponent.setFocusTraversalKeys(int,java.util.Set)
    </p>
    <p>
      public void javax.swing.JComponent.setFont(java.awt.Font)
    </p>
    <p>
      public void javax.swing.JComponent.setForeground(java.awt.Color)
    </p>
    <p>
      public void javax.swing.JComponent.setMaximumSize(java.awt.Dimension)
    </p>
    <p>
      public void javax.swing.JComponent.setMinimumSize(java.awt.Dimension)
    </p>
    <p>
      public void javax.swing.JComponent.setPreferredSize(java.awt.Dimension)
    </p>
    <p>
      public void javax.swing.JComponent.setToolTipText(java.lang.String)
    </p>
    <p>
      public static void javax.swing.JComponent.setDefaultLocale(java.util.Locale)
    </p>
    <p>
      public boolean javax.swing.JComponent.requestFocus(boolean)
    </p>
    <p>
      public void javax.swing.JComponent.requestFocus()
    </p>
    <p>
      public void javax.swing.JComponent.setEnabled(boolean)
    </p>
    <p>
      public void javax.swing.JComponent.revalidate()
    </p>
    <p>
      public void javax.swing.JComponent.firePropertyChange(java.lang.String,char,char)
    </p>
    <p>
      public void javax.swing.JComponent.firePropertyChange(java.lang.String,boolean,boolean)
    </p>
    <p>
      public void javax.swing.JComponent.firePropertyChange(java.lang.String,int,int)
    </p>
    <p>
      public void javax.swing.JComponent.addAncestorListener(javax.swing.event.AncestorListener)
    </p>
    <p>
      public synchronized void javax.swing.JComponent.addVetoableChangeListener(java.beans.VetoableChangeListener)
    </p>
    <p>
      public void javax.swing.JComponent.computeVisibleRect(java.awt.Rectangle)
    </p>
    <p>
      public javax.swing.JToolTip javax.swing.JComponent.createToolTip()
    </p>
    <p>
      public java.awt.event.ActionListener javax.swing.JComponent.getActionForKeyStroke(javax.swing.KeyStroke)
    </p>
    <p>
      public final javax.swing.ActionMap javax.swing.JComponent.getActionMap()
    </p>
    <p>
      public javax.swing.event.AncestorListener[] javax.swing.JComponent.getAncestorListeners()
    </p>
    <p>
      public boolean javax.swing.JComponent.getAutoscrolls()
    </p>
    <p>
      public javax.swing.border.Border javax.swing.JComponent.getBorder()
    </p>
    <p>
      public final java.lang.Object javax.swing.JComponent.getClientProperty(java.lang.Object)
    </p>
    <p>
      public javax.swing.JPopupMenu javax.swing.JComponent.getComponentPopupMenu()
    </p>
    <p>
      public int javax.swing.JComponent.getConditionForKeyStroke(javax.swing.KeyStroke)
    </p>
    <p>
      public int javax.swing.JComponent.getDebugGraphicsOptions()
    </p>
    <p>
      public static java.util.Locale javax.swing.JComponent.getDefaultLocale()
    </p>
    <p>
      public boolean javax.swing.JComponent.getInheritsPopupMenu()
    </p>
    <p>
      public final javax.swing.InputMap javax.swing.JComponent.getInputMap()
    </p>
    <p>
      public final javax.swing.InputMap javax.swing.JComponent.getInputMap(int)
    </p>
    <p>
      public javax.swing.InputVerifier javax.swing.JComponent.getInputVerifier()
    </p>
    <p>
      public java.awt.Component javax.swing.JComponent.getNextFocusableComponent()
    </p>
    <p>
      public java.awt.Component java.awt.Container.add(java.awt.Component)
    </p>
    <p>
      public java.awt.Component java.awt.Container.add(java.lang.String,java.awt.Component)
    </p>
    <p>
      public void java.awt.Container.add(java.awt.Component,java.lang.Object)
    </p>
    <p>
      public java.awt.Component java.awt.Container.add(java.awt.Component,int)
    </p>
    <p>
      public void java.awt.Container.add(java.awt.Component,java.lang.Object,int)
    </p>
    <p>
      public void java.awt.Container.remove(java.awt.Component)
    </p>
    <p>
      public void java.awt.Container.remove(int)
    </p>
    <p>
      public void java.awt.Container.list(java.io.PrintWriter,int)
    </p>
    <p>
      public void java.awt.Container.list(java.io.PrintStream,int)
    </p>
    <p>
      public void java.awt.Container.removeAll()
    </p>
    <p>
      public void java.awt.Container.setFocusTraversalPolicy(java.awt.FocusTraversalPolicy)
    </p>
    <p>
      public java.awt.Component java.awt.Container.locate(int,int)
    </p>
    <p>
      public synchronized void java.awt.Container.addContainerListener(java.awt.event.ContainerListener)
    </p>
    <p>
      public synchronized java.awt.event.ContainerListener[] java.awt.Container.getContainerListeners()
    </p>
    <p>
      public java.awt.Insets java.awt.Container.insets()
    </p>
    <p>
      public boolean java.awt.Container.isAncestorOf(java.awt.Component)
    </p>
    <p>
      public final boolean java.awt.Container.isFocusTraversalPolicyProvider()
    </p>
    <p>
      public boolean java.awt.Container.isFocusTraversalPolicySet()
    </p>
    <p>
      public void java.awt.Container.paintComponents(java.awt.Graphics)
    </p>
    <p>
      public void java.awt.Container.printComponents(java.awt.Graphics)
    </p>
    <p>
      public synchronized void java.awt.Container.removeContainerListener(java.awt.event.ContainerListener)
    </p>
    <p>
      public void java.awt.Container.setComponentZOrder(java.awt.Component,int)
    </p>
    <p>
      public void java.awt.Container.setFocusCycleRoot(boolean)
    </p>
    <p>
      public final void java.awt.Container.setFocusTraversalPolicyProvider(boolean)
    </p>
    <p>
      public void java.awt.Container.setLayout(java.awt.LayoutManager)
    </p>
    <p>
      public void java.awt.Container.transferFocusDownCycle()
    </p>
    <p>
      public java.awt.Component[] java.awt.Container.getComponents()
    </p>
    <p>
      public void java.awt.Container.applyComponentOrientation(java.awt.ComponentOrientation)
    </p>
    <p>
      public boolean java.awt.Container.areFocusTraversalKeysSet(int)
    </p>
    <p>
      public int java.awt.Container.countComponents()
    </p>
    <p>
      public void java.awt.Container.deliverEvent(java.awt.Event)
    </p>
    <p>
      public void java.awt.Container.doLayout()
    </p>
    <p>
      public java.awt.Component java.awt.Container.findComponentAt(java.awt.Point)
    </p>
    <p>
      public java.awt.Component java.awt.Container.findComponentAt(int,int)
    </p>
    <p>
      public java.awt.Component java.awt.Container.getComponentAt(int,int)
    </p>
    <p>
      public java.awt.Component java.awt.Container.getComponentAt(java.awt.Point)
    </p>
    <p>
      public int java.awt.Container.getComponentZOrder(java.awt.Component)
    </p>
    <p>
      public java.util.Set java.awt.Container.getFocusTraversalKeys(int)
    </p>
    <p>
      public java.awt.FocusTraversalPolicy java.awt.Container.getFocusTraversalPolicy()
    </p>
    <p>
      public java.awt.LayoutManager java.awt.Container.getLayout()
    </p>
    <p>
      public java.awt.Point java.awt.Container.getMousePosition(boolean) throws java.awt.HeadlessException
    </p>
    <p>
      public boolean java.awt.Container.isFocusCycleRoot(java.awt.Container)
    </p>
    <p>
      public boolean java.awt.Container.isFocusCycleRoot()
    </p>
    <p>
      public void java.awt.Container.layout()
    </p>
    <p>
      public java.awt.Dimension java.awt.Container.minimumSize()
    </p>
    <p>
      public java.awt.Dimension java.awt.Container.preferredSize()
    </p>
    <p>
      public void java.awt.Container.invalidate()
    </p>
    <p>
      public void java.awt.Container.validate()
    </p>
    <p>
      public void java.awt.Container.addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)
    </p>
    <p>
      public void java.awt.Container.addPropertyChangeListener(java.beans.PropertyChangeListener)
    </p>
    <p>
      public java.awt.Component java.awt.Container.getComponent(int)
    </p>
    <p>
      public int java.awt.Container.getComponentCount()
    </p>
    <p>
      public void java.awt.Component.add(java.awt.PopupMenu)
    </p>
    <p>
      public void java.awt.Component.remove(java.awt.MenuComponent)
    </p>
    <p>
      public java.lang.String java.awt.Component.toString()
    </p>
    <p>
      public java.lang.String java.awt.Component.getName()
    </p>
    <p>
      public boolean java.awt.Component.contains(java.awt.Point)
    </p>
    <p>
      public java.awt.Dimension java.awt.Component.size()
    </p>
    <p>
      public java.awt.Point java.awt.Component.getLocation()
    </p>
    <p>
      public java.awt.Container java.awt.Component.getParent()
    </p>
    <p>
      public void java.awt.Component.setName(java.lang.String)
    </p>
    <p>
      public void java.awt.Component.list(java.io.PrintWriter)
    </p>
    <p>
      public void java.awt.Component.list()
    </p>
    <p>
      public void java.awt.Component.list(java.io.PrintStream)
    </p>
    <p>
      public java.awt.Dimension java.awt.Component.getSize()
    </p>
    <p>
      public java.awt.Point java.awt.Component.location()
    </p>
    <p>
      public void java.awt.Component.setSize(java.awt.Dimension)
    </p>
    <p>
      public void java.awt.Component.setSize(int,int)
    </p>
    <p>
      public void java.awt.Component.resize(int,int)
    </p>
    <p>
      public void java.awt.Component.resize(java.awt.Dimension)
    </p>
    <p>
      public void java.awt.Component.enable(boolean)
    </p>
    <p>
      public boolean java.awt.Component.isValid()
    </p>
    <p>
      public boolean java.awt.Component.imageUpdate(java.awt.Image,int,int,int,int,int)
    </p>
    <p>
      public boolean java.awt.Component.isLightweight()
    </p>
    <p>
      public boolean java.awt.Component.postEvent(java.awt.Event)
    </p>
    <p>
      public java.awt.Rectangle java.awt.Component.getBounds()
    </p>
    <p>
      public boolean java.awt.Component.action(java.awt.Event,java.lang.Object)
    </p>
    <p>
      public int java.awt.Component.checkImage(java.awt.Image,int,int,java.awt.image.ImageObserver)
    </p>
    <p>
      public int java.awt.Component.checkImage(java.awt.Image,java.awt.image.ImageObserver)
    </p>
    <p>
      public java.awt.Image java.awt.Component.createImage(java.awt.image.ImageProducer)
    </p>
    <p>
      public java.awt.Image java.awt.Component.createImage(int,int)
    </p>
    <p>
      public java.awt.image.ColorModel java.awt.Component.getColorModel()
    </p>
    <p>
      public java.awt.Font java.awt.Component.getFont()
    </p>
    <p>
      public boolean java.awt.Component.prepareImage(java.awt.Image,int,int,java.awt.image.ImageObserver)
    </p>
    <p>
      public boolean java.awt.Component.prepareImage(java.awt.Image,java.awt.image.ImageObserver)
    </p>
    <p>
      public java.awt.peer.ComponentPeer java.awt.Component.getPeer()
    </p>
    <p>
      public boolean java.awt.Component.isFocusable()
    </p>
    <p>
      public java.awt.Color java.awt.Component.getBackground()
    </p>
    <p>
      public java.awt.Color java.awt.Component.getForeground()
    </p>
    <p>
      public java.awt.GraphicsConfiguration java.awt.Component.getGraphicsConfiguration()
    </p>
    <p>
      public synchronized void java.awt.Component.addComponentListener(java.awt.event.ComponentListener)
    </p>
    <p>
      public synchronized void java.awt.Component.addFocusListener(java.awt.event.FocusListener)
    </p>
    <p>
      public void java.awt.Component.addHierarchyBoundsListener(java.awt.event.HierarchyBoundsListener)
    </p>
    <p>
      public void java.awt.Component.addHierarchyListener(java.awt.event.HierarchyListener)
    </p>
    <p>
      public synchronized void java.awt.Component.addKeyListener(java.awt.event.KeyListener)
    </p>
    <p>
      public synchronized void java.awt.Component.addMouseListener(java.awt.event.MouseListener)
    </p>
    <p>
      public synchronized void java.awt.Component.addMouseMotionListener(java.awt.event.MouseMotionListener)
    </p>
    <p>
      public synchronized void java.awt.Component.addMouseWheelListener(java.awt.event.MouseWheelListener)
    </p>
    <p>
      public java.awt.Rectangle java.awt.Component.bounds()
    </p>
    <p>
      public java.awt.image.VolatileImage java.awt.Component.createVolatileImage(int,int)
    </p>
    <p>
      public java.awt.image.VolatileImage java.awt.Component.createVolatileImage(int,int,java.awt.ImageCapabilities) throws java.awt.AWTException
    </p>
    <p>
      public final void java.awt.Component.dispatchEvent(java.awt.AWTEvent)
    </p>
    <p>
      public void java.awt.Component.enableInputMethods(boolean)
    </p>
    <p>
      public synchronized java.awt.event.ComponentListener[] java.awt.Component.getComponentListeners()
    </p>
    <p>
      public java.awt.ComponentOrientation java.awt.Component.getComponentOrientation()
    </p>
    <p>
      public java.awt.Cursor java.awt.Component.getCursor()
    </p>
    <p>
      public synchronized java.awt.dnd.DropTarget java.awt.Component.getDropTarget()
    </p>
    <p>
      public java.awt.Container java.awt.Component.getFocusCycleRootAncestor()
    </p>
    <p>
      public synchronized java.awt.event.FocusListener[] java.awt.Component.getFocusListeners()
    </p>
    <p>
      public boolean java.awt.Component.getFocusTraversalKeysEnabled()
    </p>
    <p>
      public synchronized java.awt.event.HierarchyBoundsListener[] java.awt.Component.getHierarchyBoundsListeners()
    </p>
    <p>
      public synchronized java.awt.event.HierarchyListener[] java.awt.Component.getHierarchyListeners()
    </p>
    <p>
      public boolean java.awt.Component.getIgnoreRepaint()
    </p>
    <p>
      public java.awt.im.InputContext java.awt.Component.getInputContext()
    </p>
    <p>
      public synchronized java.awt.event.InputMethodListener[] java.awt.Component.getInputMethodListeners()
    </p>
    <p>
      public synchronized java.awt.event.KeyListener[] java.awt.Component.getKeyListeners()
    </p>
    <p>
      public java.awt.Point java.awt.Component.getLocationOnScreen()
    </p>
    <p>
      public synchronized java.awt.event.MouseListener[] java.awt.Component.getMouseListeners()
    </p>
    <p>
      public synchronized java.awt.event.MouseMotionListener[] java.awt.Component.getMouseMotionListeners()
    </p>
    <p>
      public java.awt.Point java.awt.Component.getMousePosition() throws java.awt.HeadlessException
    </p>
    <p>
      public synchronized java.awt.event.MouseWheelListener[] java.awt.Component.getMouseWheelListeners()
    </p>
    <p>
      public java.awt.Toolkit java.awt.Component.getToolkit()
    </p>
    <p>
      public final java.lang.Object java.awt.Component.getTreeLock()
    </p>
    <p>
      public boolean java.awt.Component.gotFocus(java.awt.Event,java.lang.Object)
    </p>
    <p>
      public boolean java.awt.Component.handleEvent(java.awt.Event)
    </p>
    <p>
      public boolean java.awt.Component.hasFocus()
    </p>
    <p>
      public boolean java.awt.Component.isBackgroundSet()
    </p>
    <p>
      public boolean java.awt.Component.isCursorSet()
    </p>
    <p>
      public boolean java.awt.Component.isDisplayable()
    </p>
    <p>
      public boolean java.awt.Component.isFocusOwner()
    </p>
    <p>
      public boolean java.awt.Component.isFocusTraversable()
    </p>
    <p>
      public boolean java.awt.Component.isFontSet()
    </p>
    <p>
      public boolean java.awt.Component.isForegroundSet()
    </p>
    <p>
      public boolean java.awt.Component.isMaximumSizeSet()
    </p>
    <p>
      public boolean java.awt.Component.isMinimumSizeSet()
    </p>
    <p>
      public boolean java.awt.Component.isPreferredSizeSet()
    </p>
    <p>
      public boolean java.awt.Component.isShowing()
    </p>
    <p>
      public boolean java.awt.Component.keyDown(java.awt.Event,int)
    </p>
    <p>
      public boolean java.awt.Component.keyUp(java.awt.Event,int)
    </p>
    <p>
      public boolean java.awt.Component.lostFocus(java.awt.Event,java.lang.Object)
    </p>
    <p>
      public boolean java.awt.Component.mouseDown(java.awt.Event,int,int)
    </p>
    <p>
      public boolean java.awt.Component.mouseDrag(java.awt.Event,int,int)
    </p>
    <p>
      public boolean java.awt.Component.mouseEnter(java.awt.Event,int,int)
    </p>
    <p>
      public boolean java.awt.Component.mouseExit(java.awt.Event,int,int)
    </p>
    <p>
      public boolean java.awt.Component.mouseMove(java.awt.Event,int,int)
    </p>
    <p>
      public boolean java.awt.Component.mouseUp(java.awt.Event,int,int)
    </p>
    <p>
      public void java.awt.Component.move(int,int)
    </p>
    <p>
      public void java.awt.Component.nextFocus()
    </p>
    <p>
      public void java.awt.Component.paintAll(java.awt.Graphics)
    </p>
    <p>
      public synchronized void java.awt.Component.removeComponentListener(java.awt.event.ComponentListener)
    </p>
    <p>
      public synchronized void java.awt.Component.removeFocusListener(java.awt.event.FocusListener)
    </p>
    <p>
      public void java.awt.Component.removeHierarchyBoundsListener(java.awt.event.HierarchyBoundsListener)
    </p>
    <p>
      public void java.awt.Component.removeHierarchyListener(java.awt.event.HierarchyListener)
    </p>
    <p>
      public synchronized void java.awt.Component.removeInputMethodListener(java.awt.event.InputMethodListener)
    </p>
    <p>
      public synchronized void java.awt.Component.removeKeyListener(java.awt.event.KeyListener)
    </p>
    <p>
      public synchronized void java.awt.Component.removeMouseListener(java.awt.event.MouseListener)
    </p>
    <p>
      public synchronized void java.awt.Component.removeMouseMotionListener(java.awt.event.MouseMotionListener)
    </p>
    <p>
      public synchronized void java.awt.Component.removeMouseWheelListener(java.awt.event.MouseWheelListener)
    </p>
    <p>
      public void java.awt.Component.repaint()
    </p>
    <p>
      public void java.awt.Component.repaint(long)
    </p>
    <p>
      public void java.awt.Component.repaint(int,int,int,int)
    </p>
    <p>
      public void java.awt.Component.setBounds(java.awt.Rectangle)
    </p>
    <p>
      public void java.awt.Component.setBounds(int,int,int,int)
    </p>
    <p>
      public void java.awt.Component.setCursor(java.awt.Cursor)
    </p>
    <p>
      public synchronized void java.awt.Component.setDropTarget(java.awt.dnd.DropTarget)
    </p>
    <p>
      public void java.awt.Component.setFocusTraversalKeysEnabled(boolean)
    </p>
    <p>
      public void java.awt.Component.setFocusable(boolean)
    </p>
    <p>
      public void java.awt.Component.setIgnoreRepaint(boolean)
    </p>
    <p>
      public void java.awt.Component.setLocation(int,int)
    </p>
    <p>
      public void java.awt.Component.setLocation(java.awt.Point)
    </p>
    <p>
      public void java.awt.Component.show(boolean)
    </p>
    <p>
      public void java.awt.Component.show()
    </p>
    <p>
      public void java.awt.Component.transferFocus()
    </p>
    <p>
      public void java.awt.Component.transferFocusBackward()
    </p>
    <p>
      public void java.awt.Component.transferFocusUpCycle()
    </p>
    <p>
      public java.util.Locale java.awt.Component.getLocale()
    </p>
    <p>
      public void java.awt.Component.setLocale(java.util.Locale)
    </p>
    <p>
      public boolean java.awt.Component.inside(int,int)
    </p>
    <p>
      public void java.awt.Component.removePropertyChangeListener(java.beans.PropertyChangeListener)
    </p>
    <p>
      public void java.awt.Component.removePropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)
    </p>
    <p>
      public java.beans.PropertyChangeListener[] java.awt.Component.getPropertyChangeListeners(java.lang.String)
    </p>
    <p>
      public java.beans.PropertyChangeListener[] java.awt.Component.getPropertyChangeListeners()
    </p>
    <p>
      public boolean java.awt.Component.isVisible()
    </p>
    <p>
      public boolean java.awt.Component.isEnabled()
    </p>
    <p>
      public void java.awt.Component.firePropertyChange(java.lang.String,float,float)
    </p>
    <p>
      public void java.awt.Component.firePropertyChange(java.lang.String,double,double)
    </p>
    <p>
      public void java.awt.Component.firePropertyChange(java.lang.String,short,short)
    </p>
    <p>
      public void java.awt.Component.firePropertyChange(java.lang.String,byte,byte)
    </p>
    <p>
      public void java.awt.Component.firePropertyChange(java.lang.String,long,long)
    </p>
    <p>
      public final void java.lang.Object.wait() throws java.lang.InterruptedException
    </p>
    <p>
      public final void java.lang.Object.wait(long,int) throws java.lang.InterruptedException
    </p>
    <p>
      public final native void java.lang.Object.wait(long) throws java.lang.InterruptedException
    </p>
    <p>
      public boolean java.lang.Object.equals(java.lang.Object)
    </p>
    <p>
      public native int java.lang.Object.hashCode()
    </p>
    <p>
      public final native java.lang.Class java.lang.Object.getClass()
    </p>
    <p>
      public final native void java.lang.Object.notify()
    </p>
    <p>
      public final native void java.lang.Object.notifyAll()
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="result" ID="ID_12729449"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .drop(java.awt.dnd.DropTargetDropEvent)
    </p>
    <p>
      .getDocument()
    </p>
    <p>
      .getDocument()
    </p>
    <p>
      .setDocument(javax.swing.text.Document)
    </p>
    <p>
      .getSelectedText()
    </p>
    <p>
      .replaceSelection(java.lang.String)
    </p>
    <p>
      .replaceSelection(com.lightdev.app.shtm.HTMLText)
    </p>
    <p>
      .getTransferHandler()
    </p>
    <p>
      .setUI(javax.swing.plaf.TextUI)
    </p>
    <p>
      .updateUI()
    </p>
    <p>
      .setText(java.lang.String)
    </p>
    <p>
      .removeCharacterAttributes()
    </p>
    <p>
      .dragEnter(java.awt.dnd.DragSourceDragEvent)
    </p>
    <p>
      .dragEnter(java.awt.dnd.DropTargetDragEvent)
    </p>
    <p>
      .dragExit(java.awt.dnd.DropTargetEvent)
    </p>
    <p>
      .dragExit(java.awt.dnd.DragSourceEvent)
    </p>
    <p>
      .setPopup(javax.swing.JPopupMenu)
    </p>
    <p>
      .getPopup()
    </p>
    <p>
      .getCurrentLinkElement()
    </p>
    <p>
      .appendTableColumn()
    </p>
    <p>
      .applyTableAttributes(javax.swing.text.AttributeSet)
    </p>
    <p>
      .applyListAttributes(javax.swing.text.AttributeSet)
    </p>
    <p>
      .applyCellAttributes(javax.swing.text.AttributeSet,int)
    </p>
    <p>
      .getCurrentTableCell()
    </p>
    <p>
      .setPasteModeFromPrefs()
    </p>
    <p>
      .insertTableColumn()
    </p>
    <p>
      .applyParagraphTag(java.lang.String,java.util.Vector)
    </p>
    <p>
      .applyCharacterTag(java.lang.String)
    </p>
    <p>
      .dragOver(java.awt.dnd.DragSourceDragEvent)
    </p>
    <p>
      .dragOver(java.awt.dnd.DropTargetDragEvent)
    </p>
    <p>
      .dropActionChanged(java.awt.dnd.DragSourceDragEvent)
    </p>
    <p>
      .dropActionChanged(java.awt.dnd.DropTargetDragEvent)
    </p>
    <p>
      .toggleTableHeaderCell()
    </p>
    <p>
      .getSHTMLDocument()
    </p>
    <p>
      .deleteTableCol()
    </p>
    <p>
      .appendTableRow()
    </p>
    <p>
      .insertTableRow(java.lang.String)
    </p>
    <p>
      .deleteTableRow()
    </p>
    <p>
      .dragGestureRecognized(java.awt.dnd.DragGestureEvent)
    </p>
    <p>
      .setLink(java.lang.String,java.lang.String,java.lang.String)
    </p>
    <p>
      .setLink(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.awt.Dimension)
    </p>
    <p>
      .removeParagraphAttributes()
    </p>
    <p>
      .getCurrentParagraphElement()
    </p>
    <p>
      .tryDefaultKeyStrokeActionWithinCell(int,int,java.awt.event.ActionEvent)
    </p>
    <p>
      .initDnd()
    </p>
    <p>
      .removeAnchor(java.lang.String)
    </p>
    <p>
      .toggleList(java.lang.String,javax.swing.text.AttributeSet,boolean)
    </p>
    <p>
      .insertNewTable(int)
    </p>
    <p>
      .setPasteMode(com.lightdev.app.shtm.SHTMLEditorPane$PasteMode)
    </p>
    <p>
      .getPasteMode()
    </p>
    <p>
      .insertAnchor(java.lang.String)
    </p>
    <p>
      .insertBreak()
    </p>
    <p>
      .dragDropEnd(java.awt.dnd.DragSourceDropEvent)
    </p>
    <p>
      .getTableCell(int)
    </p>
    <p>
      .goPrevCell(javax.swing.text.Element)
    </p>
    <p>
      .goNextCell(javax.swing.text.Element)
    </p>
    <p>
      .elementToHTML(javax.swing.text.Element)
    </p>
    <p>
      .applyAttributes(javax.swing.text.AttributeSet,boolean)
    </p>
    <p>
      .applyAttributes(javax.swing.text.AttributeSet,boolean,boolean)
    </p>
    <p>
      .read(java.io.InputStream,java.lang.Object) throws java.io.IOException
    </p>
    <p>
      .getScrollableTracksViewportWidth()
    </p>
    <p>
      .getEditorKit()
    </p>
    <p>
      .getScrollableTracksViewportHeight()
    </p>
    <p>
      .getContentType()
    </p>
    <p>
      .setContentType(java.lang.String)
    </p>
    <p>
      .getText()
    </p>
    <p>
      .getUIClassID()
    </p>
    <p>
      .getAccessibleContext()
    </p>
    <p>
      .getPreferredSize()
    </p>
    <p>
      .setEditorKit(javax.swing.text.EditorKit)
    </p>
    <p>
      .addHyperlinkListener(javax.swing.event.HyperlinkListener)
    </p>
    <p>
      .createEditorKitForContentType(java.lang.String)
    </p>
    <p>
      .fireHyperlinkUpdate(javax.swing.event.HyperlinkEvent)
    </p>
    <p>
      .getEditorKitClassNameForContentType(java.lang.String)
    </p>
    <p>
      .getEditorKitForContentType(java.lang.String)
    </p>
    <p>
      .getHyperlinkListeners()
    </p>
    <p>
      .getPage()
    </p>
    <p>
      .registerEditorKitForContentType(java.lang.String,java.lang.String)
    </p>
    <p>
      .registerEditorKitForContentType(java.lang.String,java.lang.String,java.lang.ClassLoader)
    </p>
    <p>
      .removeHyperlinkListener(javax.swing.event.HyperlinkListener)
    </p>
    <p>
      .scrollToReference(java.lang.String)
    </p>
    <p>
      .setEditorKitForContentType(java.lang.String,javax.swing.text.EditorKit)
    </p>
    <p>
      .setPage(java.lang.String) throws java.io.IOException
    </p>
    <p>
      .setPage(java.net.URL) throws java.io.IOException
    </p>
    <p>
      .write(java.io.Writer) throws java.io.IOException
    </p>
    <p>
      .read(java.io.Reader,java.lang.Object) throws java.io.IOException
    </p>
    <p>
      .getActions()
    </p>
    <p>
      .print() throws java.awt.print.PrinterException
    </p>
    <p>
      .print(java.text.MessageFormat,java.text.MessageFormat) throws java.awt.print.PrinterException
    </p>
    <p>
      .print(java.text.MessageFormat,java.text.MessageFormat,boolean,javax.print.PrintService,javax.print.attribute.PrintRequestAttributeSet,boolean) throws java.awt.print.PrinterException
    </p>
    <p>
      .copy()
    </p>
    <p>
      .getPreferredScrollableViewportSize()
    </p>
    <p>
      .getScrollableUnitIncrement(java.awt.Rectangle,int,int)
    </p>
    <p>
      .addCaretListener(javax.swing.event.CaretListener)
    </p>
    <p>
      .addKeymap(java.lang.String,javax.swing.text.Keymap)
    </p>
    <p>
      .cut()
    </p>
    <p>
      .getCaret()
    </p>
    <p>
      .getCaretColor()
    </p>
    <p>
      .getCaretListeners()
    </p>
    <p>
      .getCaretPosition()
    </p>
    <p>
      .getDisabledTextColor()
    </p>
    <p>
      .getDragEnabled()
    </p>
    <p>
      .getDropLocation()
    </p>
    <p>
      .getDropMode()
    </p>
    <p>
      .getFocusAccelerator()
    </p>
    <p>
      .getHighlighter()
    </p>
    <p>
      .getKeymap(java.lang.String)
    </p>
    <p>
      .getKeymap()
    </p>
    <p>
      .getMargin()
    </p>
    <p>
      .getNavigationFilter()
    </p>
    <p>
      .getPrintable(java.text.MessageFormat,java.text.MessageFormat)
    </p>
    <p>
      .getScrollableBlockIncrement(java.awt.Rectangle,int,int)
    </p>
    <p>
      .getSelectedTextColor()
    </p>
    <p>
      .getSelectionColor()
    </p>
    <p>
      .getSelectionEnd()
    </p>
    <p>
      .getSelectionStart()
    </p>
    <p>
      .getUI()
    </p>
    <p>
      .loadKeymap(javax.swing.text.Keymap,javax.swing.text.JTextComponent$KeyBinding[],javax.swing.Action[])
    </p>
    <p>
      .modelToView(int) throws javax.swing.text.BadLocationException
    </p>
    <p>
      .moveCaretPosition(int)
    </p>
    <p>
      .paste()
    </p>
    <p>
      .removeCaretListener(javax.swing.event.CaretListener)
    </p>
    <p>
      .removeKeymap(java.lang.String)
    </p>
    <p>
      .selectAll()
    </p>
    <p>
      .setCaret(javax.swing.text.Caret)
    </p>
    <p>
      .setCaretColor(java.awt.Color)
    </p>
    <p>
      .setCaretPosition(int)
    </p>
    <p>
      .setDisabledTextColor(java.awt.Color)
    </p>
    <p>
      .setDragEnabled(boolean)
    </p>
    <p>
      .setDropMode(javax.swing.DropMode)
    </p>
    <p>
      .setFocusAccelerator(char)
    </p>
    <p>
      .setHighlighter(javax.swing.text.Highlighter)
    </p>
    <p>
      .setKeymap(javax.swing.text.Keymap)
    </p>
    <p>
      .setNavigationFilter(javax.swing.text.NavigationFilter)
    </p>
    <p>
      .setSelectedTextColor(java.awt.Color)
    </p>
    <p>
      .setSelectionColor(java.awt.Color)
    </p>
    <p>
      .setSelectionEnd(int)
    </p>
    <p>
      .setSelectionStart(int)
    </p>
    <p>
      .viewToModel(java.awt.Point)
    </p>
    <p>
      .select(int,int)
    </p>
    <p>
      .getText(int,int) throws javax.swing.text.BadLocationException
    </p>
    <p>
      .setEditable(boolean)
    </p>
    <p>
      .setMargin(java.awt.Insets)
    </p>
    <p>
      .getToolTipText(java.awt.event.MouseEvent)
    </p>
    <p>
      .isEditable()
    </p>
    <p>
      .addInputMethodListener(java.awt.event.InputMethodListener)
    </p>
    <p>
      .getInputMethodRequests()
    </p>
    <p>
      .removeNotify()
    </p>
    <p>
      .setComponentOrientation(java.awt.ComponentOrientation)
    </p>
    <p>
      .update(java.awt.Graphics)
    </p>
    <p>
      .contains(int,int)
    </p>
    <p>
      .getLocation(java.awt.Point)
    </p>
    <p>
      .print(java.awt.Graphics)
    </p>
    <p>
      .getSize(java.awt.Dimension)
    </p>
    <p>
      .isOpaque()
    </p>
    <p>
      .disable()
    </p>
    <p>
      .enable()
    </p>
    <p>
      .setVisible(boolean)
    </p>
    <p>
      .getHeight()
    </p>
    <p>
      .getWidth()
    </p>
    <p>
      .getBounds(java.awt.Rectangle)
    </p>
    <p>
      .paint(java.awt.Graphics)
    </p>
    <p>
      .getRootPane()
    </p>
    <p>
      .getFontMetrics(java.awt.Font)
    </p>
    <p>
      .getListeners(java.lang.Class)
    </p>
    <p>
      .getPopupLocation(java.awt.event.MouseEvent)
    </p>
    <p>
      .getRegisteredKeyStrokes()
    </p>
    <p>
      .getToolTipLocation(java.awt.event.MouseEvent)
    </p>
    <p>
      .getToolTipText()
    </p>
    <p>
      .getTopLevelAncestor()
    </p>
    <p>
      .getVerifyInputWhenFocusTarget()
    </p>
    <p>
      .getVetoableChangeListeners()
    </p>
    <p>
      .getVisibleRect()
    </p>
    <p>
      .grabFocus()
    </p>
    <p>
      .isLightweightComponent(java.awt.Component)
    </p>
    <p>
      .isManagingFocus()
    </p>
    <p>
      .isOptimizedDrawingEnabled()
    </p>
    <p>
      .isPaintingForPrint()
    </p>
    <p>
      .isPaintingTile()
    </p>
    <p>
      .isRequestFocusEnabled()
    </p>
    <p>
      .paintImmediately(int,int,int,int)
    </p>
    <p>
      .paintImmediately(java.awt.Rectangle)
    </p>
    <p>
      .putClientProperty(java.lang.Object,java.lang.Object)
    </p>
    <p>
      .registerKeyboardAction(java.awt.event.ActionListener,javax.swing.KeyStroke,int)
    </p>
    <p>
      .registerKeyboardAction(java.awt.event.ActionListener,java.lang.String,javax.swing.KeyStroke,int)
    </p>
    <p>
      .removeAncestorListener(javax.swing.event.AncestorListener)
    </p>
    <p>
      .removeVetoableChangeListener(java.beans.VetoableChangeListener)
    </p>
    <p>
      .requestDefaultFocus()
    </p>
    <p>
      .resetKeyboardActions()
    </p>
    <p>
      .scrollRectToVisible(java.awt.Rectangle)
    </p>
    <p>
      .setActionMap(javax.swing.ActionMap)
    </p>
    <p>
      .setAlignmentX(float)
    </p>
    <p>
      .setAlignmentY(float)
    </p>
    <p>
      .setAutoscrolls(boolean)
    </p>
    <p>
      .setBorder(javax.swing.border.Border)
    </p>
    <p>
      .setComponentPopupMenu(javax.swing.JPopupMenu)
    </p>
    <p>
      .setDebugGraphicsOptions(int)
    </p>
    <p>
      .setDoubleBuffered(boolean)
    </p>
    <p>
      .setInheritsPopupMenu(boolean)
    </p>
    <p>
      .setInputMap(int,javax.swing.InputMap)
    </p>
    <p>
      .setInputVerifier(javax.swing.InputVerifier)
    </p>
    <p>
      .setNextFocusableComponent(java.awt.Component)
    </p>
    <p>
      .setOpaque(boolean)
    </p>
    <p>
      .setRequestFocusEnabled(boolean)
    </p>
    <p>
      .setTransferHandler(javax.swing.TransferHandler)
    </p>
    <p>
      .setVerifyInputWhenFocusTarget(boolean)
    </p>
    <p>
      .unregisterKeyboardAction(javax.swing.KeyStroke)
    </p>
    <p>
      .getX()
    </p>
    <p>
      .getY()
    </p>
    <p>
      .getGraphics()
    </p>
    <p>
      .addNotify()
    </p>
    <p>
      .getAlignmentX()
    </p>
    <p>
      .getAlignmentY()
    </p>
    <p>
      .getBaseline(int,int)
    </p>
    <p>
      .getBaselineResizeBehavior()
    </p>
    <p>
      .getInsets(java.awt.Insets)
    </p>
    <p>
      .getInsets()
    </p>
    <p>
      .getMaximumSize()
    </p>
    <p>
      .getMinimumSize()
    </p>
    <p>
      .hide()
    </p>
    <p>
      .isDoubleBuffered()
    </p>
    <p>
      .isValidateRoot()
    </p>
    <p>
      .printAll(java.awt.Graphics)
    </p>
    <p>
      .repaint(java.awt.Rectangle)
    </p>
    <p>
      .repaint(long,int,int,int,int)
    </p>
    <p>
      .requestFocusInWindow()
    </p>
    <p>
      .reshape(int,int,int,int)
    </p>
    <p>
      .setBackground(java.awt.Color)
    </p>
    <p>
      .setFocusTraversalKeys(int,java.util.Set)
    </p>
    <p>
      .setFont(java.awt.Font)
    </p>
    <p>
      .setForeground(java.awt.Color)
    </p>
    <p>
      .setMaximumSize(java.awt.Dimension)
    </p>
    <p>
      .setMinimumSize(java.awt.Dimension)
    </p>
    <p>
      .setPreferredSize(java.awt.Dimension)
    </p>
    <p>
      .setToolTipText(java.lang.String)
    </p>
    <p>
      .setDefaultLocale(java.util.Locale)
    </p>
    <p>
      .requestFocus(boolean)
    </p>
    <p>
      .requestFocus()
    </p>
    <p>
      .setEnabled(boolean)
    </p>
    <p>
      .revalidate()
    </p>
    <p>
      .firePropertyChange(java.lang.String,char,char)
    </p>
    <p>
      .firePropertyChange(java.lang.String,boolean,boolean)
    </p>
    <p>
      .firePropertyChange(java.lang.String,int,int)
    </p>
    <p>
      .addAncestorListener(javax.swing.event.AncestorListener)
    </p>
    <p>
      .addVetoableChangeListener(java.beans.VetoableChangeListener)
    </p>
    <p>
      .computeVisibleRect(java.awt.Rectangle)
    </p>
    <p>
      .createToolTip()
    </p>
    <p>
      .getActionForKeyStroke(javax.swing.KeyStroke)
    </p>
    <p>
      .getActionMap()
    </p>
    <p>
      .getAncestorListeners()
    </p>
    <p>
      .getAutoscrolls()
    </p>
    <p>
      .getBorder()
    </p>
    <p>
      .getClientProperty(java.lang.Object)
    </p>
    <p>
      .getComponentPopupMenu()
    </p>
    <p>
      .getConditionForKeyStroke(javax.swing.KeyStroke)
    </p>
    <p>
      .getDebugGraphicsOptions()
    </p>
    <p>
      .getDefaultLocale()
    </p>
    <p>
      .getInheritsPopupMenu()
    </p>
    <p>
      .getInputMap()
    </p>
    <p>
      .getInputMap(int)
    </p>
    <p>
      .getInputVerifier()
    </p>
    <p>
      .getNextFocusableComponent()
    </p>
    <p>
      .add(java.awt.Component)
    </p>
    <p>
      .add(java.lang.String,java.awt.Component)
    </p>
    <p>
      .add(java.awt.Component,java.lang.Object)
    </p>
    <p>
      .add(java.awt.Component,int)
    </p>
    <p>
      .add(java.awt.Component,java.lang.Object,int)
    </p>
    <p>
      .remove(java.awt.Component)
    </p>
    <p>
      .remove(int)
    </p>
    <p>
      .list(java.io.PrintWriter,int)
    </p>
    <p>
      .list(java.io.PrintStream,int)
    </p>
    <p>
      .removeAll()
    </p>
    <p>
      .setFocusTraversalPolicy(java.awt.FocusTraversalPolicy)
    </p>
    <p>
      .locate(int,int)
    </p>
    <p>
      .addContainerListener(java.awt.event.ContainerListener)
    </p>
    <p>
      .getContainerListeners()
    </p>
    <p>
      .insets()
    </p>
    <p>
      .isAncestorOf(java.awt.Component)
    </p>
    <p>
      .isFocusTraversalPolicyProvider()
    </p>
    <p>
      .isFocusTraversalPolicySet()
    </p>
    <p>
      .paintComponents(java.awt.Graphics)
    </p>
    <p>
      .printComponents(java.awt.Graphics)
    </p>
    <p>
      .removeContainerListener(java.awt.event.ContainerListener)
    </p>
    <p>
      .setComponentZOrder(java.awt.Component,int)
    </p>
    <p>
      .setFocusCycleRoot(boolean)
    </p>
    <p>
      .setFocusTraversalPolicyProvider(boolean)
    </p>
    <p>
      .setLayout(java.awt.LayoutManager)
    </p>
    <p>
      .transferFocusDownCycle()
    </p>
    <p>
      .getComponents()
    </p>
    <p>
      .applyComponentOrientation(java.awt.ComponentOrientation)
    </p>
    <p>
      .areFocusTraversalKeysSet(int)
    </p>
    <p>
      .countComponents()
    </p>
    <p>
      .deliverEvent(java.awt.Event)
    </p>
    <p>
      .doLayout()
    </p>
    <p>
      .findComponentAt(java.awt.Point)
    </p>
    <p>
      .findComponentAt(int,int)
    </p>
    <p>
      .getComponentAt(int,int)
    </p>
    <p>
      .getComponentAt(java.awt.Point)
    </p>
    <p>
      .getComponentZOrder(java.awt.Component)
    </p>
    <p>
      .getFocusTraversalKeys(int)
    </p>
    <p>
      .getFocusTraversalPolicy()
    </p>
    <p>
      .getLayout()
    </p>
    <p>
      .getMousePosition(boolean) throws java.awt.HeadlessException
    </p>
    <p>
      .isFocusCycleRoot(java.awt.Container)
    </p>
    <p>
      .isFocusCycleRoot()
    </p>
    <p>
      .layout()
    </p>
    <p>
      .minimumSize()
    </p>
    <p>
      .preferredSize()
    </p>
    <p>
      .invalidate()
    </p>
    <p>
      .validate()
    </p>
    <p>
      .addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)
    </p>
    <p>
      .addPropertyChangeListener(java.beans.PropertyChangeListener)
    </p>
    <p>
      .getComponent(int)
    </p>
    <p>
      .getComponentCount()
    </p>
    <p>
      .add(java.awt.PopupMenu)
    </p>
    <p>
      .remove(java.awt.MenuComponent)
    </p>
    <p>
      .toString()
    </p>
    <p>
      .getName()
    </p>
    <p>
      .contains(java.awt.Point)
    </p>
    <p>
      .size()
    </p>
    <p>
      .getLocation()
    </p>
    <p>
      .getParent()
    </p>
    <p>
      .setName(java.lang.String)
    </p>
    <p>
      .list(java.io.PrintWriter)
    </p>
    <p>
      .list()
    </p>
    <p>
      .list(java.io.PrintStream)
    </p>
    <p>
      .getSize()
    </p>
    <p>
      .location()
    </p>
    <p>
      .setSize(java.awt.Dimension)
    </p>
    <p>
      .setSize(int,int)
    </p>
    <p>
      .resize(int,int)
    </p>
    <p>
      .resize(java.awt.Dimension)
    </p>
    <p>
      .enable(boolean)
    </p>
    <p>
      .isValid()
    </p>
    <p>
      .imageUpdate(java.awt.Image,int,int,int,int,int)
    </p>
    <p>
      .isLightweight()
    </p>
    <p>
      .postEvent(java.awt.Event)
    </p>
    <p>
      .getBounds()
    </p>
    <p>
      .action(java.awt.Event,java.lang.Object)
    </p>
    <p>
      .checkImage(java.awt.Image,int,int,java.awt.image.ImageObserver)
    </p>
    <p>
      .checkImage(java.awt.Image,java.awt.image.ImageObserver)
    </p>
    <p>
      .createImage(java.awt.image.ImageProducer)
    </p>
    <p>
      .createImage(int,int)
    </p>
    <p>
      .getColorModel()
    </p>
    <p>
      .getFont()
    </p>
    <p>
      .prepareImage(java.awt.Image,int,int,java.awt.image.ImageObserver)
    </p>
    <p>
      .prepareImage(java.awt.Image,java.awt.image.ImageObserver)
    </p>
    <p>
      .getPeer()
    </p>
    <p>
      .isFocusable()
    </p>
    <p>
      .getBackground()
    </p>
    <p>
      .getForeground()
    </p>
    <p>
      .getGraphicsConfiguration()
    </p>
    <p>
      .addComponentListener(java.awt.event.ComponentListener)
    </p>
    <p>
      .addFocusListener(java.awt.event.FocusListener)
    </p>
    <p>
      .addHierarchyBoundsListener(java.awt.event.HierarchyBoundsListener)
    </p>
    <p>
      .addHierarchyListener(java.awt.event.HierarchyListener)
    </p>
    <p>
      .addKeyListener(java.awt.event.KeyListener)
    </p>
    <p>
      .addMouseListener(java.awt.event.MouseListener)
    </p>
    <p>
      .addMouseMotionListener(java.awt.event.MouseMotionListener)
    </p>
    <p>
      .addMouseWheelListener(java.awt.event.MouseWheelListener)
    </p>
    <p>
      .bounds()
    </p>
    <p>
      .createVolatileImage(int,int)
    </p>
    <p>
      .createVolatileImage(int,int,java.awt.ImageCapabilities) throws java.awt.AWTException
    </p>
    <p>
      .dispatchEvent(java.awt.AWTEvent)
    </p>
    <p>
      .enableInputMethods(boolean)
    </p>
    <p>
      .getComponentListeners()
    </p>
    <p>
      .getComponentOrientation()
    </p>
    <p>
      .getCursor()
    </p>
    <p>
      .getDropTarget()
    </p>
    <p>
      .getFocusCycleRootAncestor()
    </p>
    <p>
      .getFocusListeners()
    </p>
    <p>
      .getFocusTraversalKeysEnabled()
    </p>
    <p>
      .getHierarchyBoundsListeners()
    </p>
    <p>
      .getHierarchyListeners()
    </p>
    <p>
      .getIgnoreRepaint()
    </p>
    <p>
      .getInputContext()
    </p>
    <p>
      .getInputMethodListeners()
    </p>
    <p>
      .getKeyListeners()
    </p>
    <p>
      .getLocationOnScreen()
    </p>
    <p>
      .getMouseListeners()
    </p>
    <p>
      .getMouseMotionListeners()
    </p>
    <p>
      .getMousePosition() throws java.awt.HeadlessException
    </p>
    <p>
      .getMouseWheelListeners()
    </p>
    <p>
      .getToolkit()
    </p>
    <p>
      .getTreeLock()
    </p>
    <p>
      .gotFocus(java.awt.Event,java.lang.Object)
    </p>
    <p>
      .handleEvent(java.awt.Event)
    </p>
    <p>
      .hasFocus()
    </p>
    <p>
      .isBackgroundSet()
    </p>
    <p>
      .isCursorSet()
    </p>
    <p>
      .isDisplayable()
    </p>
    <p>
      .isFocusOwner()
    </p>
    <p>
      .isFocusTraversable()
    </p>
    <p>
      .isFontSet()
    </p>
    <p>
      .isForegroundSet()
    </p>
    <p>
      .isMaximumSizeSet()
    </p>
    <p>
      .isMinimumSizeSet()
    </p>
    <p>
      .isPreferredSizeSet()
    </p>
    <p>
      .isShowing()
    </p>
    <p>
      .keyDown(java.awt.Event,int)
    </p>
    <p>
      .keyUp(java.awt.Event,int)
    </p>
    <p>
      .lostFocus(java.awt.Event,java.lang.Object)
    </p>
    <p>
      .mouseDown(java.awt.Event,int,int)
    </p>
    <p>
      .mouseDrag(java.awt.Event,int,int)
    </p>
    <p>
      .mouseEnter(java.awt.Event,int,int)
    </p>
    <p>
      .mouseExit(java.awt.Event,int,int)
    </p>
    <p>
      .mouseMove(java.awt.Event,int,int)
    </p>
    <p>
      .mouseUp(java.awt.Event,int,int)
    </p>
    <p>
      .move(int,int)
    </p>
    <p>
      .nextFocus()
    </p>
    <p>
      .paintAll(java.awt.Graphics)
    </p>
    <p>
      .removeComponentListener(java.awt.event.ComponentListener)
    </p>
    <p>
      .removeFocusListener(java.awt.event.FocusListener)
    </p>
    <p>
      .removeHierarchyBoundsListener(java.awt.event.HierarchyBoundsListener)
    </p>
    <p>
      .removeHierarchyListener(java.awt.event.HierarchyListener)
    </p>
    <p>
      .removeInputMethodListener(java.awt.event.InputMethodListener)
    </p>
    <p>
      .removeKeyListener(java.awt.event.KeyListener)
    </p>
    <p>
      .removeMouseListener(java.awt.event.MouseListener)
    </p>
    <p>
      .removeMouseMotionListener(java.awt.event.MouseMotionListener)
    </p>
    <p>
      .removeMouseWheelListener(java.awt.event.MouseWheelListener)
    </p>
    <p>
      .repaint()
    </p>
    <p>
      .repaint(long)
    </p>
    <p>
      .repaint(int,int,int,int)
    </p>
    <p>
      .setBounds(java.awt.Rectangle)
    </p>
    <p>
      .setBounds(int,int,int,int)
    </p>
    <p>
      .setCursor(java.awt.Cursor)
    </p>
    <p>
      .setDropTarget(java.awt.dnd.DropTarget)
    </p>
    <p>
      .setFocusTraversalKeysEnabled(boolean)
    </p>
    <p>
      .setFocusable(boolean)
    </p>
    <p>
      .setIgnoreRepaint(boolean)
    </p>
    <p>
      .setLocation(int,int)
    </p>
    <p>
      .setLocation(java.awt.Point)
    </p>
    <p>
      .show(boolean)
    </p>
    <p>
      .show()
    </p>
    <p>
      .transferFocus()
    </p>
    <p>
      .transferFocusBackward()
    </p>
    <p>
      .transferFocusUpCycle()
    </p>
    <p>
      .getLocale()
    </p>
    <p>
      .setLocale(java.util.Locale)
    </p>
    <p>
      .inside(int,int)
    </p>
    <p>
      .removePropertyChangeListener(java.beans.PropertyChangeListener)
    </p>
    <p>
      .removePropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)
    </p>
    <p>
      .getPropertyChangeListeners(java.lang.String)
    </p>
    <p>
      .getPropertyChangeListeners()
    </p>
    <p>
      .isVisible()
    </p>
    <p>
      .isEnabled()
    </p>
    <p>
      .firePropertyChange(java.lang.String,float,float)
    </p>
    <p>
      .firePropertyChange(java.lang.String,double,double)
    </p>
    <p>
      .firePropertyChange(java.lang.String,short,short)
    </p>
    <p>
      .firePropertyChange(java.lang.String,byte,byte)
    </p>
    <p>
      .firePropertyChange(java.lang.String,long,long)
    </p>
    <p>
      .wait() throws java.lang.InterruptedException
    </p>
    <p>
      .wait(long,int) throws java.lang.InterruptedException
    </p>
    <p>
      .wait(long) throws java.lang.InterruptedException
    </p>
    <p>
      .equals(java.lang.Object)
    </p>
    <p>
      .hashCode()
    </p>
    <p>
      .getClass()
    </p>
    <p>
      .notify()
    </p>
    <p>
      .notifyAll()
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="Italics" ID="ID_604443210"/>
<node TEXT="probando" ID="ID_140261141">
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
</node>
<node TEXT="MDH" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_990523897">
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node) //pprob&#xa;//xxxx" STYLE_REF="MarkdownHelperLink" ID="ID_53296978" LINK="#ID_462044149"/>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1805852082" LINK="#ID_598044806"/>
</node>
<node TEXT="WikiTools" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_138969719">
<node TEXT="Agregar estos nodos a dialogo WikiTools" STYLE_REF="Tarea finalizada" ID="ID_1053826906"/>
<node TEXT="currentLocation" ID="ID_1889830071" BACKGROUND_COLOR="#ffcc99">
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
<node TEXT="where are we:" ID="ID_1355070808"/>
<node TEXT="----" ID="ID_1642671536"/>
</node>
<node TEXT="docsInside" ID="ID_510256750" BACKGROUND_COLOR="#ffcc99">
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
<node TEXT="Pages:" ID="ID_494983069"/>
<node TEXT="----" ID="ID_51267757"/>
</node>
<node TEXT="topDocsList" ID="ID_1943543754" BACKGROUND_COLOR="#ffcc99"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.topDocsList(node)
//prueba
</text>
</richcontent>
</node>
<node TEXT="structuredDocsList" ID="ID_1924968974" BACKGROUND_COLOR="#ffcc99"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.structuredDocsList(node)
//prueba
</text>
</richcontent>
</node>
<node TEXT="linkToWikipage" ID="ID_720822359" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1562104311" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.previousAndNext(node)
// prueba</text>
</richcontent>
<node TEXT="continuar:" ID="ID_559415795"/>
<node TEXT="bye!" ID="ID_411539975"/>
</node>
</node>
</node>
</node>
<node TEXT="Freeplane_MarkdownHelper" STYLE_REF="baseFolder" FOLDED="true" POSITION="right" ID="ID_539998996" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/">
<attribute_layout NAME_WIDTH="98.25 pt" VALUE_WIDTH="98.25 pt"/>
<attribute NAME="nameFilter" VALUE=""/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="MarkdownRootFolder" VALUE="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/" OBJECT="java.net.URI|file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/"/>
<attribute NAME="MDHGithubBranch" VALUE=""/>
<attribute NAME="MDHTargetRootPath" VALUE=""/>
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
<node TEXT=".git" STYLE_REF="locked" ID="ID_844747112" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/.git/"/>
<node TEXT="files" STYLE_REF="Organizador" ID="ID_989785631">
<node TEXT="MarkdownHelper" FOLDED="true" ID="ID_1507654983" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/">
<node TEXT="no relevante acá" STYLE_REF="Organizador" FOLDED="true" ID="ID_1780514987">
<node TEXT="locked" STYLE_REF="locked" FOLDED="true" ID="ID_719479184">
<node TEXT=".gradle" ID="ID_97801152" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/.gradle/"/>
<node TEXT="build" ID="ID_1632654840" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/build/"/>
<node TEXT="lib" ID="ID_163701953" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/lib/"/>
<node TEXT="src" ID="ID_140075956" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/src/"/>
</node>
<node TEXT="xx" FOLDED="true" ID="ID_1763961188">
<node TEXT="MarkdownHelper-v0.1.0-alpha-05.addon.mm" ID="ID_1534124332" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper-v0.1.0-alpha-05.addon.mm"/>
<node TEXT="MarkdownHelper-v0.1.0-alpha-04.addon.mm" ID="ID_1206407132" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper-v0.1.0-alpha-04.addon.mm"/>
<node TEXT="MarkdownHelper-v0.1.0-alpha-03.addon.mm" ID="ID_688778034" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper-v0.1.0-alpha-03.addon.mm"/>
<node TEXT="MarkdownHelper-v0.1.0-alpha-02.addon.mm" ID="ID_1333508374" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper-v0.1.0-alpha-02.addon.mm"/>
<node TEXT="MarkdownHelper-v0.1.0-alpha.addon.mm" ID="ID_1697666371" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper-v0.1.0-alpha.addon.mm"/>
<node TEXT="MarkdownHelper-v0.1.0.addon.mm" ID="ID_315700758" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper-v0.1.0.addon.mm"/>
<node TEXT=".gitignore" ID="ID_1842365769" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/.gitignore"/>
<node TEXT="MarkdownHelper.mm" ID="ID_141786730" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper.mm"/>
<node TEXT="MarkdownHelper.mm.bak" ID="ID_1785208798" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper.mm.bak"/>
<node TEXT="build.gradle" ID="ID_494987974" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/build.gradle"/>
<node TEXT="version.properties" ID="ID_1305958281" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/version.properties"/>
</node>
</node>
<node TEXT="images" FOLDED="true" ID="ID_1182099985" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/">
<node TEXT="MarkdownHelper-icon.svg" ID="ID_1091536814" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/MarkdownHelper-icon.svg"/>
<node TEXT="MarkdownHelper-screenshot-1.png" ID="ID_1552923571" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/MarkdownHelper-screenshot-1.png"/>
<node TEXT="MarkdownHelper.png" ID="ID_1890520642" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/MarkdownHelper.png"/>
<node TEXT="MarkdownHelper(100x63).png" ID="ID_1305936608" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/MarkdownHelper(100x63).png"/>
</node>
<node TEXT="scripts" FOLDED="true" ID="ID_1028109873" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/">
<node TEXT="rebuildMarkdownHelperDialog.groovy" ID="ID_1281777088" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/rebuildMarkdownHelperDialog.groovy"/>
<node TEXT="showLinkedImageAsDetails.groovy" ID="ID_1377142652" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/showLinkedImageAsDetails.groovy"/>
<node TEXT="showLinkedImageAsNote.groovy" ID="ID_580106851" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/showLinkedImageAsNote.groovy"/>
<node TEXT="showMarkdownHelperDialog.groovy" ID="ID_772887423" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/scripts/showMarkdownHelperDialog.groovy"/>
</node>
<node TEXT="zips" ID="ID_1699371995" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/">
<node TEXT="doc" ID="ID_1371431375" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/doc/">
<node TEXT="MarkdownHelper" ID="ID_807755283" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/doc/MarkdownHelper/"/>
</node>
<node TEXT="templates" ID="ID_507287786" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/">
<node TEXT="MarkdownHelper" ID="ID_1353506768" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/MarkdownHelper/">
<node TEXT="MarkdownHelper template.mm" ID="ID_421285328" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/MarkdownHelper/MarkdownHelper%20template.mm"/>
</node>
</node>
<node TEXT="icons" FOLDED="true" ID="ID_226106076" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="MarkdownHelper" FOLDED="true" ID="ID_1310609649" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/">
<node TEXT="buletted.svg" ID="ID_855523398" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/buletted.svg"/>
<node TEXT="centered.svg" ID="ID_1068469534" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/centered.svg"/>
<node TEXT="completed.svg" ID="ID_1603511797" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/completed.svg"/>
<node TEXT="copyPlain.svg" ID="ID_449964249" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/copyPlain.svg"/>
<node TEXT="doNotEnter.svg" ID="ID_330952010" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/doNotEnter.svg"/>
<node TEXT="dontLook.svg" ID="ID_569905550" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/dontLook.svg"/>
<node TEXT="help.svg" ID="ID_1618583117" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/help.svg"/>
<node TEXT="isTask.svg" ID="ID_1038984117" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/isTask.svg"/>
<node TEXT="leaf.svg" ID="ID_13249064" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/leaf.svg"/>
<node TEXT="linked.svg" ID="ID_1912153835" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/linked.svg"/>
<node TEXT="newLine.svg" ID="ID_1754835481" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/newLine.svg"/>
<node TEXT="numbered.svg" ID="ID_114533734" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/numbered.svg"/>
<node TEXT="patchAttributes.svg" ID="ID_1015907573" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/patchAttributes.svg"/>
<node TEXT="pin.svg" ID="ID_1284484696" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/pin.svg"/>
<node TEXT="right.svg" ID="ID_381919573" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/right.svg"/>
<node TEXT="save.svg" ID="ID_402857136" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/save.svg"/>
<node TEXT="textBlockParam.svg" ID="ID_1879170175" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/textBlockParam.svg"/>
<node TEXT="toDocAndBack.svg" ID="ID_1718214820" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/toDocAndBack.svg"/>
<node TEXT="wiki.svg" STYLE_REF="freshNew" ID="ID_1612780836" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/MarkdownHelper/wiki.svg"/>
</node>
<node TEXT="emoji-1F343.svg" ID="ID_211559846" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F343.svg"/>
<node TEXT="emoji-1F4BE.svg" ID="ID_520712935" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F4BE.svg"/>
<node TEXT="emoji-1F4CD.svg" ID="ID_548888118" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F4CD.svg"/>
<node TEXT="emoji-1F4DD.svg" ID="ID_409975560" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F4DD.svg"/>
<node TEXT="emoji-1F517.svg" ID="ID_1706591010" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F517.svg"/>
<node TEXT="emoji-1F519.svg" ID="ID_665238320" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F519.svg"/>
<node TEXT="emoji-1F522.svg" ID="ID_1589007349" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F522.svg"/>
<node TEXT="emoji-1F524.svg" ID="ID_5557580" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F524.svg"/>
<node TEXT="emoji-1F532.svg" ID="ID_301485209" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F532.svg"/>
<node TEXT="emoji-1F537.svg" ID="ID_1196926778" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F537.svg"/>
<node TEXT="emoji-1F648.svg" ID="ID_606756855" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F648.svg"/>
<node TEXT="emoji-1FA79.svg" ID="ID_782887322" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1FA79.svg"/>
<node TEXT="emoji-2194.svg" ID="ID_1194865197" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-2194.svg"/>
<node TEXT="emoji-21A9.svg" ID="ID_1355022692" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-21A9.svg"/>
<node TEXT="emoji-26D4.svg" ID="ID_1511981940" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-26D4.svg"/>
<node TEXT="emoji-2714.svg" ID="ID_1433534157" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-2714.svg"/>
<node TEXT="emoji-2753.svg" ID="ID_732443435" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-2753.svg"/>
<node TEXT="emoji-27A1.svg" ID="ID_114536181" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-27A1.svg"/>
<node TEXT="emoji-1F4DA.svg" ID="ID_1373630383" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/icons/emoji-1F4DA.svg"/>
</node>
</node>
</node>
<node TEXT="ignore" STYLE_REF="missing" ID="ID_557684061" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/"/>
<node TEXT="resources" FOLDED="true" ID="ID_537134883" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/">
<node TEXT="MarkdownHelper (inkscape).svg" ID="ID_1439494555" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/MarkdownHelper%20(inkscape).svg"/>
<node TEXT="icons" FOLDED="true" ID="ID_1919038751" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/">
<node TEXT="mostrar detalles : alt + F2" ID="ID_145131732"/>
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
<node TEXT="FP Icon 020.png" ID="ID_828967076" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20020.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="FP Icon 021.png" STYLE_REF="freshNew" ID="ID_159615767" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20021.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="FP Icon 022.png" STYLE_REF="freshNew" ID="ID_1393108735" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20022.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="FP Icon 023.png" STYLE_REF="freshNew" ID="ID_209146527" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20023.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS">
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
<node TEXT="Dialog" ID="ID_571522914" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/">
<node TEXT="MD Dialog.png" ID="ID_686316564" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/MD%20Dialog.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="Dialog 1 2 3.png" ID="ID_1930852978" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%201%202%203.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="Dialog panel 003b.png" ID="ID_1873476129" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20003b.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1739189801" LINK="#ID_1873476129"/>
</node>
<node TEXT="Dialog panel 004.png" ID="ID_280948892" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20004.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="Examples" STYLE_REF="file_folder" FOLDED="true" ID="ID_229880131" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/">
<node TEXT="web link 001.png" ID="ID_932222153" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/web%20link%20001.png"/>
<node TEXT="web link 002.png" ID="ID_1654606312" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/web%20link%20002.png"/>
<node TEXT="web link 003.png" ID="ID_1681402618" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/web%20link%20003.png"/>
<node TEXT="markdownDocument example 001.png" ID="ID_1666300950" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/markdownDocument%20example%20001.png"/>
<node TEXT="markdownDocument example 002.png" ID="ID_628251191" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/markdownDocument%20example%20002.png"/>
<node TEXT="markdownDocument example 003.png" ID="ID_1584384688" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/markdownDocument%20example%20003.png"/>
<node TEXT="MDdoc 01.gif" ID="ID_1688158345" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDdoc%2001.gif"/>
<node TEXT="MDDoc 02.gif" ID="ID_741879942" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2002.gif"/>
<node TEXT="MDDoc 03.gif" ID="ID_999929514" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2003.gif"/>
<node TEXT="MDDoc 04.gif" ID="ID_1497405467" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2004.gif"/>
<node TEXT="MDDoc 05.gif" ID="ID_139387978" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2005.gif"/>
<node TEXT="MDDoc 06.gif" ID="ID_626702459" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2006.gif"/>
<node TEXT="MDDoc 07.gif" ID="ID_1869821183" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDDoc%2007.gif"/>
<node TEXT="MDHnodes-TOC.gif" ID="ID_723123711" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-TOC.gif"/>
<node TEXT="MDHnodes-WebImage.gif" ID="ID_1511992597" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-WebImage.gif"/>
<node TEXT="MDHnodes-WebLink.gif" ID="ID_1630985854" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-WebLink.gif"/>
<node TEXT="MDHnodes-CodeBlock.gif" ID="ID_1403255199" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-CodeBlock.gif"/>
<node TEXT="MDHnodes-LinkToFile.gif" ID="ID_277975381" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-LinkToFile.gif"/>
<node TEXT="MDHnodes-LinkToImage.gif" ID="ID_93564966" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-LinkToImage.gif"/>
<node TEXT="MDHnodes-Lists.gif" ID="ID_1810589116" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-Lists.gif"/>
<node TEXT="MDHnodes-Table.gif" ID="ID_608624469" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-Table.gif"/>
<node TEXT="MDHnodes-comment.gif" ID="ID_1620682938" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-comment.gif"/>
<node TEXT="MDHnodes-plainTasks.gif" ID="ID_1622565705" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-plainTasks.gif"/>
<node TEXT="MDHnodes-structuredTasks.gif" ID="ID_1991987286" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-structuredTasks.gif"/>
<node TEXT="MDHnodes-textBlock.gif" ID="ID_773557304" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-textBlock.gif"/>
<node TEXT="MDHnodes-numberedList.gif" ID="ID_874556509" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-numberedList.gif"/>
<node TEXT="MDHnodes-numberedList2.gif" ID="ID_1881998686" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/MDHnodes-numberedList2.gif"/>
<node TEXT="Extras-Back.gif" ID="ID_1650791776" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Extras-Back.gif"/>
<node TEXT="Extras-ExportToNode.gif" ID="ID_1723344385" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Extras-ExportToNode.gif"/>
<node TEXT="Extras-ExportToNode02.gif" ID="ID_135925025" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Extras-ExportToNode02.gif"/>
<node TEXT="Extras-save.gif" ID="ID_1353656225" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Extras-save.gif"/>
<node TEXT="Links-HowTo.gif" ID="ID_1143746605" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Links-HowTo.gif"/>
<node TEXT="Links-toBeLinkedNode.gif" ID="ID_1514218151" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Links-toBeLinkedNode.gif"/>
<node TEXT="WaysToAssignLink.png" ID="ID_1533585553" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/WaysToAssignLink.png"/>
<node TEXT="Calvin01.png" ID="ID_1150503925" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Calvin01.png"/>
<node TEXT="Calvin02.png" ID="ID_426263812" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Calvin02.png"/>
<node TEXT="Npp Ex.png" ID="ID_26833910" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/Npp%20Ex.png"/>
<node TEXT="NppCalvin.png" ID="ID_1092741363" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/NppCalvin.png"/>
<node TEXT="VSCode Calvin.png" ID="ID_1150567671" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/VSCode%20Calvin.png"/>
<node TEXT="textBlock  01.png" ID="ID_1156849491" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Examples/textBlock%20%2001.png"/>
</node>
<node TEXT="MarkdownHelper_footer.png" ID="ID_1354023376" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/MarkdownHelper_footer.png"/>
<node TEXT="Menu" ID="ID_186639222" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Menu/">
<node TEXT="Menu01.png" ID="ID_1132953885" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Menu/Menu01.png"/>
<node TEXT="Menu02.gif" ID="ID_763334886" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Menu/Menu02.gif"/>
</node>
<node TEXT="Instalation" ID="ID_1114347989" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Instalation/">
<node TEXT="Install 001.png" ID="ID_8240058" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Instalation/Install%20001.png"/>
<node TEXT="Install 002.png" ID="ID_352092704" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Instalation/Install%20002.png"/>
<node TEXT="FilesOfType.png" ID="ID_852266485" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Instalation/FilesOfType.png"/>
</node>
<node TEXT="Wiki" ID="ID_901776130" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Wiki/">
<node TEXT="WikiExample 001.png" ID="ID_671747902" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Wiki/WikiExample%20001.png"/>
<node TEXT="WikiExample 002.png" ID="ID_1444741475" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Wiki/WikiExample%20002.png"/>
<node TEXT="WikiExample 003.png" ID="ID_1363162033" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Wiki/WikiExample%20003.png"/>
<node TEXT="WikiExample 004.png" ID="ID_1692348492" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Wiki/WikiExample%20004.png"/>
<node TEXT="WikiExample 005.png" ID="ID_205328805" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Wiki/WikiExample%20005.png"/>
<node TEXT="WikiExample 006.png" ID="ID_1071134848" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Wiki/WikiExample%20006.png"/>
<node TEXT="WikiExample 007.png" ID="ID_1081740843" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Wiki/WikiExample%20007.png"/>
</node>
</node>
<node TEXT="tests - examples" FOLDED="true" ID="ID_927204430" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/">
<node TEXT="Markdown document.md" ID="ID_52461332" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Markdown%20document.md"/>
<node TEXT="dinosaur-5995333_100.png" ID="ID_909854168" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/dinosaur-5995333_100.png"/>
<node TEXT="example 01.md" ID="ID_328963337" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/example%2001.md"/>
<node TEXT="heros-journey.png" ID="ID_598044806" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/heros-journey.png"/>
<node TEXT="plain task list.md" ID="ID_814508748" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/plain%20task%20list.md"/>
<node TEXT="readme.txt" ID="ID_1556048050" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/readme.txt"/>
<node TEXT="Calvin and Hobbes.md" ID="ID_1708992289" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Calvin%20and%20Hobbes.md"/>
<node TEXT="Calvin and Hobbes Example.mm" ID="ID_1494550371" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Calvin%20and%20Hobbes%20Example.mm"/>
<node TEXT="Markdown Helper example 01.mm" ID="ID_788762744" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Markdown%20Helper%20example%2001.mm"/>
<node TEXT="MD-ex01_01.md" ID="ID_1750916147" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/MD-ex01_01.md"/>
<node TEXT="MD-ex01_02.md" ID="ID_548507964" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/MD-ex01_02.md"/>
<node TEXT="MD-ex01_03.md" ID="ID_474132283" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/MD-ex01_03.md"/>
</node>
<node TEXT="wiki" FOLDED="true" ID="ID_198308461" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/wiki/">
<node TEXT="Markdown Helper Wiki.mm" ID="ID_1522672475" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/wiki/Markdown%20Helper%20Wiki.mm"/>
</node>
<node TEXT="delete" STYLE_REF="file_folder" FOLDED="true" ID="ID_1225805113" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/">
<node TEXT="dialogo MD con save.groovy" ID="ID_822713443" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/dialogo%20MD%20con%20save.groovy"/>
<node TEXT="markdown-cheat-sheet.md" ID="ID_1776801324" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/markdown-cheat-sheet.md"/>
<node TEXT="markdown-cheatsheet-online.pdf" ID="ID_1250795291" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/markdown-cheatsheet-online.pdf"/>
<node TEXT="testmap formula y markdown.mm" ID="ID_1324961310" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/testmap%20formula%20y%20markdown.mm"/>
</node>
<node TEXT=".gitattributes" ID="ID_363259253" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/.gitattributes"/>
<node TEXT="LICENSE.md" ID="ID_1055367953" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/LICENSE.md"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      MIT License
    </p>
    <p>
      
    </p>
    <p>
      Copyright (c) 2021 Eduardo Frohlich.
    </p>
    <p>
      
    </p>
    <p>
      Permission is hereby granted, free of charge, to any person obtaining a copy
    </p>
    <p>
      of this software and associated documentation files (the &quot;Software&quot;), to deal
    </p>
    <p>
      in the Software without restriction, including without limitation the rights
    </p>
    <p>
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    </p>
    <p>
      copies of the Software, and to permit persons to whom the Software is
    </p>
    <p>
      furnished to do so, subject to the following conditions:
    </p>
    <p>
      
    </p>
    <p>
      The above copyright notice and this permission notice shall be included in all
    </p>
    <p>
      copies or substantial portions of the Software.
    </p>
    <p>
      
    </p>
    <p>
      THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    </p>
    <p>
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    </p>
    <p>
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    </p>
    <p>
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    </p>
    <p>
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    </p>
    <p>
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    </p>
    <p>
      SOFTWARE.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="README.md" ID="ID_1306888434" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/README.md"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      # Markdown Helper Add On for Freeplane
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      Welcome to the **alpha** version of the **Markdown Helper AddOn** for **Freeplane**.
    </p>
    <p>
      
    </p>
    <p>
      This Add On is a tool to create markdown documents in a Freeplane mindmapping way.
    </p>
    <p>
      
    </p>
    <p>
      More information, instructions and examples in the [Markdown Helper **wiki**](https://github.com/EdoFro/Freeplane_MarkdownHelper/wiki) page.
    </p>
    <p>
      
    </p>
    <p>
      # How it works
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      The general idea of this AddOn is to insert **special nodes** in your map that help to **translate** the information in a mindmap **into a Markdown** document.
    </p>
    <p>
      
    </p>
    <p>
      Here you can see an example where a **paragraph** is **combined with** nodes with links to **images** and **webpages** into a Markdown formatted text.
    </p>
    <p>
      
    </p>
    <p>
      You obtain a good looking document retaining the **flexibility** that offers Freeplane and Mindmapping. You can easy reorder and insert new ideas as usual.
    </p>
    <p>
      
    </p>
    <p>
      ![textBlock&nbsp;&nbsp;01.png](resources/Examples/textBlock%20%2001.png)
    </p>
    <p>
      
    </p>
    <p>
      More information, instructions and examples in the [Markdown Helper **wiki**](https://github.com/EdoFro/Freeplane_MarkdownHelper/wiki) page.
    </p>
    <p>
      
    </p>
    <p>
      # Some screenshots
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      ## 1. Mindmap and notepanel
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      ### 1.1. Building a textblock with links to webpages
    </p>
    <p>
      
    </p>
    <p>
      ![Calvin02.png](resources/Examples/Calvin02.png)
    </p>
    <p>
      
    </p>
    <p>
      ### 1.2. Building a table
    </p>
    <p>
      
    </p>
    <p>
      ![Calvin01.png](resources/Examples/Calvin01.png)
    </p>
    <p>
      
    </p>
    <p>
      More information, instructions and examples in the [Markdown Helper **wiki**](https://github.com/EdoFro/Freeplane_MarkdownHelper/wiki) page.
    </p>
    <p>
      
    </p>
    <p>
      # Example animations
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      ## 1. ToC example
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      ![MDHnodes-TOC.gif](resources/Examples/MDHnodes-TOC.gif)
    </p>
    <p>
      
    </p>
    <p>
      ## 2. List example
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      ![MDHnodes-Lists.gif](resources/Examples/MDHnodes-Lists.gif)
    </p>
    <p>
      
    </p>
    <p>
      ## 3. Table example
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      ![MDHnodes-Table.gif](resources/Examples/MDHnodes-Table.gif)
    </p>
    <p>
      
    </p>
    <p>
      More information, instructions and examples in the [Markdown Helper **wiki**](https://github.com/EdoFro/Freeplane_MarkdownHelper/wiki) page.
    </p>
    <p>
      
    </p>
    <p>
      # This AddOn is still beta
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      So it may have a lot of bugs. Use it at your own risk. (**Freeplane** has an excelent &quot;*Undo*&quot; implementation, so the risk is in fact very limited)
    </p>
    <p>
      
    </p>
    <p>
      Please report any bug in this addOn in its GitHub page
    </p>
    <p>
      
    </p>
    <p>
      # Your Help needed
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      I'm not very good at writing in english, so if you find any error please tell me (and please explain me how to write it correctly)
    </p>
    <p>
      
    </p>
    <p>
      # About Freeplane
    </p>
    <p>
      
    </p>
    <p>
      -----
    </p>
    <p>
      
    </p>
    <p>
      [Freeplane](https://www.freeplane.org/wiki/index.php/Home) is a free and open source software application that supports thinking, sharing information and getting things done at work, in school and at home. The software can be used for [mind mapping](https://secure.wikimedia.org/wikipedia/en/wiki/Mind_map) and analyzing the information contained in mind maps. Freeplane runs on any operating system that has a current version of Java installed. It can be run locally or [portably](https://en.wikipedia.org/wiki/Portable_application) from removable storage like an USB drive.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="README.md" STYLE_REF="MarkdownHelperNode" ID="ID_1781546473" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/README.md">
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)</text>
</richcontent>
<node TEXT="resources" STYLE_REF="file_folder" ID="ID_1372284439" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/">
<icon BUILTIN="emoji-1F648"/>
<attribute NAME="lastModifiedTime" VALUE="09-04-21 19:24" OBJECT="org.freeplane.features.format.FormattedDate|2021-04-09T19:24-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-04-21 18:43" OBJECT="org.freeplane.features.format.FormattedDate|2021-04-10T18:43-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="12-03-21 15:00" OBJECT="org.freeplane.features.format.FormattedDate|2021-03-12T15:00-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<attribute NAME="modifiedFile" VALUE="true"/>
<node ID="ID_1631626164" TREE_ID="ID_689678676">
<node ID="ID_136944158" TREE_ID="ID_1686567372"/>
<node ID="ID_1470392933" TREE_ID="ID_743361085"/>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1560341717"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="More information in the xxx page" ID="ID_491142577"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      More information, instructions and examples in the $1 page.
    </p>
  </body>
</html></richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_454652843"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Markdown Helper **wiki**" ID="ID_866993859" LINK="https://github.com/EdoFro/Freeplane_MarkdownHelper/wiki"/>
</node>
</node>
</node>
<node ID="ID_255826178" TREE_ID="ID_218329724">
<node ID="ID_1513511905" TREE_ID="ID_1655331551"/>
<node ID="ID_1156979133" TREE_ID="ID_1960270936"/>
<node ID="ID_304997158" TREE_ID="ID_697224250"/>
<node ID="ID_314678007" TREE_ID="ID_1859886616">
<node ID="ID_1375944969" TREE_ID="ID_1789876402"/>
</node>
</node>
<node ID="ID_466339390" TREE_ID="ID_1560341717">
<node ID="ID_1642961093" TREE_ID="ID_491142577">
<node ID="ID_1187780286" TREE_ID="ID_454652843">
<node ID="ID_355671565" TREE_ID="ID_866993859"/>
</node>
</node>
</node>
<node TEXT="Some screenshots" ID="ID_829384951">
<node ID="ID_379550395" TREE_ID="ID_257860736">
<node ID="ID_687726122" TREE_ID="ID_684662168">
<node ID="ID_207263577" TREE_ID="ID_1808638012">
<node ID="ID_1963122013" TREE_ID="ID_741391716"/>
</node>
</node>
<node ID="ID_923588849" TREE_ID="ID_120214311">
<node ID="ID_1695125368" TREE_ID="ID_105343902">
<node ID="ID_197119543" TREE_ID="ID_1200076551"/>
</node>
</node>
</node>
<node ID="ID_1854764920" TREE_ID="ID_1560341717">
<node ID="ID_656055332" TREE_ID="ID_491142577">
<node ID="ID_93101200" TREE_ID="ID_454652843">
<node ID="ID_1109666182" TREE_ID="ID_866993859"/>
</node>
</node>
</node>
</node>
<node TEXT="Example animations" ID="ID_1115158932">
<node ID="ID_1002052481" TREE_ID="ID_1044042573">
<node ID="ID_993229671" TREE_ID="ID_553988761">
<node ID="ID_1916980414" TREE_ID="ID_1792566711"/>
</node>
</node>
<node ID="ID_1611158839" TREE_ID="ID_1895295787">
<node ID="ID_676837087" TREE_ID="ID_1330727022">
<node ID="ID_241334910" TREE_ID="ID_682438791"/>
</node>
</node>
<node ID="ID_251502495" TREE_ID="ID_1396069728">
<node ID="ID_1215934419" TREE_ID="ID_1351634586">
<node ID="ID_668851199" TREE_ID="ID_472916951">
<node ID="ID_874143312" TREE_ID="ID_1703874099"/>
</node>
</node>
</node>
<node ID="ID_1828182170" TREE_ID="ID_1560341717">
<node ID="ID_95127599" TREE_ID="ID_491142577">
<node ID="ID_1535315144" TREE_ID="ID_454652843">
<node ID="ID_1995825873" TREE_ID="ID_866993859"/>
</node>
</node>
</node>
</node>
<node TEXT="This AddOn is still beta" ID="ID_1438334135">
<node TEXT="So it may have a lot of bugs. Use it at your own risk. (**Freeplane** has an excelent &quot;*Undo*&quot; implementation, so the risk is in fact very limited)" ID="ID_1203589766"/>
<node TEXT="Please report any bug in this addOn in its GitHub page" ID="ID_1714416739"/>
</node>
<node TEXT="Your Help needed" ID="ID_175959378">
<node TEXT="I&apos;m not very good at writing in english, so if you find any error please tell me (and please explain me how to write it correctly)" ID="ID_317675316"/>
</node>
<node TEXT="About Freeplane" ID="ID_1151383315">
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_924468549"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="about Freeplane" ID="ID_517807401"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 is a free and open source software application that supports thinking, sharing information and getting things done at work, in school and at home. The software can be used for $2 and analyzing the information contained in mind maps. Freeplane runs on any operating system that has a current version of Java installed. It can be run locally or $3&nbsp;from removable storage like an USB drive.
    </p>
  </body>
</html></richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_735073256"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Freeplane" ID="ID_1884331663" LINK="https://www.freeplane.org/wiki/index.php/Home"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_172778365"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="mind mapping" ID="ID_749522998" LINK="https://secure.wikimedia.org/wikipedia/en/wiki/Mind_map"/>
</node>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_51429832"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="portably" ID="ID_785390742" LINK="https://en.wikipedia.org/wiki/Portable_application"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1907036147">
<attribute NAME="log_MDI" VALUE="No"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2021-05-15&nbsp;&nbsp;20:01:36
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
      24 folders didn't need to be moved&nbsp;
    </p>
    <p>
      1 folders were not found&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      1.2 seconds
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
<node TEXT="MarkdownHelper" ID="ID_1171391470" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/">
<node TEXT="zips" ID="ID_339348263" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/"/>
</node>
<node TEXT="resources" ID="ID_25923456" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/"/>
</node>
</node>
</node>
</map>
