<map version="freeplane 1.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="MarkdownHelper template" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1615651355971" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false" .addon.mm="file" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_1758066171" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTINCLINATION="65.25 pt;-34.5 pt;" ENDINCLINATION="55.5 pt;18.75 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
<edge WIDTH="2"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" ID="ID_1327065955" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" ID="ID_1886070887" STYLE="bubble">
<stylenode TEXT="MarkdownHelperNode" ID="ID_916254995" COLOR="#dbffdb" BACKGROUND_COLOR="#333333" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="5" RULE="ON_BRANCH_CREATION"/>
<node TEXT="hola" POSITION="right" ID="ID_1004612602" CREATED="1615650895298" MODIFIED="1615901389326">
<arrowlink DESTINATION="ID_1111599835"/>
<edge COLOR="#ff0000"/>
</node>
<node TEXT="MD node" STYLE_REF="MarkdownHelperNode" POSITION="right" ID="ID_187234817" CREATED="1615650902981" MODIFIED="1615650908381">
<edge COLOR="#ff0000"/>
</node>
<node TEXT="test" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1356067771" CREATED="1615650924916" MODIFIED="1615651300949">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =
    </p>
    <p>
      def leafIcon = 'emoji-1F343'
    </p>
    <p>
      
    </p>
    <p>
      node.children*.icons*.contains(leafIcon)
    </p>
  </body>
</html></richcontent>
<node TEXT="no MD style" ID="ID_1111599835" CREATED="1615650937315" MODIFIED="1615650949159"/>
<node TEXT="MD style" STYLE_REF="MarkdownHelperNode" ID="ID_38560485" CREATED="1615650951312" MODIFIED="1615650978229"/>
<node TEXT="no MD with leaf icon" ID="ID_584315773" CREATED="1615650958536" MODIFIED="1615650981339">
<icon BUILTIN="emoji-1F343"/>
</node>
</node>
<node TEXT="icons name:" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1095924879" CREATED="1615651069084" MODIFIED="1615651093875">
<icon BUILTIN="emoji-1F343"/>
<edge COLOR="#ff0000"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =node.icons.icons
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba" POSITION="right" ID="ID_1536142742" CREATED="1615825392983" MODIFIED="1615825397323">
<edge COLOR="#00ffff"/>
<node TEXT="Markdown document.md" STYLE_REF="MarkdownHelperNode" ID="ID_232622178" CREATED="1615825403492" MODIFIED="1615905706946">
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
      = MarkDownHelper.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="plain task list.md" STYLE_REF="MarkdownHelperNode" ID="ID_1610951884" CREATED="1615825410806" MODIFIED="1615846346934" LINK="file:/C:/Users/Edo/Downloads/plain%20task%20list.md"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= MarkDownHelper.plainTaskList(node)


</text>
</richcontent>
<node TEXT="tarea 1" ID="ID_686883097" CREATED="1615825434669" MODIFIED="1615825463762">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="tarea 2" ID="ID_440375083" CREATED="1615825439846" MODIFIED="1615825666985">
<icon BUILTIN="emoji-2714"/>
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="tarea 3" ID="ID_324442639" CREATED="1615825443325" MODIFIED="1615825673921">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="tarea 4" ID="ID_20466277" CREATED="1615825447672" MODIFIED="1615846044293">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="tarea 5" ID="ID_1930985863" CREATED="1615825451552" MODIFIED="1615825673926">
<icon BUILTIN="emoji-1F532"/>
</node>
</node>
<node TEXT="nested task list.md" STYLE_REF="MarkdownHelperNode" ID="ID_1989789573" CREATED="1615825692554" MODIFIED="1615847256157" LINK="file:/C:/Users/Edo/Downloads/nested%20task%20list.md"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= MarkDownHelper.nestedTaskList(node)


</text>
</richcontent>
<node TEXT="tarea 1" ID="ID_1962208362" CREATED="1615825434669" MODIFIED="1615825463762">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="tarea 2" ID="ID_1365782049" CREATED="1615825439846" MODIFIED="1615847248941">
<icon BUILTIN="emoji-1F532"/>
<node TEXT="tarea 2" ID="ID_1874231710" CREATED="1615825439846" MODIFIED="1615847244204">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="tarea 2" ID="ID_415382814" CREATED="1615825439846" MODIFIED="1615825950293">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="tarea 2" ID="ID_1151207382" CREATED="1615825439846" MODIFIED="1615825945708">
<icon BUILTIN="emoji-1F532"/>
</node>
</node>
<node TEXT="tarea 3" ID="ID_1816029455" CREATED="1615825443325" MODIFIED="1615825673921">
<icon BUILTIN="emoji-1F532"/>
<node TEXT="tarea 4" ID="ID_113387911" CREATED="1615825447672" MODIFIED="1615825673925">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="tarea 5" ID="ID_1356197657" CREATED="1615825451552" MODIFIED="1615905774933">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
</node>
</node>
<node TEXT="nested task list.md" ID="ID_1843439431" CREATED="1615826039348" MODIFIED="1615847266398" LINK="file:/C:/Users/Edo/Downloads/nested%20task%20list.md">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      - [ ] tarea 1
    </p>
    <p>
      - [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [ ] tarea 2
    </p>
    <p>
      - [ ] tarea 3
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [ ] tarea 4
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 5
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Markdown document.md" ID="ID_1989667458" CREATED="1615826047261" MODIFIED="1615826070833">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      - [ ] tarea 1
    </p>
    <p>
      - [x] tarea 2
    </p>
    <p>
      - [ ] tarea 3
    </p>
    <p>
      - [ ] tarea 4
    </p>
    <p>
      - [ ] tarea 5
    </p>
    <p>
      
    </p>
    <p>
      - [ ] tarea 1
    </p>
    <p>
      - [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [ ] tarea 2
    </p>
    <p>
      - [ ] tarea 3
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [ ] tarea 4
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 5
    </p>
    <p>
      
    </p>
    <p>
      - [ ] tarea 1
    </p>
    <p>
      - [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [ ] tarea 2
    </p>
    <p>
      - [ ] tarea 3
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [ ] tarea 4
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- [x] tarea 5
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Markdown document.md" STYLE_REF="MarkdownHelperNode" ID="ID_1355209245" CREATED="1615905783840" MODIFIED="1615906202002">
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="false"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= MarkDownHelper.document(node)
</text>
</richcontent>
<node TEXT="esto es una prueba" FOLDED="true" ID="ID_1915817537" CREATED="1615905800106" MODIFIED="1615905900415">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="Documento de prueba" ID="ID_1790850809" CREATED="1615905838025" MODIFIED="1615906439392">
<node TEXT="Introducción" ID="ID_732129727" CREATED="1615905845119" MODIFIED="1615906290451">
<node TEXT="que es?" ID="ID_144401518" CREATED="1615905908310" MODIFIED="1615906131380">
<icon BUILTIN="emoji-21A9"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      El presente documento es una **prueba** para ver si todo esto **funciona**
    </p>
    <p>
      
    </p>
    <p>
      ----
    </p>
    <p>
      
    </p>
    <p>
      &gt; ¿realmente funciona?
    </p>
    <p>
      
    </p>
    <p>
      no sé, lo veremos
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Tabla de contenidos" ID="ID_783426530" CREATED="1615906275112" MODIFIED="1615906284715">
<node TEXT="ToC" STYLE_REF="MarkdownHelperNode" ID="ID_211596432" CREATED="1615906429420" MODIFIED="1615907442500">
<attribute NAME="TOClevels" VALUE="3" OBJECT="org.freeplane.features.format.FormattedNumber|3|#0.####"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.TOC(node)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Funcionalidades" ID="ID_291705167" CREATED="1615905854263" MODIFIED="1615906332316">
<node TEXT="párrafo introductorio" ID="ID_60545443" CREATED="1615906059326" MODIFIED="1615906268321"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      A continuación revisaremos cada una de las funcionalidades de este addOn.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Bótones de Iconos" ID="ID_342381033" CREATED="1615906361645" MODIFIED="1615906375861">
<node TEXT="OK" ID="ID_315221725" CREATED="1615906377573" MODIFIED="1615906470933"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Revisé los diferentes botónes y todos agregan o quitan íconos según su función.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Links" ID="ID_321075377" CREATED="1615906486115" MODIFIED="1615907116913">
<node TEXT="En el siguiente párrafo veremos si la funcionalidad funciona según lo esperado" ID="ID_571722459" CREATED="1615906541934" MODIFIED="1615906570820"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_1750828631" CREATED="1615906588317" MODIFIED="1615906588317"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.textBlock(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="parrafo de muestra" ID="ID_1618897570" CREATED="1615906679686" MODIFIED="1615907393163"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Aquí podemos ver como el web link $1 se intercaló en este párrafo.
    </p>
    <p>
      
    </p>
    <p>
      Aquí en cambio $2 intercalamos una imagen Web, ademas de un texto: $3.
    </p>
    <p>
      
    </p>
    <p>
      Finalmente también podemos linkear links locales como esta imagen $4 y este archivo $5.
    </p>
    <p>
      
    </p>
    <p>
      Se completa así una prueba exitosa (respecto a links)
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_1465410948" CREATED="1615906825069" MODIFIED="1615906839277"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= MarkDownHelper.webLink(node)</text>
</richcontent>
<node TEXT="Freeplane API: MenuUtils" ID="ID_1865695584" CREATED="1615906873363" MODIFIED="1615906907044" LINK="http://www.freeplane.org/doc/api/index.html?org/freeplane/core/util/MenuUtils.html"/>
</node>
<node TEXT="web Image" STYLE_REF="MarkdownHelperNode" ID="ID_1892185753" CREATED="1615906966520" MODIFIED="1615906966536"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.webImageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Freeplane Icon" ID="ID_434045122" CREATED="1615907031683" MODIFIED="1615907059029" LINK="https://a.fsdn.com/allura/p/freeplane/icon?1513717476&amp;w=90"/>
</node>
<node TEXT="el texto" ID="ID_1299630279" CREATED="1615906745853" MODIFIED="1615906800636"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      ESTE TEXTO
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_682647027" CREATED="1615907215811" MODIFIED="1615907215826"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.imageLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Vectium.png" ID="ID_389515446" CREATED="1615907299412" MODIFIED="1615907299412" LINK="file:/C:/Users/Edo/Downloads/Vectium.png"/>
</node>
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_324046906" CREATED="1615907207992" MODIFIED="1615907207992"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.fileLink(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="plain task list.md" ID="ID_1707693651" CREATED="1615907239119" MODIFIED="1615907239119" LINK="file:/C:/Users/Edo/Downloads/plain%20task%20list.md"/>
</node>
</node>
</node>
</node>
<node TEXT="Listas" ID="ID_1670203645" CREATED="1615907474453" MODIFIED="1615907477578">
<node TEXT="Las listas pueden ser de los siguientes tipos:" ID="ID_985388234" CREATED="1615907605182" MODIFIED="1615907618392"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_403323531" CREATED="1615907625729" MODIFIED="1615907625729"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.list(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="listas planas" ID="ID_209165063" CREATED="1615907680094" MODIFIED="1615907692075"/>
<node TEXT="listas planas numeradas" ID="ID_850286431" CREATED="1615907692997" MODIFIED="1615907700952"/>
<node TEXT="listas estructuradas" ID="ID_852212478" CREATED="1615907702187" MODIFIED="1615907713777"/>
<node TEXT="listas estructuradas numeradas" ID="ID_417847973" CREATED="1615907714840" MODIFIED="1615907723145"/>
<node TEXT="listas estructuradas mixtas" ID="ID_476951989" CREATED="1615907724098" MODIFIED="1615907734648"/>
</node>
<node TEXT="La lista anterior es un ejemplo de lista plana." ID="ID_120904748" CREATED="1615907478812" MODIFIED="1615907799217"/>
<node TEXT="Pasemos al ejemplo de lista plana numerada usando la misma lista." ID="ID_812713503" CREATED="1615907799826" MODIFIED="1615907837016"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1898612967" CREATED="1615907625729" MODIFIED="1615907841069">
<icon BUILTIN="emoji-1F522"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="listas planas" ID="ID_1862827028" CREATED="1615907680094" MODIFIED="1615907692075"/>
<node TEXT="listas planas numeradas" ID="ID_1221105575" CREATED="1615907692997" MODIFIED="1615907700952"/>
<node TEXT="listas estructuradas" ID="ID_1218490102" CREATED="1615907702187" MODIFIED="1615907713777"/>
<node TEXT="listas estructuradas numeradas" ID="ID_1385579209" CREATED="1615907714840" MODIFIED="1615907723145"/>
<node TEXT="listas estructuradas mixtas" ID="ID_1847721457" CREATED="1615907724098" MODIFIED="1615907734648"/>
</node>
<node TEXT="y ahora el ejemplo de lista estructurada:" ID="ID_509371705" CREATED="1615907867131" MODIFIED="1615907890684"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1571831279" CREATED="1615907625729" MODIFIED="1615907625729"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="listas planas" ID="ID_1725687973" CREATED="1615907680094" MODIFIED="1615907692075">
<node TEXT="bullet" ID="ID_237241111" CREATED="1615907942748" MODIFIED="1615907945094"/>
<node TEXT="numeradas" ID="ID_977044286" CREATED="1615907910928" MODIFIED="1615907921833"/>
</node>
<node TEXT="listas estructuradas" ID="ID_1456901328" CREATED="1615907702187" MODIFIED="1615907713777">
<node TEXT="bullet" ID="ID_931902386" CREATED="1615907942748" MODIFIED="1615907945094"/>
<node TEXT="numeradas" ID="ID_854744708" CREATED="1615907910928" MODIFIED="1615907921833"/>
<node TEXT="mixtas" ID="ID_1303695922" CREATED="1615907955934" MODIFIED="1615907959981"/>
</node>
</node>
<node TEXT="lista estructurada numerada:" ID="ID_1294941217" CREATED="1615907867131" MODIFIED="1615908007581"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_463611406" CREATED="1615907625729" MODIFIED="1615908027866">
<icon BUILTIN="emoji-1F522"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="listas planas" ID="ID_1353726025" CREATED="1615907680094" MODIFIED="1615907692075">
<node TEXT="bullet" ID="ID_1041249831" CREATED="1615907942748" MODIFIED="1615907945094"/>
<node TEXT="numeradas" ID="ID_1705311854" CREATED="1615907910928" MODIFIED="1615907921833"/>
</node>
<node TEXT="listas estructuradas" ID="ID_1510915362" CREATED="1615907702187" MODIFIED="1615907713777">
<node TEXT="bullet" ID="ID_1338573363" CREATED="1615907942748" MODIFIED="1615907945094"/>
<node TEXT="numeradas" ID="ID_1264124918" CREATED="1615907910928" MODIFIED="1615907921833"/>
<node TEXT="mixtas" ID="ID_342988491" CREATED="1615907955934" MODIFIED="1615907959981"/>
</node>
</node>
<node TEXT="lista estructurada mixta:" ID="ID_1777514304" CREATED="1615907867131" MODIFIED="1615908022484"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1700596257" CREATED="1615907625729" MODIFIED="1615908027866">
<icon BUILTIN="emoji-1F522"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="listas planas" ID="ID_1385607011" CREATED="1615907680094" MODIFIED="1615908031752">
<icon BUILTIN="emoji-1F537"/>
<node TEXT="bullet" ID="ID_1359115655" CREATED="1615907942748" MODIFIED="1615907945094"/>
<node TEXT="numeradas" ID="ID_657329415" CREATED="1615907910928" MODIFIED="1615907921833"/>
</node>
<node TEXT="listas estructuradas" ID="ID_930295488" CREATED="1615907702187" MODIFIED="1615908031768">
<icon BUILTIN="emoji-1F537"/>
<node TEXT="bullet" ID="ID_1743658573" CREATED="1615907942748" MODIFIED="1615907945094"/>
<node TEXT="numeradas" ID="ID_1785360979" CREATED="1615907910928" MODIFIED="1615907921833"/>
<node TEXT="mixtas" ID="ID_1613063323" CREATED="1615907955934" MODIFIED="1615907959981"/>
</node>
</node>
</node>
<node TEXT="Listas de Tareas" ID="ID_406817597" CREATED="1615908128494" MODIFIED="1615908399918">
<node TEXT="existen dos funcionalidades para agregar listas de tareas:" ID="ID_907194224" CREATED="1615908149594" MODIFIED="1615908181483"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_617819201" CREATED="1615907625729" MODIFIED="1615907625729"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="listas de tareas planas" ID="ID_1175221462" CREATED="1615908194079" MODIFIED="1615908208500"/>
<node TEXT="listas de tareas estructuradas" ID="ID_1992846781" CREATED="1615908209156" MODIFIED="1615908217723"/>
</node>
<node TEXT="la diferencia entre ambas es que la primera sólo considera las tareas de primer nivel, permitiendo que el usuario agregue muchos más apuntes en ellas que no se publicarán en el documento." ID="ID_1576554539" CREATED="1615908231881" MODIFIED="1615908289592"/>
<node TEXT="Esto es útil si las tareas son clonadas de otra parte del documento donde realmente son administradas. De esa forma reflejan el estado actual de ellas" ID="ID_638664913" CREATED="1615908291123" MODIFIED="1615908638524"/>
<node TEXT="Ejemplo de listado de tareas plana:" ID="ID_1515817529" CREATED="1615908347411" MODIFIED="1615908359708"/>
<node TEXT="plain task list" STYLE_REF="MarkdownHelperNode" ID="ID_684213789" CREATED="1615908395871" MODIFIED="1615908395871"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.plainTaskList(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Escribir rutinas de cada tipo de nodo" ID="ID_853612649" CREATED="1615908419098" MODIFIED="1615908530086">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="Llevar a librería" ID="ID_1166733980" CREATED="1615908452595" MODIFIED="1615908530086">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="Generar Diálogo" ID="ID_748596118" CREATED="1615908469981" MODIFIED="1615908530086">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="Llevar a librería" ID="ID_361787218" CREATED="1615908489367" MODIFIED="1615908525616">
<icon BUILTIN="emoji-1F532"/>
<node TEXT="llevar a librería temporal" ID="ID_1760858763" CREATED="1615908545538" MODIFIED="1615908583779">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="hacer pruebas" ID="ID_279170181" CREATED="1615908569788" MODIFIED="1615908580739">
<icon BUILTIN="emoji-1F532"/>
</node>
</node>
<node TEXT="Escribir mapa de ejemplo / prueba" ID="ID_1248106100" CREATED="1615908500057" MODIFIED="1615908525616">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="Escribir mapa guía" ID="ID_1863905134" CREATED="1615908514480" MODIFIED="1615908525600">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="sólo incluir tareas que sean de interés" ID="ID_800316570" CREATED="1615908882322" MODIFIED="1615908905790"/>
<node TEXT="otras tareas privadas" ID="ID_1965843473" CREATED="1615908906758" MODIFIED="1615908916162">
<node TEXT="comprar pan" ID="ID_1320141904" CREATED="1615908916162" MODIFIED="1615908934923">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="lavar la loza" ID="ID_1669065243" CREATED="1615908926482" MODIFIED="1615908934923">
<icon BUILTIN="emoji-1F532"/>
</node>
</node>
</node>
<node TEXT="Las listas de tareas estructuradas muestran en cambio una estructura de tareas y subtareas. Sin embargo, al igual que en el caso anterior, sólo muestran los textos de los nodos indicados como tareas y sus descendientes en esa misma condición." ID="ID_1450594116" CREATED="1615908644234" MODIFIED="1615908750103"/>
<node TEXT="De esta forma si hay tareas que dependen de un nodo que no está indicado como tarea, ellas quedan aisladas y no son mostradas." ID="ID_830642676" CREATED="1615908751540" MODIFIED="1615908795810"/>
<node TEXT="Eso permite al usuario administrar el nivel de detalle que desea sea mostrado en el documento" ID="ID_1972973077" CREATED="1615908797107" MODIFIED="1615908842085"/>
<node TEXT="nested task list" STYLE_REF="MarkdownHelperNode" ID="ID_1956266922" CREATED="1615908846928" MODIFIED="1615908846928"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.nestedTaskList(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Escribir rutinas de cada tipo de nodo" ID="ID_1756109307" CREATED="1615908419098" MODIFIED="1615908530086">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="Llevar a librería" ID="ID_1002062106" CREATED="1615908452595" MODIFIED="1615908530086">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="Generar Diálogo" ID="ID_705991802" CREATED="1615908469981" MODIFIED="1615908530086">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="Llevar a librería" ID="ID_1333142317" CREATED="1615908489367" MODIFIED="1615908525616">
<icon BUILTIN="emoji-1F532"/>
<node TEXT="llevar a librería temporal" ID="ID_494333055" CREATED="1615908545538" MODIFIED="1615908583779">
<icon BUILTIN="emoji-1F532"/>
<icon BUILTIN="emoji-2714"/>
</node>
<node TEXT="hacer pruebas" ID="ID_1329089634" CREATED="1615908569788" MODIFIED="1615908580739">
<icon BUILTIN="emoji-1F532"/>
</node>
</node>
<node TEXT="Escribir mapa de ejemplo / prueba" ID="ID_1817690876" CREATED="1615908500057" MODIFIED="1615908525616">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="Escribir mapa guía" ID="ID_1402370506" CREATED="1615908514480" MODIFIED="1615908525600">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="sólo incluir tareas que sean de interés" ID="ID_1262166738" CREATED="1615908882322" MODIFIED="1615908905790"/>
<node TEXT="otras tareas privadas" ID="ID_1819440689" CREATED="1615908906758" MODIFIED="1615908916162">
<node TEXT="comprar pan" ID="ID_1071160591" CREATED="1615908916162" MODIFIED="1615908934923">
<icon BUILTIN="emoji-1F532"/>
</node>
<node TEXT="lavar la loza" ID="ID_1342438552" CREATED="1615908926482" MODIFIED="1615908934923">
<icon BUILTIN="emoji-1F532"/>
</node>
</node>
</node>
</node>
<node TEXT="Tablas" ID="ID_1051417250" CREATED="1615910250413" MODIFIED="1615910253553">
<node TEXT="También está la funcionalidad para agregar **tablas**" ID="ID_1797061475" CREATED="1615910260193" MODIFIED="1615910285549"/>
<node TEXT="Podemos tener una tabla sencilla come ésta, por ejemplo:" ID="ID_1103123204" CREATED="1615910297396" MODIFIED="1615910322959"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_1012337530" CREATED="1615910325472" MODIFIED="1615910325472"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.table(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="r" ID="ID_1788789695" CREATED="1615910352543" MODIFIED="1615910353943">
<node TEXT="Nombre" ID="ID_904088823" CREATED="1615910337986" MODIFIED="1615910348246"/>
<node TEXT="Apellido" ID="ID_1954663725" CREATED="1615910356427" MODIFIED="1615910360520"/>
<node TEXT="Edad" ID="ID_1963539248" CREATED="1615910362458" MODIFIED="1615910368320"/>
</node>
<node TEXT="r" ID="ID_887572010" CREATED="1615910378913" MODIFIED="1615910381391">
<node TEXT="Pedro" ID="ID_949621608" CREATED="1615910381406" MODIFIED="1615910384515"/>
<node TEXT="López" ID="ID_680633707" CREATED="1615910388324" MODIFIED="1615910392564"/>
<node TEXT="43" OBJECT="java.lang.Long|43" ID="ID_1395953946" CREATED="1615910393735" MODIFIED="1615910394407"/>
</node>
<node TEXT="r" ID="ID_1150870403" CREATED="1615910396112" MODIFIED="1615910397800">
<node TEXT="Joe" ID="ID_1467064684" CREATED="1615910399362" MODIFIED="1615910406138"/>
<node TEXT="Murphy" ID="ID_1072688981" CREATED="1615910411325" MODIFIED="1615910413809"/>
<node TEXT="35" OBJECT="java.lang.Long|35" ID="ID_717977882" CREATED="1615910414937" MODIFIED="1615910415515"/>
</node>
<node TEXT="r" ID="ID_1607916906" CREATED="1615910449046" MODIFIED="1615910450952">
<node TEXT="Anne" ID="ID_1624411824" CREATED="1615910452632" MODIFIED="1615910455135"/>
<node TEXT="Kind" ID="ID_1021229468" CREATED="1615910457213" MODIFIED="1615910459010"/>
<node TEXT="48" OBJECT="java.lang.Long|48" ID="ID_220818006" CREATED="1615910461010" MODIFIED="1615910464541"/>
</node>
<node TEXT="r" ID="ID_533450867" CREATED="1615910417612" MODIFIED="1615910419658">
<node TEXT="Hans" ID="ID_261571962" CREATED="1615910422324" MODIFIED="1615910423958"/>
<node TEXT="Sauer" ID="ID_953030914" CREATED="1615910426444" MODIFIED="1615910443290"/>
<node TEXT="67" OBJECT="java.lang.Long|67" ID="ID_1097267094" CREATED="1615910444890" MODIFIED="1615910445734"/>
</node>
</node>
<node TEXT="La cual se puede formatear para que la última columna se alinie a la derecha. Y podemos ademá reordenar las filas para, por ejemplo, ponerlas en orden de edad." ID="ID_1140897171" CREATED="1615910472681" MODIFIED="1615910621630"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" FOLDED="true" ID="ID_716859809" CREATED="1615910325472" MODIFIED="1615910547289"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_783466170" CREATED="1615910352543" MODIFIED="1615910353943">
<node TEXT="Nombre" ID="ID_1463057176" CREATED="1615910337986" MODIFIED="1615910348246"/>
<node TEXT="Apellido" ID="ID_1645025567" CREATED="1615910356427" MODIFIED="1615910360520"/>
<node TEXT="Edad" ID="ID_1126738786" CREATED="1615910362458" MODIFIED="1615910527935">
<icon BUILTIN="emoji-27A1"/>
</node>
</node>
<node TEXT="r" ID="ID_1844521301" CREATED="1615910417612" MODIFIED="1615910419658">
<node TEXT="Hans" ID="ID_309692738" CREATED="1615910422324" MODIFIED="1615910423958"/>
<node TEXT="Sauer" ID="ID_1157528519" CREATED="1615910426444" MODIFIED="1615910443290"/>
<node TEXT="67" OBJECT="java.lang.Long|67" ID="ID_205544567" CREATED="1615910444890" MODIFIED="1615910445734"/>
</node>
<node TEXT="r" ID="ID_473722876" CREATED="1615910449046" MODIFIED="1615910450952">
<node TEXT="Anne" ID="ID_1442190860" CREATED="1615910452632" MODIFIED="1615910455135"/>
<node TEXT="Kind" ID="ID_647567852" CREATED="1615910457213" MODIFIED="1615910459010"/>
<node TEXT="48" OBJECT="java.lang.Long|48" ID="ID_922724552" CREATED="1615910461010" MODIFIED="1615910464541"/>
</node>
<node TEXT="r" ID="ID_1676183910" CREATED="1615910378913" MODIFIED="1615910381391">
<node TEXT="Pedro" ID="ID_1421059807" CREATED="1615910381406" MODIFIED="1615910384515"/>
<node TEXT="López" ID="ID_1063552875" CREATED="1615910388324" MODIFIED="1615910392564"/>
<node TEXT="43" OBJECT="java.lang.Long|43" ID="ID_1607090028" CREATED="1615910393735" MODIFIED="1615910394407"/>
</node>
<node TEXT="r" ID="ID_1922261464" CREATED="1615910396112" MODIFIED="1615910397800">
<node TEXT="Joe" ID="ID_1537961174" CREATED="1615910399362" MODIFIED="1615910406138"/>
<node TEXT="Murphy" ID="ID_145879734" CREATED="1615910411325" MODIFIED="1615910413809"/>
<node TEXT="35" OBJECT="java.lang.Long|35" ID="ID_651937071" CREATED="1615910414937" MODIFIED="1615910415515"/>
</node>
</node>
<node TEXT="Las tablas pueden además contener links y otros tipos de objetos" ID="ID_558282554" CREATED="1615910653451" MODIFIED="1615910703519"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_211784699" CREATED="1615910325472" MODIFIED="1615910798377"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_1808772119" CREATED="1615910352543" MODIFIED="1615910353943">
<node TEXT="Nombre" ID="ID_966399588" CREATED="1615910337986" MODIFIED="1615910348246"/>
<node TEXT="Apellido" ID="ID_1403884763" CREATED="1615910356427" MODIFIED="1615910360520"/>
<node TEXT="Edad" ID="ID_1840098168" CREATED="1615910362458" MODIFIED="1615910527935">
<icon BUILTIN="emoji-27A1"/>
</node>
<node TEXT="Comentario / Otro" ID="ID_1282214558" CREATED="1615910719684" MODIFIED="1615911053643">
<icon BUILTIN="emoji-2194"/>
</node>
</node>
<node TEXT="r" ID="ID_1515332223" CREATED="1615910417612" MODIFIED="1615910419658">
<node TEXT="Hans" ID="ID_532739804" CREATED="1615910422324" MODIFIED="1615910423958"/>
<node TEXT="Sauer" ID="ID_1628090279" CREATED="1615910426444" MODIFIED="1615910443290"/>
<node TEXT="67" OBJECT="java.lang.Long|67" ID="ID_242064229" CREATED="1615910444890" MODIFIED="1615910445734"/>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_208981262" CREATED="1615906588317" MODIFIED="1615906588317"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="parrafo de muestra" ID="ID_1106450133" CREATED="1615906679686" MODIFIED="1615910968562"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &nbsp;el web link $1 y&nbsp;este archivo $2.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_980244221" CREATED="1615906825069" MODIFIED="1615906839277"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= MarkDownHelper.webLink(node)</text>
</richcontent>
<node TEXT="Freeplane API: MenuUtils" ID="ID_575959831" CREATED="1615906873363" MODIFIED="1615906907044" LINK="http://www.freeplane.org/doc/api/index.html?org/freeplane/core/util/MenuUtils.html"/>
</node>
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_1837022851" CREATED="1615907207992" MODIFIED="1615907207992"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.fileLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="plain task list.md" ID="ID_1081101883" CREATED="1615907239119" MODIFIED="1615907239119" LINK="file:/C:/Users/Edo/Downloads/plain%20task%20list.md"/>
</node>
</node>
</node>
</node>
<node TEXT="r" ID="ID_47845685" CREATED="1615910449046" MODIFIED="1615910450952">
<node TEXT="Anne" ID="ID_285511867" CREATED="1615910452632" MODIFIED="1615910455135"/>
<node TEXT="Kind" ID="ID_1089983553" CREATED="1615910457213" MODIFIED="1615910459010"/>
<node TEXT="48" OBJECT="java.lang.Long|48" ID="ID_584337749" CREATED="1615910461010" MODIFIED="1615910464541"/>
<node TEXT="web Image" STYLE_REF="MarkdownHelperNode" ID="ID_1118725551" CREATED="1615906966520" MODIFIED="1615906966536"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.webImageLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Freeplane Icon" ID="ID_537190657" CREATED="1615907031683" MODIFIED="1615907059029" LINK="https://a.fsdn.com/allura/p/freeplane/icon?1513717476&amp;w=90"/>
</node>
</node>
<node TEXT="r" ID="ID_550904083" CREATED="1615910378913" MODIFIED="1615910381391">
<node TEXT="Pedro" ID="ID_1005881045" CREATED="1615910381406" MODIFIED="1615910384515"/>
<node TEXT="López" ID="ID_315983055" CREATED="1615910388324" MODIFIED="1615910392564"/>
<node TEXT="43" OBJECT="java.lang.Long|43" ID="ID_1277153430" CREATED="1615910393735" MODIFIED="1615910394407"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_597714335" CREATED="1615907215811" MODIFIED="1615907215826"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.imageLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Vectium.png" ID="ID_252997432" CREATED="1615907299412" MODIFIED="1615907299412" LINK="file:/C:/Users/Edo/Downloads/Vectium.png"/>
</node>
</node>
<node TEXT="r" ID="ID_1228973089" CREATED="1615910396112" MODIFIED="1615910397800">
<node TEXT="Joe" ID="ID_293580965" CREATED="1615910399362" MODIFIED="1615910406138"/>
<node TEXT="Murphy" ID="ID_70047152" CREATED="1615910411325" MODIFIED="1615910413809"/>
<node TEXT="35" OBJECT="java.lang.Long|35" ID="ID_183598475" CREATED="1615910414937" MODIFIED="1615910415515"/>
<node TEXT="link to local file" STYLE_REF="MarkdownHelperNode" ID="ID_1723161407" CREATED="1615907207992" MODIFIED="1615907207992"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.fileLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="plain task list.md" ID="ID_1513495452" CREATED="1615907239119" MODIFIED="1615907239119" LINK="file:/C:/Users/Edo/Downloads/plain%20task%20list.md"/>
</node>
</node>
</node>
</node>
<node TEXT="Bloques de código" ID="ID_1970342789" CREATED="1615911148056" MODIFIED="1615911157280">
<node TEXT="Por otra parte podemos necesitar publicar bloques de algún código, como por ejemplo" ID="ID_1949337799" CREATED="1615911160233" MODIFIED="1615911220694"/>
<node TEXT="code block" STYLE_REF="MarkdownHelperNode" ID="ID_1206341254" CREATED="1615911224587" MODIFIED="1615911224587"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = MarkDownHelper.codeBlock(node)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="example code" ID="ID_877303177" CREATED="1615911237544" MODIFIED="1615911370706"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      // getting list of icons:
    </p>
    <p>
      msg = &quot;The icons of the selected node are: ${node.icons.icons}&quot;
    </p>
    <p>
      ui.informationMessage(msg.toString())
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
</node>
</node>
<node TEXT="Conclusiones" ID="ID_49752540" CREATED="1615905860029" MODIFIED="1615906295772">
<node TEXT="párrafo introductorio" ID="ID_111875638" CREATED="1615906104120" MODIFIED="1615906116260"/>
<node TEXT="listado de conclusiones" ID="ID_1964525631" CREATED="1615906085207" MODIFIED="1615906095107"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
