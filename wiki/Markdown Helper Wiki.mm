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
<node TEXT="Freeplane_MarkdownHelper.wiki" STYLE_REF="baseFolder" POSITION="right" ID="ID_391523987" CREATED="1616675039107" MODIFIED="1616881448418" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/">
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
</html></richcontent>
<node TEXT="_Footer.md" STYLE_REF="MarkdownHelperNode" ID="ID_1049274304" CREATED="1616677057080" MODIFIED="1617021467718" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/_Footer.md">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="50.25 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node) 
</text>
</richcontent>
<node TEXT="Logo" STYLE_REF="Tarea pendiente" ID="ID_89370806" CREATED="1616680331153" MODIFIED="1616881991354"/>
<node TEXT="párrafo con información relevante" ID="ID_1718430873" CREATED="1616680361921" MODIFIED="1616680395958"/>
<node TEXT="copyright edo" ID="ID_1675512296" CREATED="1616680395974" MODIFIED="1616680402099"/>
<node TEXT="freeplane" ID="ID_1220244996" CREATED="1616680403754" MODIFIED="1616680406591"/>
<node TEXT="Markdown" ID="ID_1926971978" CREATED="1616680414186" MODIFIED="1616680419700"/>
</node>
<node TEXT="_Sidebar.md" STYLE_REF="MarkdownHelperNode" ID="ID_1787661554" CREATED="1616677057080" MODIFIED="1617021475004" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/_Sidebar.md" VGAP_QUANTITY="2 px">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="45 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)  </text>
</richcontent>
<node TEXT="### Pages" STYLE_REF="Tarea pendiente" ID="ID_779719951" CREATED="1616626309016" MODIFIED="1616881986994"/>
<node TEXT="pages list" ID="ID_603328901" CREATED="1616620756952" MODIFIED="1616698495221" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def filterIcon = node.icons.first

def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = baseNode.children.findAll(isMDDoc)

if (filterIcon){
    docNodes = docNodes.findAll{it.icons.contains(filterIcon)}
}

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot;* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}

return texto.toString()</text>
</richcontent>
</node>
<node TEXT="### Principales" ID="ID_1811963222" CREATED="1616626314386" MODIFIED="1616881995138"/>
<node TEXT="pages list" ID="ID_165588606" CREATED="1616620756952" MODIFIED="1616698495242" BACKGROUND_COLOR="#a6cba6">
<icon BUILTIN="full-1"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def filterIcon = node.icons.first

def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = baseNode.children.findAll(isMDDoc)

if (filterIcon){
    docNodes = docNodes.findAll{it.icons.contains(filterIcon)}
}

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot;* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}

return texto.toString()</text>
</richcontent>
</node>
</node>
<node TEXT="Home.md" STYLE_REF="MarkdownHelperNode" ID="ID_206044241" CREATED="1616677057080" MODIFIED="1617021481316" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Home.md">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)  </text>
</richcontent>
<node TEXT="home" STYLE_REF="Tarea pendiente" ID="ID_584696541" CREATED="1616676627147" MODIFIED="1616881982030">
<node TEXT="Introducción" ID="ID_902663152" CREATED="1616676678033" MODIFIED="1616676687953">
<node TEXT="freeplane" ID="ID_853540928" CREATED="1616676689447" MODIFIED="1616676693386"/>
<node TEXT="addOns" ID="ID_716905562" CREATED="1616676694093" MODIFIED="1616676696930"/>
<node TEXT="Markdown" ID="ID_1796521545" CREATED="1616676698564" MODIFIED="1616676702169"/>
</node>
<node TEXT="idea general" ID="ID_1726739045" CREATED="1616676720855" MODIFIED="1616676726974">
<node TEXT="objetivo" ID="ID_502625365" CREATED="1616676726985" MODIFIED="1616676735156"/>
<node TEXT="cuando usarlo" ID="ID_316680597" CREATED="1616676735578" MODIFIED="1616676740263"/>
</node>
<node TEXT="screenshots" ID="ID_1045833977" CREATED="1616881758560" MODIFIED="1616881763412"/>
</node>
<node TEXT="Markdown document.md" STYLE_REF="Tarea pendiente" ID="ID_1769986573" CREATED="1616676912417" MODIFIED="1616881982044">
<node TEXT="idea general" ID="ID_1951852040" CREATED="1616676947340" MODIFIED="1616676952001"/>
<node TEXT="lógica de funcionamiento" ID="ID_450628626" CREATED="1616676961754" MODIFIED="1616676970400"/>
</node>
</node>
<node TEXT="Guide.md" STYLE_REF="MarkdownHelperNode" ID="ID_607240369" CREATED="1616677057080" MODIFIED="1617023036472" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Guide.md">
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="46.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="doc structure" ID="ID_1881735800" CREATED="1616620756952" MODIFIED="1616708814813" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.pathToRoot.findAll(isMDDoc).dropRight(1)

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot; / [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})&quot;

}
if(!texto){
    texto &lt;&lt; &apos; &apos;
}
return texto.toString()</text>
</richcontent>
</node>
<node TEXT="contains" ID="ID_1849694211" CREATED="1616620756952" MODIFIED="1616709268455" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def tab = &apos;  &apos;
def title =&apos;**Pages in this section**\n\n&apos;
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.parent.find(isMDDoc).drop(1)
def lP = node.parent.getNodeLevel(true)

def texto = new StringBuilder()
docNodes.each{
    def lN = it.getNodeLevel(true)
    texto &lt;&lt; &quot;${tab * (lN - lP - 1)}* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}
if(texto){
    texto &lt;&lt; &apos;\n-----&apos;
    texto = title + texto
} else {
    texto &lt;&lt; &apos;-----&apos;
}
return texto.toString()
</text>
</richcontent>
</node>
<node TEXT="parrafo con info" ID="ID_1365145687" CREATED="1616698515067" MODIFIED="1617021549262"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html>
</richcontent>
</node>
<node TEXT="Markdown-Helper-menu.md" STYLE_REF="MarkdownHelperNode" ID="ID_1118785541" CREATED="1616677057080" MODIFIED="1617021510692" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-Helper-menu.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="doc structure" ID="ID_1733279167" CREATED="1616620756952" MODIFIED="1616708814813" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.pathToRoot.findAll(isMDDoc).dropRight(1)

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot; / [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})&quot;

}
if(!texto){
    texto &lt;&lt; &apos; &apos;
}
return texto.toString()</text>
</richcontent>
</node>
<node TEXT="contains" ID="ID_1548947069" CREATED="1616620756952" MODIFIED="1616709325158" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def tab = &apos;  &apos;
def title =&apos;**Pages in this section**\n\n&apos;
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.parent.find(isMDDoc).drop(1)
def lP = node.parent.getNodeLevel(true)

def texto = new StringBuilder()
docNodes.each{
    def lN = it.getNodeLevel(true)
    texto &lt;&lt; &quot;${tab * (lN - lP - 1)}* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}
if(texto){
    texto &lt;&lt; &apos;\n-----&apos;
    texto = title + texto
} else {
    texto &lt;&lt; &apos;-----&apos;
}
return texto.toString()
</text>
</richcontent>
</node>
<node TEXT="parrafo con info" STYLE_REF="Tarea pendiente" ID="ID_1418075736" CREATED="1616698515067" MODIFIED="1616881977870"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</node>
<node TEXT="Markdown-Helper-Dialog.md" STYLE_REF="MarkdownHelperNode" ID="ID_1361749976" CREATED="1616677057080" MODIFIED="1617021503504" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Markdown-Helper-Dialog.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="false"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="doc structure" ID="ID_804928838" CREATED="1616620756952" MODIFIED="1616708814813" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.pathToRoot.findAll(isMDDoc).dropRight(1)

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot; / [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})&quot;

}
if(!texto){
    texto &lt;&lt; &apos; &apos;
}
return texto.toString()</text>
</richcontent>
</node>
<node TEXT="contains" ID="ID_1216381103" CREATED="1616620756952" MODIFIED="1616709314602" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def tab = &apos;  &apos;
def title =&apos;**Pages in this section**\n\n&apos;
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.parent.find(isMDDoc).drop(1)
def lP = node.parent.getNodeLevel(true)

def texto = new StringBuilder()
docNodes.each{
    def lN = it.getNodeLevel(true)
    texto &lt;&lt; &quot;${tab * (lN - lP - 1)}* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}
if(texto){
    texto &lt;&lt; &apos;\n-----&apos;
    texto = title + texto
} else {
    texto &lt;&lt; &apos;-----&apos;
}
return texto.toString()
</text>
</richcontent>
</node>
<node TEXT="Icons-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_1067554703" CREATED="1616677057080" MODIFIED="1617021537201" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Icons-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="doc structure" ID="ID_1849556237" CREATED="1616620756952" MODIFIED="1616708814813" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.pathToRoot.findAll(isMDDoc).dropRight(1)

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot; / [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})&quot;

}
if(!texto){
    texto &lt;&lt; &apos; &apos;
}
return texto.toString()</text>
</richcontent>
</node>
<node TEXT="contains" ID="ID_72340344" CREATED="1616620756952" MODIFIED="1616709319309" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def tab = &apos;  &apos;
def title =&apos;**Pages in this section**\n\n&apos;
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.parent.find(isMDDoc).drop(1)
def lP = node.parent.getNodeLevel(true)

def texto = new StringBuilder()
docNodes.each{
    def lN = it.getNodeLevel(true)
    texto &lt;&lt; &quot;${tab * (lN - lP - 1)}* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}
if(texto){
    texto &lt;&lt; &apos;\n-----&apos;
    texto = title + texto
} else {
    texto &lt;&lt; &apos;-----&apos;
}
return texto.toString()
</text>
</richcontent>
</node>
<node TEXT="parrafo con info" STYLE_REF="Tarea pendiente" ID="ID_212760196" CREATED="1616698515067" MODIFIED="1617021846227"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Blabla blablabla blablablabla blablabla blablabla. Blabla blabla blabla bla bla blablabla. Blablabla blablabla bla bla. Blablablabla blablabla bla blabla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Bla blabla blablabla bla blablabla blablabla.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_157293715" CREATED="1616876840354" MODIFIED="1616879835216"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.table(node) </text>
</richcontent>
<node TEXT="r" ID="ID_1379163417" CREATED="1616720236907" MODIFIED="1616720238691">
<node TEXT="Icon" ID="ID_1113482371" CREATED="1616720240361" MODIFIED="1616876874074"/>
<node TEXT="affects" ID="ID_561990910" CREATED="1616876875529" MODIFIED="1616876901691"/>
<node TEXT="Explanation" ID="ID_510336078" CREATED="1616720242823" MODIFIED="1616720307953"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_763943521" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_564277630" CREATED="1616628376338" MODIFIED="1616879618304" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 001.png" ID="ID_764465307" CREATED="1616687625834" MODIFIED="1616687654591" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20001.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="Deletes the first icon in the selected node" ID="ID_634705398" CREATED="1616879889624" MODIFIED="1616879911984"/>
</node>
<node TEXT="r" FOLDED="true" ID="ID_884142952" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1321829539" CREATED="1616628376338" MODIFIED="1616879627785" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 002.png" ID="ID_1055771673" CREATED="1616687625840" MODIFIED="1616687654636" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20002.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="Deletes the last icon in the selected node" ID="ID_1395965933" CREATED="1616879889624" MODIFIED="1616879931625"/>
</node>
<node TEXT="r" ID="ID_1868359018" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_236407308" CREATED="1616628376338" MODIFIED="1616879632729" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 003.png" ID="ID_1361113556" CREATED="1616687625847" MODIFIED="1616687654666" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20003.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="Deletes all icons in the selected node" ID="ID_19474923" CREATED="1616879889624" MODIFIED="1616879951473"/>
</node>
<node TEXT="r" ID="ID_69176246" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1719934872" CREATED="1616628376338" MODIFIED="1616879638526" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 004.png" ID="ID_846704092" CREATED="1616687625854" MODIFIED="1616687654695" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20004.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" ID="ID_1438239317" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1808837262" CREATED="1616628376338" MODIFIED="1616879643868" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//
</text>
</richcontent>
<node TEXT="FP Icon 005.png" ID="ID_1647115959" CREATED="1616687625862" MODIFIED="1616687654721" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20005.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" ID="ID_1384539097" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1510963070" CREATED="1616628376338" MODIFIED="1616879660231" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//

</text>
</richcontent>
<node TEXT="FP Icon 006.png" ID="ID_413807381" CREATED="1616687625867" MODIFIED="1616687654746" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20006.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" FOLDED="true" ID="ID_1680902322" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_489557426" CREATED="1616628376338" MODIFIED="1616879668169" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 007.png" ID="ID_1630580039" CREATED="1616687625873" MODIFIED="1616687654768" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20007.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" FOLDED="true" ID="ID_1727864872" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_773989455" CREATED="1616628376338" MODIFIED="1616879673516" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 008.png" ID="ID_23311262" CREATED="1616687625879" MODIFIED="1616687654789" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20008.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" FOLDED="true" ID="ID_1327461167" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1824010068" CREATED="1616628376338" MODIFIED="1616879677105" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 009.png" ID="ID_215172306" CREATED="1616687625885" MODIFIED="1616687654810" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20009.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" FOLDED="true" ID="ID_1549628890" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_564630518" CREATED="1616628376338" MODIFIED="1616878167085" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 



</text>
</richcontent>
<node TEXT="FP Icon 010.png" ID="ID_920768424" CREATED="1616687625892" MODIFIED="1616687654827" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20010.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" FOLDED="true" ID="ID_1242321259" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_233094257" CREATED="1616628376338" MODIFIED="1616879684505" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 011.png" ID="ID_1050715986" CREATED="1616687625897" MODIFIED="1616687654842" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20011.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" FOLDED="true" ID="ID_552945385" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1558283613" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 012.png" ID="ID_1794146171" CREATED="1616687625904" MODIFIED="1616687654854" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20012.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="r" FOLDED="true" ID="ID_1690364489" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1741147808" CREATED="1616628376338" MODIFIED="1616879691945" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 013.png" ID="ID_1831950189" CREATED="1616687625909" MODIFIED="1616687654865" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20013.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
</node>
<node TEXT="MDH-Nodes-panel.md" STYLE_REF="MarkdownHelperNode" ID="ID_1724840148" CREATED="1616677057080" MODIFIED="1617022763487" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/MDH-Nodes-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="doc structure" ID="ID_1794671548" CREATED="1616620756952" MODIFIED="1616708814813" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.pathToRoot.findAll(isMDDoc).dropRight(1)

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot; / [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})&quot;

}
if(!texto){
    texto &lt;&lt; &apos; &apos;
}
return texto.toString()</text>
</richcontent>
</node>
<node TEXT="contains" ID="ID_1008893573" CREATED="1616620756952" MODIFIED="1616709330408" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def tab = &apos;  &apos;
def title =&apos;**Pages in this section**\n\n&apos;
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.parent.find(isMDDoc).drop(1)
def lP = node.parent.getNodeLevel(true)

def texto = new StringBuilder()
docNodes.each{
    def lN = it.getNodeLevel(true)
    texto &lt;&lt; &quot;${tab * (lN - lP - 1)}* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}
if(texto){
    texto &lt;&lt; &apos;\n-----&apos;
    texto = title + texto
} else {
    texto &lt;&lt; &apos;-----&apos;
}
return texto.toString()
</text>
</richcontent>
</node>
<node TEXT="## MDH special nodes" ID="ID_1593683131" CREATED="1617035655829" MODIFIED="1617035667564"/>
<node TEXT="explicación panel 2" ID="ID_808164187" CREATED="1616714905387" MODIFIED="1617035634791"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html>
</richcontent>
</node>
<node TEXT="In this table you can see the list with all the nodes and their descriptions:" ID="ID_1291659985" CREATED="1617035701884" MODIFIED="1617035743085"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_997874648" CREATED="1617021612432" MODIFIED="1617021612448"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="r" ID="ID_33419335" CREATED="1617021623701" MODIFIED="1617021626716">
<node TEXT="button" ID="ID_363351604" CREATED="1617021626732" MODIFIED="1617021631698"/>
<node TEXT="description" ID="ID_1159043817" CREATED="1617021921058" MODIFIED="1617021926136"/>
<node TEXT="modifiers" ID="ID_1378144628" CREATED="1617021857405" MODIFIED="1617023096843">
<icon BUILTIN="emoji-2194"/>
</node>
<node TEXT="example" ID="ID_382580454" CREATED="1617021901778" MODIFIED="1617021913611"/>
</node>
<node TEXT="r" ID="ID_1063094109" CREATED="1617021647710" MODIFIED="1617021649897">
<node TEXT="Markdown document.md" ID="ID_759266907" CREATED="1617021652816" MODIFIED="1617035472003"/>
<node TEXT="This node collects the information in its descendant to build a markdown type note and a possible document file.&#xa;This is the most important MDH node type. All other MDH nodes are helpers to this one." ID="ID_1325423218" CREATED="1617035481053" MODIFIED="1617035936351"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_442236860" CREATED="1617022064874" MODIFIED="1617040645363"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
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
</html>
</richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_797993408" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_295410066" CREATED="1616873748042" MODIFIED="1617036033123" LINK="#ID_846704092" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_697679148" CREATED="1616628376338" MODIFIED="1616879691945" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_135900191" CREATED="1616873748042" MODIFIED="1617036041279" LINK="#ID_1647115959" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1528529582" CREATED="1616628376338" MODIFIED="1616879691945" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_967973918" CREATED="1616873748042" MODIFIED="1617036076379" LINK="#ID_413807381" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="headersToUnderline" ID="ID_1833430869" CREATED="1617037013305" MODIFIED="1617037144969"/>
<node TEXT="hideFolded" ID="ID_296884270" CREATED="1617037013305" MODIFIED="1617037150836"/>
<node TEXT="headerNumbering" ID="ID_234589768" CREATED="1617037013321" MODIFIED="1617037156527"/>
<node TEXT="topHeadersNumbered" ID="ID_619708588" CREATED="1617037013321" MODIFIED="1617037161448"/>
<node TEXT="topHeaderStartingNumber" ID="ID_507005086" CREATED="1617037013321" MODIFIED="1617037166013"/>
<node TEXT="fileLinksRelative" ID="ID_1738920683" CREATED="1617037013336" MODIFIED="1617037178921"/>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_622344932" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_1764132217" CREATED="1617021667785" MODIFIED="1617021669613">
<node TEXT="ToC" ID="ID_1556356543" CREATED="1617021669628" MODIFIED="1617021674050"/>
<node TEXT="Creates an automatic Table of Contents of the document" ID="ID_205398220" CREATED="1617036228210" MODIFIED="1617036255209"/>
<node TEXT="TOCLevels" ID="ID_1187684070" CREATED="1617022869452" MODIFIED="1617036962421"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_599800806" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_1349141901" CREATED="1617021676052" MODIFIED="1617021678086">
<node TEXT="web link" ID="ID_1974617312" CREATED="1617021678101" MODIFIED="1617021690202"/>
<node TEXT="Translates the web link from its child node into the markdown document" ID="ID_1791474806" CREATED="1617036276870" MODIFIED="1617036439367"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1898565091" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_532813961" CREATED="1616873748042" MODIFIED="1617022370117" LINK="#ID_1050715986" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_885466385" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_154941353" CREATED="1617021706118" MODIFIED="1617021706962">
<node TEXT="web Image" ID="ID_882341070" CREATED="1617021692476" MODIFIED="1617021703035"/>
<node TEXT="Translates the web link from its child node and brings the image into the markdown document" ID="ID_1376338644" CREATED="1617036276870" MODIFIED="1617036448068"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1666759803" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_767762313" CREATED="1616873748042" MODIFIED="1617022370117" LINK="#ID_1050715986" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_52189622" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_1358778602" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="link to local file" ID="ID_1198515018" CREATED="1617021732791" MODIFIED="1617021738228"/>
<node TEXT="Translates a link to a local file from its child node into the markdown document" ID="ID_1150239509" CREATED="1617036276870" MODIFIED="1617036507025"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1991011778" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_1174287345" CREATED="1616873748042" MODIFIED="1617022370117" LINK="#ID_1050715986" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_792909519" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_1381900190" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="local image" ID="ID_883982996" CREATED="1617021742253" MODIFIED="1617021746566"/>
<node TEXT="Translates a link to a local file from its child node and brings the image into the markdown document" ID="ID_1995019202" CREATED="1617036276870" MODIFIED="1617036541862"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_926946850" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_879198346" CREATED="1616873748042" MODIFIED="1617022370117" LINK="#ID_1050715986" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_498789586" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_1526767699" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="list" ID="ID_1235587922" CREATED="1617021747923" MODIFIED="1617021751723"/>
<node TEXT="It translates a mindmap branch structure into a markdown list structure" ID="ID_1968544542" CREATED="1617036550137" MODIFIED="1617036588187"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1081654896" CREATED="1617022064874" MODIFIED="1617022064889"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html>
</richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_535303631" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_1990936581" CREATED="1616873748042" MODIFIED="1617022503259" LINK="#ID_1630580039" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_137813504" CREATED="1616628376338" MODIFIED="1616879691945" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_477281071" CREATED="1616873748042" MODIFIED="1617022510009" LINK="#ID_23311262" BACKGROUND_COLOR="#ccffcc"/>
</node>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_38423449" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_1643828511" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="plain task list" ID="ID_816627802" CREATED="1617021763735" MODIFIED="1617021768579"/>
<node TEXT="It translates a mindmap branch structure into a markdown plain task list structure" ID="ID_321923834" CREATED="1617036550137" MODIFIED="1617036624198"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1222139769" CREATED="1617022064874" MODIFIED="1617022064889"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="icons" ID="ID_1245486958" CREATED="1617022071518" MODIFIED="1617036123628"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      $1 $2
    </p>
  </body>
</html>
</richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_504227921" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_1287866365" CREATED="1616873748042" MODIFIED="1617022327417" LINK="#ID_1794146171" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_468025986" CREATED="1616628376338" MODIFIED="1616879691945" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_746080422" CREATED="1616873748042" MODIFIED="1617022321196" LINK="#ID_1831950189" BACKGROUND_COLOR="#ccffcc"/>
</node>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_679487757" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_208575392" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="nested task list" ID="ID_1981369009" CREATED="1617021773702" MODIFIED="1617021783079"/>
<node TEXT="It translates a mindmap branch structure into a markdown nested task list structure" ID="ID_1562050628" CREATED="1617036550137" MODIFIED="1617036650815"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_175450695" CREATED="1617022064874" MODIFIED="1617022064889"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html>
</richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1989660978" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_822567808" CREATED="1616873748042" MODIFIED="1617022327417" LINK="#ID_1794146171" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1654371042" CREATED="1616628376338" MODIFIED="1616879691945" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_417777069" CREATED="1616873748042" MODIFIED="1617022321196" LINK="#ID_1831950189" BACKGROUND_COLOR="#ccffcc"/>
</node>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_1862769887" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_1411154885" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="table" ID="ID_850120574" CREATED="1617021785969" MODIFIED="1617021793797"/>
<node TEXT="It translates a mindmap branch structure into a markdown table structure" ID="ID_414157073" CREATED="1617036550137" MODIFIED="1617036707000"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1013348832" CREATED="1617022064874" MODIFIED="1617022064889"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html>
</richcontent>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_470066516" CREATED="1616628376338" MODIFIED="1616879688571" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_737175300" CREATED="1616873748042" MODIFIED="1617022424355" LINK="#ID_215172306" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_544190909" CREATED="1616628376338" MODIFIED="1616879691945" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_1314423097" CREATED="1616873748042" MODIFIED="1617022435221" LINK="#ID_920768424" BACKGROUND_COLOR="#ccffcc"/>
</node>
</node>
</node>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_1280355696" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_391977560" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="code block" ID="ID_462755844" CREATED="1617021797007" MODIFIED="1617021802730"/>
<node TEXT="It takes a node with a script in its note and shows it as a markdown code block" ID="ID_1719308891" CREATED="1617036725228" MODIFIED="1617036762646"/>
<node TEXT="" ID="ID_1051034929" CREATED="1617022688816" MODIFIED="1617022699411"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_1132688976" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_435747602" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="text block" ID="ID_912653789" CREATED="1617021807464" MODIFIED="1617021813590"/>
<node TEXT="It builds a text block combining text with images and links" ID="ID_1332466658" CREATED="1617036767349" MODIFIED="1617036837931"/>
<node TEXT="" ID="ID_1570718138" CREATED="1617022688816" MODIFIED="1617022699411"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_1109745887" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_1205431345" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="horizontal line" ID="ID_89131434" CREATED="1617021817808" MODIFIED="1617021825860"/>
<node TEXT="it just insert an horizental line" ID="ID_1906393819" CREATED="1617036843571" MODIFIED="1617036856945"/>
<node TEXT="" ID="ID_595799117" CREATED="1617022688816" MODIFIED="1617022699411"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_394271866" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
<node TEXT="r" ID="ID_64898422" CREATED="1617021718268" MODIFIED="1617021718877">
<node TEXT="comment" ID="ID_960651008" CREATED="1617021829704" MODIFIED="1617021837395"/>
<node TEXT="It presentes all its childs as commented paragraphs" ID="ID_1011349463" CREATED="1617036869315" MODIFIED="1617036909884"/>
<node TEXT="" ID="ID_1208972233" CREATED="1617022688816" MODIFIED="1617022699411"/>
<node TEXT="example" STYLE_REF="Tarea pendiente" ID="ID_832705676" CREATED="1617021901778" MODIFIED="1617022653810"/>
</node>
</node>
</node>
<node TEXT="Extras-panel.md" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_462044149" CREATED="1616677057080" MODIFIED="1617021521802" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper.wiki/Extras-panel.md">
<icon BUILTIN="emoji-26D4"/>
<attribute_layout NAME_WIDTH="124.5 pt" VALUE_WIDTH="49.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= edofro.MarkDownHelper.MDH.document(node)  
</text>
</richcontent>
<node TEXT="doc structure" ID="ID_1403103951" CREATED="1616620756952" MODIFIED="1616708814813" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.pathToRoot.findAll(isMDDoc).dropRight(1)

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot; / [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})&quot;

}
if(!texto){
    texto &lt;&lt; &apos; &apos;
}
return texto.toString()</text>
</richcontent>
</node>
<node TEXT="contains" ID="ID_1258572589" CREATED="1616620756952" MODIFIED="1616709336155" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def tab = &apos;  &apos;
def title =&apos;**Pages in this section**\n\n&apos;
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.parent.find(isMDDoc).drop(1)
def lP = node.parent.getNodeLevel(true)

def texto = new StringBuilder()
docNodes.each{
    def lN = it.getNodeLevel(true)
    texto &lt;&lt; &quot;${tab * (lN - lP - 1)}* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}
if(texto){
    texto &lt;&lt; &apos;\n-----&apos;
    texto = title + texto
} else {
    texto &lt;&lt; &apos;-----&apos;
}
return texto.toString()
</text>
</richcontent>
</node>
<node TEXT="parrafo con info" STYLE_REF="Tarea pendiente" ID="ID_890919251" CREATED="1616698515067" MODIFIED="1616881389943"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Blablabla blablabla blablabla bla bla. Blabla blablabla blablabla blabla blablabla. Blabla bla. Blabla blabla blabla bla blabla blablabla bla blablabla. Blablabla blablablabla blabla bla blabla blabla bla.&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      Bla blabla blabla. Blabla blablabla blabla blabla blabla blablabla. Blablabla bla blabla blabla blablabla blablabla blablablabla blabla bla bla. Blabla blablabla bla bla.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="r" ID="ID_83670014" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_429477830" CREATED="1616628376338" MODIFIED="1616879696806" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 015.png" ID="ID_1106593427" CREATED="1616696879069" MODIFIED="1616696901826" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20015.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
</node>
<node TEXT="r" ID="ID_652595087" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1925529429" CREATED="1616628376338" MODIFIED="1616879705931" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 016.png" ID="ID_1972414744" CREATED="1616696879075" MODIFIED="1616696901850" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20016.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
</node>
<node TEXT="r" ID="ID_1714191243" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1368549179" CREATED="1616628376338" MODIFIED="1616879709632" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 017.png" ID="ID_178050385" CREATED="1616696879080" MODIFIED="1616696901866" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20017.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
</node>
<node TEXT="r" ID="ID_886823028" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1190915897" CREATED="1616628376338" MODIFIED="1616879712732" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 018.png" ID="ID_937000663" CREATED="1616696879086" MODIFIED="1616696901880" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20018.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
</node>
<node TEXT="r" ID="ID_1543035838" CREATED="1616876908590" MODIFIED="1616876912297">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_661017996" CREATED="1616628376338" MODIFIED="1616879716258" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
//</text>
</richcontent>
<node TEXT="FP Icon 019.png" ID="ID_1378301212" CREATED="1616696879098" MODIFIED="1616696901892" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/FP%20Icon%20019.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
</node>
</node>
<node TEXT="## The Markdown Helper dialog" ID="ID_1851550358" CREATED="1616875323713" MODIFIED="1616875368489"/>
<node TEXT="intro" ID="ID_936151994" CREATED="1616875369265" MODIFIED="1617035577124"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The dialog is the central part of this Add On. It has most of the features that can help you crate a map that dinamically creates and updates a markdown document.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="The dialog is composed by three different parts, each one has it special function." ID="ID_1815071739" CREATED="1616876443529" MODIFIED="1616876584348"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1063078082" CREATED="1616628376338" MODIFIED="1616881362204" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 

//
</text>
</richcontent>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_454366263" CREATED="1616873748042" MODIFIED="1616875696805" LINK="#ID_1930852978" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_636205443" CREATED="1616713010957" MODIFIED="1616713010982"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="r" ID="ID_317918920" CREATED="1616713016872" MODIFIED="1616713020469">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_281775736" CREATED="1616628376338" MODIFIED="1616872362906" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 001.png" ID="ID_1305975695" CREATED="1616698136725" MODIFIED="1616698287444" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20001.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1848046915" CREATED="1616714936210" MODIFIED="1616714936237"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 1" ID="ID_1040296506" CREATED="1616714905387" MODIFIED="1616720163135"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
</html></richcontent>
<node TEXT="link to wikipage" ID="ID_802458649" CREATED="1616719774829" MODIFIED="1616873737746" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
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
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_1274285894" CREATED="1616873748042" MODIFIED="1616875241754" LINK="#ID_1067554703" BACKGROUND_COLOR="#ccffcc"/>
</node>
</node>
</node>
</node>
<node TEXT="r" ID="ID_723512072" CREATED="1616713016872" MODIFIED="1616713020469">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_701192874" CREATED="1616628376338" MODIFIED="1616872362906" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 002.png" ID="ID_1004620486" CREATED="1616698136732" MODIFIED="1616698287447" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20002.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_847197" CREATED="1616874373352" MODIFIED="1616874373386"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="explicación panel 2" ID="ID_486435346" CREATED="1616714905387" MODIFIED="1617035591879"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_525957612" CREATED="1616873748042" MODIFIED="1616875250381" LINK="#ID_1724840148" BACKGROUND_COLOR="#ccffcc"/>
</node>
</node>
</node>
</node>
<node TEXT="r" ID="ID_1554349882" CREATED="1616713016872" MODIFIED="1616713020469">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_848478161" CREATED="1616628376338" MODIFIED="1616872362906" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
<node TEXT="Dialog panel 003.png" ID="ID_1064538750" CREATED="1616698136739" MODIFIED="1616698287450" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/Dialog/Dialog%20panel%20003.png"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_465790358" CREATED="1616874380956" MODIFIED="1616874380968"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_1722294935" CREATED="1616873748042" MODIFIED="1616874198247" LINK="#ID_462044149" BACKGROUND_COLOR="#ccffcc"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Tutorial-Examples.md" STYLE_REF="Tarea pendiente" ID="ID_1946404499" CREATED="1616881458858" MODIFIED="1616881475770">
<node TEXT="Markdown" STYLE_REF="Tarea pendiente" ID="ID_1577355607" CREATED="1616881690340" MODIFIED="1616881695287"/>
<node TEXT="Markdown-document.md" STYLE_REF="Tarea pendiente" ID="ID_1061040512" CREATED="1616881540743" MODIFIED="1616881566872"/>
<node TEXT="MDH-nodes.md" STYLE_REF="Tarea pendiente" ID="ID_1700482111" CREATED="1616881584647" MODIFIED="1616881599808"/>
<node TEXT="Extras" STYLE_REF="Tarea pendiente" ID="ID_1337901584" CREATED="1616881602168" MODIFIED="1616881607705"/>
</node>
<node TEXT="donación.md" STYLE_REF="Tarea pendiente" ID="ID_849014079" CREATED="1616676661555" MODIFIED="1616881843759"/>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1079685359" CREATED="1616675051000" MODIFIED="1616875845710">
<attribute NAME="log_MDI" VALUE="No"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2021-03-25&nbsp;&nbsp;19:05:32
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
      &nbsp;6 node(s) moved/renamed in drive
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
      0.2 seconds
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
<node TEXT="scripts apoyo" ID="ID_1658831433" CREATED="1616702801988" MODIFIED="1616702807250">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1485102649" CREATED="1616628376338" MODIFIED="1616680101561" BACKGROUND_COLOR="#0000cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/master/&apos;)</text>
</richcontent>
</node>
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_1017003729" CREATED="1616678955930" MODIFIED="1616680101550" BACKGROUND_COLOR="#0000cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.fileLink(node,&apos;../raw/master/&apos;) </text>
</richcontent>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1441566027" CREATED="1616628376338" MODIFIED="1616721289395" BACKGROUND_COLOR="#0099cc"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/v0.1.0/&apos;)</text>
</richcontent>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_604396937" CREATED="1616628376338" MODIFIED="1616872642234" BACKGROUND_COLOR="#006666"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
    <text>= edofro.MarkDownHelper.MDH.imageLink(node,&apos;../raw/&apos;,true) 
</text>
</richcontent>
</node>
<node TEXT="tomar texto de nodo linkeado" ID="ID_1446645901" CREATED="1616873313551" MODIFIED="1616873573322"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="generador de blabla" ID="ID_1226377477" CREATED="1616702809016" MODIFIED="1616720461019"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
      node.note = blabla()
    </p>
    <p>
      &nbsp;
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
      &nbsp;&nbsp;&nbsp;&nbsp;def rnd = new Random()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;for(def i = 1; i&lt;=r(nP); i++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(def j = 1; j&lt;=r(nO); j++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; 'Bla'
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(def l = 2; l&lt;=r(nS); l++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(def k = 1; k&lt;=r(nW); k++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; ' '
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(def l = 1; l&lt;=r(nS); l++){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; b&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;texto &lt;&lt; '. '
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
</node>
<node TEXT="doc structure" ID="ID_1692952146" CREATED="1616620756952" MODIFIED="1616708814813" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.pathToRoot.findAll(isMDDoc).dropRight(1)

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot; / [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})&quot;

}
if(!texto){
    texto &lt;&lt; &apos; &apos;
}
return texto.toString()</text>
</richcontent>
</node>
<node TEXT="contains" ID="ID_141210176" CREATED="1616620756952" MODIFIED="1616709268455" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def tab = &apos;  &apos;
def title =&apos;**Pages in this section**\n\n&apos;
def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = node.parent.find(isMDDoc).drop(1)
def lP = node.parent.getNodeLevel(true)

def texto = new StringBuilder()
docNodes.each{
    def lN = it.getNodeLevel(true)
    texto &lt;&lt; &quot;${tab * (lN - lP - 1)}* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}
if(texto){
    texto &lt;&lt; &apos;\n-----&apos;
    texto = title + texto
} else {
    texto &lt;&lt; &apos;-----&apos;
}
return texto.toString()
</text>
</richcontent>
</node>
<node TEXT="pages list" ID="ID_975049577" CREATED="1616620756952" MODIFIED="1616698495221" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>=
def filterIcon = node.icons.first

def baseNode = edofro.MarkDownHelper.MDI_redux.obtainBaseFolder(node)
def baseUri = baseNode.link.uri.toString()

def isMDDoc = {it.link &amp;&amp; it.link.file &amp;&amp; it.link?.uri?.toString()?.toLowerCase()?.endsWith(&apos;.md&apos;) &amp;&amp; !it.text.startsWith(&apos;_&apos;) }
def docNodes = baseNode.children.findAll(isMDDoc)

if (filterIcon){
    docNodes = docNodes.findAll{it.icons.contains(filterIcon)}
}

def texto = new StringBuilder()
docNodes.each{
    texto &lt;&lt; &quot;* [${it.text.takeBefore(&apos;.md&apos;)}](${(it.link.uri.toString()-baseUri).takeBefore(&apos;.md&apos;)})\n&quot;

}

return texto.toString()</text>
</richcontent>
</node>
<node TEXT="link to wikipage" ID="ID_1029262532" CREATED="1616719774829" MODIFIED="1616873639903" BACKGROUND_COLOR="#a6cba6"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
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
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_192189264" CREATED="1616873748042" MODIFIED="1616874253903" BACKGROUND_COLOR="#ccffcc"/>
</node>
<node TEXT="=&#xa;    def n = node.connectorsOut.target.find{it.link.file}?:                        // primer &quot;nodo con link a file&quot; conectado desde nodo&#xa;            node.link?.node                                                       // &quot;nodo con link a file&quot; linkeado desde nodo&#xa;    if (n){&#xa;        return n.text&#xa;    } else {&#xa;        return  &apos;to be linked to node with file&apos;&#xa;}" ID="ID_689670711" CREATED="1616873748042" MODIFIED="1616874198247" LINK="#ID_462044149" BACKGROUND_COLOR="#ccffcc"/>
</node>
</node>
<node TEXT="Freeplane_MarkdownHelper" STYLE_REF="baseFolder" POSITION="right" ID="ID_539998996" CREATED="1616675044234" MODIFIED="1616698282442" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/">
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
<node TEXT="icons" ID="ID_1919038751" CREATED="1616687625827" MODIFIED="1616687625832" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/resources/icons/">
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
</node>
<node TEXT="tests - examples" ID="ID_927204430" CREATED="1616675127417" MODIFIED="1616675127423" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/">
<node TEXT="Markdown document.md" ID="ID_52461332" CREATED="1616675250868" MODIFIED="1616676113909" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/Markdown%20document.md"/>
<node TEXT="dinosaur-5995333_100.png" ID="ID_909854168" CREATED="1616675250874" MODIFIED="1616676113924" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/dinosaur-5995333_100.png"/>
<node TEXT="example 01.md" ID="ID_328963337" CREATED="1616675250880" MODIFIED="1616676113933" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/example%2001.md"/>
<node TEXT="heros-journey.png" ID="ID_598044806" CREATED="1616675250885" MODIFIED="1616676113940" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/heros-journey.png"/>
<node TEXT="plain task list.md" ID="ID_814508748" CREATED="1616675250890" MODIFIED="1616676113947" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/plain%20task%20list.md"/>
<node TEXT="readme.txt" ID="ID_1556048050" CREATED="1616675250896" MODIFIED="1616676113952" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/readme.txt"/>
<node TEXT="test 02.md" ID="ID_64805148" CREATED="1616675250902" MODIFIED="1616676113955" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/tests%20-%20examples/test%2002.md"/>
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
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1907036147" CREATED="1616675225753" MODIFIED="1616698284575">
<attribute NAME="log_MDI" VALUE="No"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&nbsp;&nbsp;&nbsp;2021-03-25&nbsp;&nbsp;15:51:22
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
      &nbsp;5 node(s) moved/renamed in drive
    </p>
    <p>
      
    </p>
    <p>
      ------- Folders: --------&nbsp;
    </p>
    <p>
      1 new folders created&nbsp;
    </p>
    <p>
      14 folders didn't need to be moved&nbsp;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      0.5 seconds
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
<node TEXT=".gitattributes" ID="ID_363259253" CREATED="1616675250918" MODIFIED="1616676113987" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/.gitattributes"/>
<node TEXT="README.md" ID="ID_1306888434" CREATED="1616675250923" MODIFIED="1616676113992" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/README.md"/>
</node>
</node>
</map>
