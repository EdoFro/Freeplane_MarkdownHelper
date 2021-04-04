<map version="freeplane 1.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<node TEXT="Markdown Helper&#xa;Wiki" FOLDED="false" ID="ID_696401721">
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
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;-9 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
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
<node TEXT="Freeplane_MarkdownHelper.wiki" STYLE_REF="baseFolder" POSITION="right" ID="ID_391523987" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/">
<attribute_layout NAME_WIDTH="98.25 pt" VALUE_WIDTH="98.25 pt"/>
<attribute NAME="nameFilter" VALUE=""/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="MarkdownRootFolder" VALUE="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/"/>
<attribute NAME="MDHGithubBranch" VALUE="v0.1.0"/>
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
<node TEXT="_Sidebar.md" STYLE_REF="MarkdownHelperNode" ID="ID_1787661554" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/_Sidebar.md" VGAP_QUANTITY="2 px">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="45 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  </text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" FOLDED="true" ID="ID_713676921">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="### Pages in this wiki" ID="ID_584228544"/>
<node TEXT="structuredDocsList" ID="ID_255515949" BACKGROUND_COLOR="#ffcc99"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.structuredDocsList(node)
//prueba

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
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node) 
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" ID="ID_231250936" VGAP_QUANTITY="2 px">
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_751299620" LINK="#ID_1354023376" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
      This whole wiki was created using $1, the $2 , $3 and $4.
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
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Home.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_206044241" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Home.md">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  </text>
</richcontent>
<node TEXT="content" ID="ID_1746332684">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1703917514" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_280764281" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
</node>
<node TEXT="docsInside" ID="ID_374069221" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
</node>
<node TEXT="idea general" ID="ID_1726739045">
<node TEXT="objetivo" ID="ID_502625365">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_1579161034"/>
</node>
<node TEXT="cuando usarlo" ID="ID_316680597">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_499811841"/>
</node>
</node>
<node TEXT="Introducción" ID="ID_902663152">
<node TEXT="freeplane" ID="ID_853540928">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_164771012"/>
</node>
<node TEXT="addOns" ID="ID_716905562">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_1444924499"/>
</node>
<node TEXT="Markdown" ID="ID_1796521545">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_1160501759"/>
</node>
</node>
<node TEXT="screenshots" ID="ID_1045833977">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_1233647208"/>
</node>
<node TEXT="Markdown document.md" STYLE_REF="Tarea pendiente" ID="ID_1769986573">
<node TEXT="clon de párrafo introductorio" STYLE_REF="Tarea pendiente" ID="ID_1246297892"/>
<node TEXT="link a página" STYLE_REF="Tarea pendiente" ID="ID_672711070"/>
</node>
<node TEXT="previousAndNext" ID="ID_979642529" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Guide.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_607240369" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Guide.md">
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
<node TEXT="content" ID="ID_1946417255">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" ID="ID_1576015938">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_5419379" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1579003798" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="parrafo con info" STYLE_REF="Tarea pendiente" ID="ID_1418075736"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Bla blabla blabla blablabla blablabla blabla blablablabla blabla. Blabla bla blabla blablabla blabla bla blablabla bla. Blablabla blabla blabla. Bla blabla bla blabla blabla blablabla blabla blablablabla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Blablabla blabla blabla blabla blablabla bla. Blablabla blabla blabla. Blablablabla blabla blabla blablabla. Blabla blabla bla blablabla blabla blablabla bla bla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Blablabla blablablabla blabla bla. Blablabla blabla blablabla bla blablabla bla blablablabla. Blabla blabla blablablabla bla blablabla bla.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="tabla con comandos" STYLE_REF="Tarea pendiente" ID="ID_68322237">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_168233423"/>
</node>
<node TEXT="ejemplos" STYLE_REF="Tarea pendiente" ID="ID_486633314">
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_516202902"/>
</node>
<node TEXT="previousAndNext" ID="ID_384811746" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
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
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" ID="ID_45770369">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_1500072034" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)

//cambio masivo currentLocation</text>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1216282910" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
</node>
<node TEXT="docsInside" ID="ID_625211500" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
</node>
<node TEXT="## The Markdown Helper dialog" ID="ID_1851550358"/>
<node TEXT="intro" ID="ID_936151994"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="The dialog is composed by three different parts, each one has it special function." ID="ID_1815071739"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1063078082" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 

//
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_454366263" LINK="#ID_1930852978" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="r" ID="ID_274322150">
<node TEXT="Dialog part" ID="ID_446454825"/>
<node TEXT="Explanation" ID="ID_770134557"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_317918920">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_281775736" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
      The upmost part of the dialog contains the icons that you can apply to the nodes tha modifies how th Markdown Helper &quot;reads&quot; that node and includes it in the final document.
    </p>
    <p>
      
    </p>
    <p>
      More information about each icon in page $1.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="linkToWikipage" ID="ID_1879169968" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.linkToWikipage(node)
// prueba</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1651095985" LINK="#ID_1067554703" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_723512072">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_701192874" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
</html></richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_525957612" LINK="#ID_1724840148" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1554349882">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_848478161" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="explicación panel 3" ID="ID_1007098581"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="link to wikipage" ID="ID_1680877141" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1722294935" LINK="#ID_462044149" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_1538477903" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
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
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" STYLE_REF="Tarea finalizada" ID="ID_963770516" VGAP_QUANTITY="2 px">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="currentLocation" ID="ID_352880054" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1781571543" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
</node>
<node TEXT="docsInside" ID="ID_1826746643" BACKGROUND_COLOR="#a6cba6">
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
</html>
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1379163417">
<node TEXT="Icon" ID="ID_1113482371"/>
<node TEXT="affects" ID="ID_561990910">
<icon BUILTIN="emoji-2194"/>
</node>
<node TEXT="Explanation" ID="ID_510336078"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_763943521">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_564277630" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_884142952">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1321829539" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1868359018">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_236407308" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_69176246">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1719934872" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1438239317">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1808837262" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1384539097">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1510963070" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1680902322">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_489557426" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1727864872">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_773989455" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1327461167">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1824010068" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1549628890">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_564630518" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1242321259">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_233094257" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_552945385">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1558283613" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="r" STYLE_REF="locked" ID="ID_1690364489">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1741147808" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="previousAndNext" ID="ID_3335987" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
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
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" ID="ID_1179611047">
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
</html>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1305042686" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="table" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_997874648"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
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
<node TEXT="r" ID="ID_1063094109">
<node TEXT="Markdown document.md" ID="ID_759266907" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="This node collects the information in its descendant to build a markdown type note and a possible document file.&#xa;This is the most important MDH node type. All other MDH nodes are helpers to this one." ID="ID_1325423218"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_442236860"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.textBlock(node)
//xxx</text>
</richcontent>
<node TEXT="icons" ID="ID_1174081430"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_797993408" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_295410066" LINK="#ID_846704092" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_697679148" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_135900191" LINK="#ID_1647115959" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1528529582" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_967973918" LINK="#ID_413807381" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="headersToUnderline" ID="ID_1833430869"/>
<node TEXT="hideFolded" ID="ID_296884270"/>
<node TEXT="headerNumbering" ID="ID_234589768"/>
<node TEXT="topHeadersNumbered" ID="ID_619708588"/>
<node TEXT="topHeaderStartingNumber" ID="ID_507005086"/>
<node TEXT="fileLinksRelative" ID="ID_1738920683"/>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_622344932"/>
</node>
<node TEXT="r" ID="ID_1764132217">
<node TEXT="ToC" ID="ID_1556356543" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Creates an automatic Table of Contents of the document" ID="ID_205398220"/>
<node TEXT="TOCLevels&#xa;TOCindent" ID="ID_1187684070"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_599800806"/>
</node>
<node TEXT="r" ID="ID_1349141901">
<node TEXT="web link" ID="ID_1974617312" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates the web link from its child node into the markdown document" ID="ID_1791474806"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1898565091" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_532813961" LINK="#ID_1050715986" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_885466385"/>
</node>
<node TEXT="r" ID="ID_154941353">
<node TEXT="web Image" ID="ID_882341070" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates the web link from its child node and brings the image into the markdown document" ID="ID_1376338644"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1666759803" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_767762313" LINK="#ID_1050715986" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_52189622"/>
</node>
<node TEXT="r" ID="ID_1358778602">
<node TEXT="link to local file" ID="ID_1198515018" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates a link to a local file from its child node into the markdown document" ID="ID_1150239509"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1991011778" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1174287345" LINK="#ID_1050715986" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_792909519"/>
</node>
<node TEXT="r" ID="ID_1381900190">
<node TEXT="local image" ID="ID_883982996" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="Translates a link to a local file from its child node and brings the image into the markdown document" ID="ID_1995019202"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_926946850" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_879198346" LINK="#ID_1050715986" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_498789586"/>
</node>
<node TEXT="r" ID="ID_1526767699">
<node TEXT="list" ID="ID_1235587922" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown list structure" ID="ID_1968544542"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1081654896"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1438737403"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_535303631" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1990936581" LINK="#ID_1630580039" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_137813504" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_477281071" LINK="#ID_23311262" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_38423449"/>
</node>
<node TEXT="r" ID="ID_1643828511">
<node TEXT="plain task list" ID="ID_816627802" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown plain task list structure" ID="ID_321923834"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1222139769"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1245486958"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_504227921" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1287866365" LINK="#ID_1794146171" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_468025986" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_746080422" LINK="#ID_1831950189" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_679487757"/>
</node>
<node TEXT="r" ID="ID_208575392">
<node TEXT="nested task list" ID="ID_1981369009" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown nested task list structure" ID="ID_1562050628"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_175450695"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_1410712330"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1989660978" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_822567808" LINK="#ID_1794146171" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1654371042" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_417777069" LINK="#ID_1831950189" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_1862769887"/>
</node>
<node TEXT="r" ID="ID_1411154885">
<node TEXT="table" ID="ID_850120574" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It translates a mindmap branch structure into a markdown table structure" ID="ID_414157073"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1013348832"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="icons" ID="ID_808490222"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html></richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_470066516" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_737175300" LINK="#ID_215172306" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_544190909" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1314423097" LINK="#ID_920768424" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_1280355696"/>
</node>
<node TEXT="r" ID="ID_391977560">
<node TEXT="code block" ID="ID_462755844" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It takes a node with a script in its note and shows it as a markdown code block" ID="ID_1719308891"/>
<node TEXT="" ID="ID_1051034929"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_1132688976"/>
</node>
<node TEXT="r" ID="ID_435747602">
<node TEXT="text block" ID="ID_912653789" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It builds a text block combining text with images and links" ID="ID_1332466658"/>
<node TEXT="" ID="ID_1570718138"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_1109745887"/>
</node>
<node TEXT="r" ID="ID_1205431345">
<node TEXT="horizontal line" ID="ID_89131434" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="it just insert an horizontal line" ID="ID_1906393819"/>
<node TEXT="" ID="ID_595799117"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_394271866"/>
</node>
<node TEXT="r" ID="ID_64898422">
<node TEXT="comment" ID="ID_960651008" BACKGROUND_COLOR="#ffcc00"/>
<node TEXT="It presents all its childs as commented paragraphs" ID="ID_1011349463"/>
<node TEXT="" ID="ID_1208972233"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_832705676"/>
</node>
</node>
<node TEXT="previousAndNext" ID="ID_237158773" BACKGROUND_COLOR="#a6cba6">
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
</html>
</richcontent>
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
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="content" ID="ID_436753611">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="explicación panel 3" ID="ID_1852699276"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="Example" ID="ID_354305270"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_83670014">
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
<node TEXT="Example" STYLE_REF="Tarea pendiente" ID="ID_553092721"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_886823028">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1190915897" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="Example" STYLE_REF="Tarea pendiente" ID="ID_1389973486"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_652595087">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1925529429" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="Example" STYLE_REF="Tarea pendiente" ID="ID_1775008116"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1714191243">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1368549179" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="Example" STYLE_REF="Tarea pendiente" ID="ID_373756153"/>
</node>
<node TEXT="r" STYLE_REF="locked" ID="ID_1543035838">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_661017996" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
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
<node TEXT="Example" STYLE_REF="Tarea pendiente" ID="ID_1582805046"/>
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
</html>
</richcontent>
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
<node TEXT="content" STYLE_REF="Tarea finalizada" ID="ID_1426210796">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1779446740" LINK="#ID_932222153" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
<node TEXT="r" ID="ID_1295466164">
<node TEXT="2. The **MDH &apos;*web link*&apos; node** translates it.&#xa;Here we can see the result in the note of the node **in text format**" ID="ID_783354261"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_820904897" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1715277051" LINK="#ID_1654606312" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
<node TEXT="r" ID="ID_1625226533">
<node TEXT="3. This image shows the same as the one above it, but now we can see the result **markdown interpreted**" ID="ID_1804354311"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1317220462" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_951402128" LINK="#ID_1681402618" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Markdown in freeplane" FOLDED="true" ID="ID_781649445">
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
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_145807473" LINK="#ID_619341818" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
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
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_253032285" LINK="#ID_1723936029" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
<node TEXT="docsInside" ID="ID_636466863" BACKGROUND_COLOR="#ffcc99">
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
<node TEXT="Pages:" ID="ID_792615519"/>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Markdown-in-Freeplane.md" STYLE_REF="MarkdownHelperNode" ID="ID_619341818" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-in-Freeplane.md">
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
<node TEXT="content" STYLE_REF="Tarea Descartada" FOLDED="true" ID="ID_1749183462">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="What is Markdown?" ID="ID_1658738098">
<node TEXT="here comes an explanation about markdown" ID="ID_1586576889"/>
<node TEXT="Work in progress ...." ID="ID_84386400"/>
</node>
<node TEXT="Where can it be used in Freeplane?" ID="ID_1979536871">
<node TEXT="Work in progress ...." ID="ID_138875141"/>
</node>
<node TEXT="Some examples" ID="ID_541634829">
<node TEXT="Work in progress ...." ID="ID_1188871731"/>
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
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="about-Freeplane-formulas.md" STYLE_REF="MarkdownHelperNode" ID="ID_1013483585" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/about-Freeplane-formulas.md">
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
<node TEXT="content" STYLE_REF="Tarea Descartada" FOLDED="true" ID="ID_1595823225">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="Work in progress ..." STYLE_REF="Tarea pendiente" ID="ID_217539551"/>
<node TEXT="content" ID="ID_594196428">
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
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Markdown-document.md" STYLE_REF="MarkdownHelperNode" ID="ID_1723936029" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-document.md" VGAP_QUANTITY="2 px">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="Table of contents" FOLDED="true" ID="ID_400504717">
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
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_852108483" LINK="#ID_619341818" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1345047354" LINK="#ID_1013483585" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="The &quot;Makdown document.md&quot; node" FOLDED="true" ID="ID_1442176543" VGAP_QUANTITY="2 px">
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1277013852" LINK="#ID_1666300950" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_884754289" LINK="#ID_628251191" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_837288493" LINK="#ID_1688158345" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1466110276" LINK="#ID_846704092" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="This &apos;leaf&apos; icon indicates that the node must be treaten as a leaf node by the Markdown Document node. That means that its children won&apos;t be considered: they are invisible for the logic when building the markdown document.&#xa;This way you can add extra information in any branch that is useful to you but won&apos;t be shown in the document.&#xa;You can have a node that use a formula to get some result from its descendants and show only this result, but have the posibility to have the information you used to get this result right there and modify it if needed. The Freeplane mindmapping way." ID="ID_385119847"/>
</node>
<node TEXT="r" ID="ID_1436652439">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_348997861" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1482151354" LINK="#ID_1647115959" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="The &apos;no entry&apos; icon indicates that the node and all its desendants must be totally ignored by the Markdown Document node. They are invisible when building the markdown document.&#xa;This way you can add extra information that you don&apos;t need to be shown in the document." ID="ID_158995254"/>
</node>
<node TEXT="r" ID="ID_1052339338">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1545940884" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_320842663" LINK="#ID_413807381" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_506350473" LINK="#ID_1584384688" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Markdown-document-modifiers-examples.md" STYLE_REF="MarkdownHelperNode" ID="ID_784339167" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-document-modifiers-examples.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_383716513" LINK="#ID_741879942" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1674352548" LINK="#ID_999929514" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_616762731" LINK="#ID_1497405467" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_18435657" LINK="#ID_139387978" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
<node TEXT="hideFolded" ID="ID_385016754">
<node ID="ID_1001914055" TREE_ID="ID_1199112487"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_285450646" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1704688192" LINK="#ID_626702459" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_968519541" LINK="#ID_1869821183" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="Markdown Helper nodes" FOLDED="true" ID="ID_1774584085">
<node TEXT="Markdown document.md" ID="ID_1271671167">
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1974155536" LINK="#ID_1723936029" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_625629302" LINK="#ID_474132283" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="ToC-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1232286520" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/ToC-example.md">
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
<node TEXT="currentLocation" ID="ID_1088435490" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.currentLocation(node)
//prueba</text>
</richcontent>
</node>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="Example" ID="ID_1044042573">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_553988761" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1792566711" LINK="#ID_723123711" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
<node TEXT="previousAndNext" ID="ID_1607097252" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.WikiTools.previousAndNext(node)
// prueba</text>
</richcontent>
</node>
</node>
<node TEXT="Web-Link-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1684208820" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Web-Link-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="web link" ID="ID_993064222">
<node ID="ID_1654952654" TREE_ID="ID_1791474806"/>
<node TEXT="Example" ID="ID_1186335196">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1319061313" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1605736368" LINK="#ID_1630985854" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Web-Image-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_52705290" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Web-Image-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="web Image" ID="ID_589363603">
<node ID="ID_930359615" TREE_ID="ID_1376338644"/>
<node TEXT="Example" ID="ID_403213067">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1859042292" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1133771364" LINK="#ID_1511992597" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Link-To-Local-File-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_695451635" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Link-To-Local-File-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="link to local file" ID="ID_967186942">
<node ID="ID_1763905173" TREE_ID="ID_1150239509"/>
<node TEXT="Example" ID="ID_1933103337">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1863010842" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_461775913" LINK="#ID_277975381" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Local-Image-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_669426396" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Local-Image-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="local image" ID="ID_459126336">
<node ID="ID_891449310" TREE_ID="ID_1995019202"/>
<node TEXT="Example" ID="ID_621624181">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1044444914" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_892740839" LINK="#ID_93564966" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="List-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1407037290" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/List-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_40434924" LINK="#ID_1630580039" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1287053397" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_258596863" LINK="#ID_23311262" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_1895295787">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1330727022" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_682438791" LINK="#ID_1810589116" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
<node TEXT="Numbered list - example 1" ID="ID_105609115">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1913839279" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_250671405" LINK="#ID_874556509" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
<node TEXT="Numbered list - example 2" ID="ID_31613875">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_710979356" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_442571545" LINK="#ID_1881998686" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Plain-Task-List-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1493636815" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Plain-Task-List-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1868677313" LINK="#ID_1794146171" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1918971112" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_532029130" LINK="#ID_1831950189" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_278337443">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_697700837" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1026582327" LINK="#ID_1622565705" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Nested-Task-List-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1973326803" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Nested-Task-List-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_974890573" LINK="#ID_1991987286" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Table-example.md" STYLE_REF="MarkdownHelperNode" ID="ID_1815573524" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Table-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1661747788" LINK="#ID_215172306" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1276163101" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_588792360" LINK="#ID_920768424" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Example" ID="ID_1396069728">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1351634586" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_472916951" LINK="#ID_608624469" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Code-Block-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_304858143" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Code-Block-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1682057378" LINK="#ID_1403255199" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Text-Block-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_369712842" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Text-Block-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="text block" ID="ID_666019421">
<node ID="ID_947422584" TREE_ID="ID_1332466658"/>
<node TEXT="Example" ID="ID_21527120">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_101004085" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_739779023" LINK="#ID_773557304" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
<node TEXT="Comment-example.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_903601228" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Comment-example.md">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node TEXT="comment" ID="ID_1649775184">
<node ID="ID_1047032463" TREE_ID="ID_1011349463"/>
<node TEXT="Example" ID="ID_1449955968">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_891030534" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) &#xa;&#xa;// cambio masivo nodos &apos;to be linked to node with File&apos;" ID="ID_1357679536" LINK="#ID_1620682938" BACKGROUND_COLOR="#ccffcc">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Extras.md" STYLE_REF="MarkdownHelperNode" ID="ID_502227104" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Extras.md">
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
<node TEXT="content" STYLE_REF="Tarea pendiente" FOLDED="true" ID="ID_207765965">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="About.md" STYLE_REF="MarkdownHelperNode" ID="ID_468621347" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/About.md">
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
<node TEXT="Markdown dot.md" STYLE_REF="MarkdownHelperNode" ID="ID_432110795">
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node) x</text>
</richcontent>
<node TEXT="x" ID="ID_180653708"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1079685359">
<attribute NAME="log_MDI" VALUE="No"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2021-04-01&nbsp;&nbsp;21:42:18
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
      2 seconds
    </p>
    <p>
      
    </p>
    <p>
      =====================================
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="scripts apoyo" ID="ID_1658831433">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1485102649" BACKGROUND_COLOR="#0000cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/master/&apos;)</text>
</richcontent>
</node>
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_1017003729" BACKGROUND_COLOR="#0000cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.fileLink(node,&apos;../raw/master/&apos;) </text>
</richcontent>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1441566027" BACKGROUND_COLOR="#0099cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/v0.1.0/&apos;)</text>
</richcontent>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_604396937" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="agregar function en MDH" STYLE_REF="Siguiente tarea" ID="ID_1918456924">
<node TEXT="localFile(nodo, boolean,boolean)" ID="ID_1297747252"/>
<node TEXT="que busque la raíz en algun nodo pathToRoot" ID="ID_1417939225"/>
</node>
<node TEXT="node,&apos;../raw/&apos;,true)" ID="ID_1319480331"/>
</node>
<node TEXT="scripts" ID="ID_1363289282">
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
<node TEXT="bla" ID="ID_539291308"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
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
<node TEXT="guarda doc y selecciona siguiente" ID="ID_420232279"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="nodos2" ID="ID_138969719">
<node TEXT="= edofro.MarkDownHelper.WikiTools.linkedNodeText(node) //pprob" ID="ID_53296978" LINK="#ID_462044149" BACKGROUND_COLOR="#ffcc99">
<icon BUILTIN="emoji-1F343"/>
</node>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node TEXT="Freeplane_MarkdownHelper" STYLE_REF="baseFolder" POSITION="right" ID="ID_539998996" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/">
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
<node TEXT=".git" STYLE_REF="locked" ID="ID_844747112" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/.git/"/>
<node TEXT="MarkdownHelper" ID="ID_1507654983" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/">
<node TEXT="no relevante acá" STYLE_REF="Organizador" FOLDED="true" ID="ID_1780514987">
<node TEXT="locked" STYLE_REF="locked" FOLDED="true" ID="ID_719479184">
<node TEXT=".gradle" ID="ID_97801152" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/.gradle/"/>
<node TEXT="build" ID="ID_1632654840" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/build/"/>
<node TEXT="lib" ID="ID_163701953" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/lib/"/>
<node TEXT="src" ID="ID_140075956" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/src/"/>
</node>
<node TEXT="xx" FOLDED="true" ID="ID_1763961188">
<node TEXT=".gitignore" ID="ID_1842365769" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/.gitignore"/>
<node TEXT="MarkdownHelper-v0.1.0.addon.mm" ID="ID_315700758" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper-v0.1.0.addon.mm"/>
<node TEXT="MarkdownHelper.mm" ID="ID_141786730" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper.mm"/>
<node TEXT="MarkdownHelper.mm.bak" ID="ID_1785208798" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/MarkdownHelper.mm.bak"/>
<node TEXT="build.gradle" ID="ID_494987974" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/build.gradle"/>
<node TEXT="version.properties" ID="ID_1305958281" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/version.properties"/>
</node>
</node>
<node TEXT="images" ID="ID_1182099985" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/images/">
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
<node TEXT="zips" FOLDED="true" ID="ID_1699371995" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/">
<node TEXT="doc" ID="ID_1371431375" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/doc/">
<node TEXT="MarkdownHelper" ID="ID_807755283" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/doc/MarkdownHelper/"/>
</node>
<node TEXT="templates" ID="ID_507287786" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/">
<node TEXT="MarkdownHelper" ID="ID_1353506768" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/MarkdownHelper/">
<node TEXT="MarkdownHelper template.mm" ID="ID_421285328" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/MarkdownHelper/zips/templates/MarkdownHelper/MarkdownHelper%20template.mm"/>
</node>
</node>
</node>
</node>
<node TEXT="ignore" ID="ID_557684061" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/"/>
<node TEXT="resources" ID="ID_537134883" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/">
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
</node>
<node TEXT="Dialog" FOLDED="true" ID="ID_571522914" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/">
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
</node>
<node TEXT="MarkdownHelper_footer.png" ID="ID_1354023376" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/MarkdownHelper_footer.png"/>
</node>
<node TEXT="tests - examples" ID="ID_927204430" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/">
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
<node TEXT="wiki" ID="ID_198308461" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/wiki/">
<node TEXT="Markdown Helper Wiki.mm" ID="ID_1522672475" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/wiki/Markdown%20Helper%20Wiki.mm"/>
</node>
<node TEXT="delete" STYLE_REF="file_folder" ID="ID_1225805113" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/">
<node TEXT="dialogo MD con save.groovy" ID="ID_822713443" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/dialogo%20MD%20con%20save.groovy"/>
<node TEXT="markdown-cheat-sheet.md" ID="ID_1776801324" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/markdown-cheat-sheet.md"/>
<node TEXT="markdown-cheatsheet-online.pdf" ID="ID_1250795291" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/markdown-cheatsheet-online.pdf"/>
<node TEXT="testmap formula y markdown.mm" ID="ID_1324961310" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/delete/testmap%20formula%20y%20markdown.mm"/>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1907036147">
<attribute NAME="log_MDI" VALUE="No"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2021-04-03&nbsp;&nbsp;18:46:31
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
      &nbsp;3 new file(s) imported as node(s)&nbsp;
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
      16 folders didn't need to be moved&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      0.9 seconds
    </p>
    <p>
      
    </p>
    <p>
      =====================================
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node TEXT="tests - examples" ID="ID_1940776668" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/"/>
</node>
<node TEXT=".gitattributes" ID="ID_363259253" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/.gitattributes"/>
<node TEXT="README.md" ID="ID_1306888434" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/README.md"/>
</node>
</node>
</map>
