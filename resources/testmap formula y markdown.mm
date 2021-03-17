<map version="freeplane 1.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry>
    <attribute_name MANUAL="true" RESTRICTED="true" NAME="headerNumbering">
        <attribute_value VALUE="false"/>
        <attribute_value VALUE="true"/>
    </attribute_name>
    <attribute_name MANUAL="true" RESTRICTED="true" NAME="headerNumbering ">
        <attribute_value VALUE="false"/>
        <attribute_value VALUE="true"/>
    </attribute_name>
    <attribute_name MANUAL="true" RESTRICTED="true" NAME="hideFolded">
        <attribute_value VALUE="false"/>
        <attribute_value VALUE="true"/>
    </attribute_name>
    <attribute_name MANUAL="true" RESTRICTED="true" NAME="hideFolded ">
        <attribute_value VALUE="false"/>
        <attribute_value VALUE="true"/>
    </attribute_name>
</attribute_registry>
<node LOCALIZED_TEXT="new_mindmap" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1615417413604" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" background="#999999">
    <properties show_icon_for_attributes="true" fit_to_viewport="false" .addon.mm="file" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_399682575" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" BACKGROUND_COLOR="#ffffff" STYLE="as_parent">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
<edge WIDTH="1"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      xxx
    </p>
  </body>
</html></richcontent>
<node TEXT="note with formula, script and MarkDown" FOLDED="true" POSITION="right" ID="ID_436942377" CREATED="1613660526836" MODIFIED="1613662999469">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def nInBranch = node.findAll().size()
def nInMap = c.findAll().size()

def reportText = &quot;&quot;&quot;# Report
-----

- this **map** has **$nInMap** nodes

- this **branch** has **$nInBranch** nodes

-----
&quot;&quot;&quot;.toString()

return reportText
</text>
</richcontent>
<node TEXT="jhgk" ID="ID_1189463926" CREATED="1613660885996" MODIFIED="1613660886987"/>
<node TEXT="gdgdg" ID="ID_599141448" CREATED="1613661257800" MODIFIED="1613661258991"/>
<node TEXT="dchdhz" ID="ID_693922842" CREATED="1613662592249" MODIFIED="1613662594709">
<node TEXT="jjhdshd" ID="ID_1071682409" CREATED="1613662805937" MODIFIED="1613662807773"/>
<node TEXT="kshkdjs" ID="ID_918507748" CREATED="1613662808185" MODIFIED="1613662809046"/>
<node TEXT="slkjlkdjsa" ID="ID_1546319061" CREATED="1613662809423" MODIFIED="1613662810119"/>
</node>
<node TEXT="sss" ID="ID_515176937" CREATED="1613662775921" MODIFIED="1613662777017">
<node TEXT="dchdhz" ID="ID_843572378" CREATED="1613662592249" MODIFIED="1613662594709">
<node TEXT="jjhdshd" ID="ID_1250515142" CREATED="1613662805937" MODIFIED="1613662807773"/>
<node TEXT="kshkdjs" ID="ID_470375060" CREATED="1613662808185" MODIFIED="1613662809046"/>
<node TEXT="slkjlkdjsa" ID="ID_809159518" CREATED="1613662809423" MODIFIED="1613662810119"/>
</node>
</node>
</node>
<node TEXT="note with formula, script and MarkDown" POSITION="right" ID="ID_628686684" CREATED="1613660526836" MODIFIED="1613950276534" STYLE="bubble">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
reportText = new StringBuilder()
headersToUnderline = 2

node.children.each{
    linea(it,1)
}

return reportText.toString()

def linea(n,t){
    if (n.isLeaf()){
        reportText &lt;&lt; n.value.toString() + &apos;\n\n&apos;
        if(n.externalObject){
        reportText
            &lt;&lt; &quot;![$n.details]($n.externalObject.uri)\n\n&quot;
        }
    } else {
        reportText 
            &lt;&lt; &quot;#&quot; * t  + &apos; &apos; + n.text + &apos;\n\n&apos;
            &lt;&lt; ( t &lt;= headersToUnderline?&apos;-----\n\n&apos;:&apos;&apos; )
       n.children.each{
            linea(it,t + 1)
        }
    }
}
</text>
</richcontent>
<node TEXT="Title" FOLDED="true" ID="ID_1975600318" CREATED="1613664753546" MODIFIED="1613664763175">
<node TEXT="this is the introduction paragraph" ID="ID_806638744" CREATED="1613664764355" MODIFIED="1613664791601"/>
<node TEXT="subtitle 1" FOLDED="true" ID="ID_590732472" CREATED="1613664794663" MODIFIED="1613664802448">
<node TEXT="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." ID="ID_940654258" CREATED="1613664875910" MODIFIED="1613664903984"/>
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1893976586" CREATED="1613664903997" MODIFIED="1613664904001"/>
<node TEXT="Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur." ID="ID_1155544363" CREATED="1613664903992" MODIFIED="1613664903994"/>
<node TEXT="Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ID="ID_1632313160" CREATED="1613664903988" MODIFIED="1613664903990"/>
</node>
<node TEXT="subtitle 2" ID="ID_1415162482" CREATED="1613664794663" MODIFIED="1613664835796">
<node TEXT="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." ID="ID_1094898163" CREATED="1613664875910" MODIFIED="1613664903984"/>
<node TEXT="subsubTitle 2.1" ID="ID_1814835765" CREATED="1613664929634" MODIFIED="1613665826315">
<node TEXT="This node has *content Style* = **MarkDown**&#xa;&#xa;![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)" ID="ID_402363044" CREATED="1613918293599" MODIFIED="1613950101118" FORMAT="markdownPatternFormat"/>
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1286413464" CREATED="1613664903997" MODIFIED="1613664904001"/>
<node TEXT="= &quot;![]($node.link.uri)&quot;" ID="ID_740031681" CREATED="1613925411807" MODIFIED="1613950180633" LINK="file:/C:/Users/Edo/Downloads/chuychu.jpg" FORMAT="markdownPatternFormat"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= &quot;![]($node.link.uri)&quot;</text>
</richcontent>
</node>
<node TEXT="Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur." ID="ID_1148291288" CREATED="1613664903992" MODIFIED="1613664903994"/>
</node>
<node TEXT="subsubTitle 2.2" ID="ID_954541830" CREATED="1613664929634" MODIFIED="1613665834054">
<node TEXT="linked image from Web" ID="ID_1977299103" CREATED="1613921731151" MODIFIED="1613922681667">
<hook URI="https://cldup.com/dTxpPi9lDf.thumb.png" SIZE="1.0" NAME="ExternalObject"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =
    </p>
    <p>
      reportText = new StringBuilder()
    </p>
    <p>
      
    </p>
    <p>
      if(node.externalObject){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;reportText
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;&lt; &quot;![$node.details]($node.externalObject.uri)&quot;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}//.uri
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;
    </p>
    <p>
      return reportText.toString()
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="linked image from Disk" ID="ID_623830040" CREATED="1613921731151" MODIFIED="1613948610043">
<hook URI="file:/C:/Users/Edo/Downloads/sqlJoins_7.png" SIZE="0.3768132" NAME="ExternalObject"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= 
reportText = new StringBuilder()

def n=node

if(n.externalObject){
    reportText
        &lt;&lt; &quot;![$n.details]($n.externalObject.uri)&quot;
    }
    
return reportText.toString()


</text>
</richcontent>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      SQL Tables
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ID="ID_960286529" CREATED="1613664903988" MODIFIED="1613664903990"/>
<node TEXT="subsubTitle 2.2.1" ID="ID_1745186563" CREATED="1613664929634" MODIFIED="1613918259904">
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1675139680" CREATED="1613664903997" MODIFIED="1613664904001"/>
<node TEXT="Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur." ID="ID_1099309021" CREATED="1613664903992" MODIFIED="1613664903994"/>
<node TEXT="subsubTitle 2.2.2.1" ID="ID_10826912" CREATED="1613664929634" MODIFIED="1613919446930">
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1932252891" CREATED="1613664903997" MODIFIED="1613664904001"/>
<node TEXT="subsubTitle 2.2.2.2.1" ID="ID_1401716089" CREATED="1613664929634" MODIFIED="1613919454328">
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1495725455" CREATED="1613664903997" MODIFIED="1613664904001"/>
</node>
</node>
</node>
<node TEXT="subsubTitle 2.2.3" ID="ID_226331602" CREATED="1613664929634" MODIFIED="1613918272201">
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_789568814" CREATED="1613664903997" MODIFIED="1613664904001"/>
</node>
</node>
</node>
<node TEXT="Conclusions" FOLDED="true" ID="ID_403956903" CREATED="1613664811350" MODIFIED="1613666649540"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= &apos;a&apos; * 5</text>
</richcontent>
<node TEXT="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." ID="ID_1558690872" CREATED="1613664875910" MODIFIED="1613664903984"/>
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1762165301" CREATED="1613664903997" MODIFIED="1613664904001"/>
</node>
</node>
</node>
<node TEXT="seeing images in nodes" POSITION="right" ID="ID_961324269" CREATED="1613949417172" MODIFIED="1615386925806" STYLE="bubble">
<edge COLOR="#ff0000"/>
<node TEXT="Chuncho y Chucao" ID="ID_208788630" CREATED="1613946318889" MODIFIED="1613946417004">
<node TEXT="chuychu.jpg" ID="ID_180795598" CREATED="1613925411807" MODIFIED="1613926423659" LINK="file:/C:/Users/Edo/Downloads/chuychu.jpg"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= &quot;![]($node.link.uri)&quot;</text>
</richcontent>
</node>
<node TEXT="chuychu.jpg" ID="ID_1327169139" CREATED="1613925411807" MODIFIED="1615386724189" LINK="file:/C:/Users/Edo/Downloads/chuychu.jpg"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
<richcontent CONTENT-TYPE="plain/markdown" TYPE="DETAILS">
    <text>= &quot;![]($node.link.uri)&quot;</text>
</richcontent>
</node>
<node TEXT="= &quot;![]($node.link.uri)&quot;" ID="ID_531970972" CREATED="1613925411807" MODIFIED="1613950180633" LINK="file:/C:/Users/Edo/Downloads/chuychu.jpg" FORMAT="markdownPatternFormat"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= &quot;![]($node.link.uri)&quot;</text>
</richcontent>
<node TEXT="=parent.text" ID="ID_1399048199" CREATED="1613949707652" MODIFIED="1613949976180"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      text
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="=parent.displayedText" ID="ID_159496907" CREATED="1613949707652" MODIFIED="1613949976193"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      displayedText
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="=parent.plainText" ID="ID_1591214730" CREATED="1613949707652" MODIFIED="1613949976197"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      parent.plainText
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="=parent.shortText" ID="ID_1303741468" CREATED="1613949707652" MODIFIED="1613949976198"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      shortText
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="=parent.transformedText" ID="ID_1111131607" CREATED="1613949707652" MODIFIED="1613949976201"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      transformedText
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="=parent.value" ID="ID_1326371441" CREATED="1613949707652" MODIFIED="1613950020486"><richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      value
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="big image" ID="ID_821961168" CREATED="1613946347131" MODIFIED="1615386861725" VGAP_QUANTITY="37.5 pt">
<node TEXT="sqlJoins_7.png" ID="ID_738145198" CREATED="1613946494933" MODIFIED="1615494685886" LINK="file:/C:/Users/Edo/Downloads/sqlJoins_7.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= &quot;![]($node.link.uri)&quot;</text>
</richcontent>
</node>
<node TEXT="sqlJoins_7.png" ID="ID_1605279122" CREATED="1613946494933" MODIFIED="1613946656390" LINK="file:/C:/Users/Edo/Downloads/sqlJoins_7.png" MAX_WIDTH="5 cm"><richcontent CONTENT-TYPE="xml/markdown" TYPE="DETAILS" HIDDEN="true">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = &quot;![]($node.link.uri)&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="= &quot;![]($node.link.uri)&quot;" ID="ID_1693399779" CREATED="1613946494933" MODIFIED="1615386861723" LINK="file:/C:/Users/Edo/Downloads/sqlJoins_7.png" FORMAT="markdownPatternFormat" MAX_WIDTH="10 cm"/>
</node>
</node>
<node TEXT="note with formula, script and MarkDown v03" POSITION="right" ID="ID_925151699" CREATED="1613660526836" MODIFIED="1615470907179" STYLE="bubble">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
import org.freeplane.features.text.TextController
import org.freeplane.features.note.NoteController

// ---- definitions ----
    headersToUnderline  = node[&apos;headersToUnderline&apos; ].num0
    hideFolded          = node[&apos;hideFolded&apos;         ].bool
    headerNumbering     = node[&apos;headerNumbering&apos;    ].bool
    
    markdown = [
        format      : &apos;markdownPatternFormat&apos;,
        contentType : &apos;markdown&apos;
    ]
    
    icon = [
        leaf            : &apos;emoji-1F343&apos; ,
        ignoreNode      : &apos;emoji-26D4&apos;  ,
        ignoreContent   : &apos;emoji-1F648&apos;
    ]

// ---- main -----
    reportText = new StringBuilder()
    
    def nodos = node.children.findAll{!ignoreNode(it)}
    def i = 0
    nodos.each{nodo -&gt;
        def sum = linea(nodo,1,&apos;&apos;,i)
        i += sum
    }
    
    return reportText.toString()

// ---- methods ----
def linea(n,t,numParent,h){
    if (!isLeaf(n)){ // es padre (título)
        def hNum = numParent
        def m = 0
        if(!ignoreContent(n)){ 
            hNum = headerNumber(numParent,h)
            m = 1
            reportText 
                &lt;&lt; &quot;#&quot; * t  + separated(hNum) + n.text + &apos;\n\n&apos;
                &lt;&lt; ( t &lt;= headersToUnderline?&apos;-----\n\n&apos;:&apos;&apos; )
                &lt;&lt; DetailsAndNotes(n) 
        }
        def k = 0
        n.children.findAll{!ignoreNode(it)}.each{nd -&gt;
            def sum = linea(nd,t + m, hNum, k)
            k += sum
        }
        return 1
    } else { //es nodo final (leaf)
        if(!ignoreContent(n)){
            def detailsAndNotes = DetailsAndNotes(n)
            def objeto = n.externalObject
            def usarTexto = (!detailsAndNotes &amp;&amp; !objeto)//?true:false
            reportText 
                &lt;&lt; (usarTexto?(n.value.toString() + &apos;\n\n&apos;):&apos;&apos;)
                &lt;&lt; detailsAndNotes
                &lt;&lt; (objeto?&quot;![${n.details}](${objeto.uri}) \n\n&quot;:&apos;&apos;)
        }
        return 0
    }
}

def headerNumber(p,j){
    if (!headerNumbering) return &apos;&apos;
    return (p + (j+1).toString() +&apos;.&apos;)  
}

def separated(w){
    return &apos; &apos; + (w?(w + &apos; &apos;):&apos;&apos;)
}

def DetailsAndNotes(m) {
    def details = m.details
    def notes = m.note
    def addContent = new StringBuilder()

    if (details) {
        addContent 
            &lt;&lt; &apos;\n\n&apos; + details + &apos;\n\n&apos;
    }
    if (notes) {
        addContent
            &lt;&lt; &apos;\n\n&apos; + notes + &apos;  \n\n&apos;
     }
    return addContent.toString()
}

def isLeaf(n){
    return (n.isLeaf() 
        || n.icons.contains(icon.leaf) 
        || !n.children.any{!ignoreNode(it)})
}

def ignoreNode(n){
    return (n.icons.contains(icon.ignoreNode) || (hideFolded &amp;&amp; n.isFolded()))
}

def ignoreContent(n){
    return (n.icons.contains(icon.ignoreContent))
}


// -------- pseudo API -------------------------------------
// (Not used yet)

// --- isMarkdown?
def isTextMarkdown(n){
    return (n.format == markdown.format)    
}

def isDetailsMarkdown(n){
    return (detailsTypeContent(n) == markdown.contentType)
}
    
def isNoteMarkdown(n){
    return (noteTypeContent(n) == markdown.contentType)    
}

// --- typeContent

def detailsTypeContent(n){
    NoteController.getController().getNoteContentType(n.delegate)
}

def noteTypeContent(n){
    return TextController.getController().getDetailsContentType(n.delegate)
}

// --- isFormula?
def isTextFormula(n){
    return (n.plainText.take(1) == &apos;=&apos; &amp;&amp; n.plainText.size()&gt;=2)
}

def isDetailsFormula(n){
    return (n.detailsText.take(1) == &apos;=&apos; &amp;&amp; n.detailsText.size()&gt;=2)
}

def isNoteFormula(n){
    return (n.noteText.take(1) == &apos;=&apos; &amp;&amp; n.noteText.size()&gt;=2)
}
</text>
</richcontent>
<attribute_layout NAME_WIDTH="132.75 pt"/>
<attribute NAME="headersToUnderline" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      ve folded
    </p>
  </body>
</html></richcontent>
<node TEXT="opciones" ID="ID_595668791" CREATED="1615468601333" MODIFIED="1615468682531">
<icon BUILTIN="emoji-26D4"/>
<node TEXT="ignorar nodo y descendencia" ID="ID_493385973" CREATED="1615412911818" MODIFIED="1615468627588" ICON_SIZE="12 pt">
<icon BUILTIN="emoji-26D4"/>
<richcontent CONTENT-TYPE="plain/" TYPE="DETAILS" HIDDEN="true">
    <text>=node.icons.icons</text>
</richcontent>
</node>
<node TEXT="tratar como final (leaf)" ID="ID_191746858" CREATED="1615412946045" MODIFIED="1615468630268" ICON_SIZE="12 pt">
<icon BUILTIN="emoji-1F343"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS" HIDDEN="true">
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
<node TEXT="ignorar nodo" ID="ID_1105347745" CREATED="1615412999118" MODIFIED="1615413705913" ICON_SIZE="12 pt">
<icon BUILTIN="emoji-1F648"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS" HIDDEN="true">
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
</node>
<node TEXT="xx" ID="ID_1381208330" CREATED="1615468708721" MODIFIED="1615468720904">
<icon BUILTIN="emoji-26D4"/>
<node TEXT="xx" ID="ID_712346560" CREATED="1615468717376" MODIFIED="1615468718087"/>
<node TEXT="yyyyy" ID="ID_1714512445" CREATED="1615468757021" MODIFIED="1615468761051">
<node TEXT="hideFolded" ID="ID_1389048312" CREATED="1615468857422" MODIFIED="1615468910351"/>
<node TEXT="true" ID="ID_318368035" CREATED="1615468910357" MODIFIED="1615468910359"/>
<node TEXT="headerNumbering" ID="ID_280550750" CREATED="1615468910355" MODIFIED="1615468910356"/>
<node TEXT="false" ID="ID_779860603" CREATED="1615468910353" MODIFIED="1615468910354"/>
</node>
</node>
<node TEXT="Title" ID="ID_1855982453" CREATED="1613664753546" MODIFIED="1615415683707">
<node TEXT="this is the introduction paragraph" ID="ID_356508708" CREATED="1613664764355" MODIFIED="1613664791601"/>
<node TEXT="subtitle 1" ID="ID_803990963" CREATED="1613664794663" MODIFIED="1613664802448">
<node TEXT="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." ID="ID_980456945" CREATED="1613664875910" MODIFIED="1613664903984"/>
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1814503733" CREATED="1613664903997" MODIFIED="1613664904001"/>
<node TEXT="Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur." ID="ID_469316287" CREATED="1613664903992" MODIFIED="1613664903994"/>
<node TEXT="Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ID="ID_664379086" CREATED="1613664903988" MODIFIED="1613664903990"/>
</node>
<node TEXT="subtitle 2" ID="ID_299992525" CREATED="1613664794663" MODIFIED="1615470609740">
<node TEXT="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." ID="ID_1848868964" CREATED="1613664875910" MODIFIED="1613664903984"/>
<node TEXT="xxxx" ID="ID_495905326" CREATED="1615470578178" MODIFIED="1615470662302">
<icon BUILTIN="emoji-1F648"/>
<node TEXT="Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ID="ID_170976105" CREATED="1613664903988" MODIFIED="1613664903990"/>
<node TEXT="subsubTitle 2.1" ID="ID_293750186" CREATED="1613664929634" MODIFIED="1613665826315">
<node TEXT="This node has *content Style* = **MarkDown**&#xa;&#xa;![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)" ID="ID_1446836934" CREATED="1613918293599" MODIFIED="1613950101118" FORMAT="markdownPatternFormat"/>
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1362272333" CREATED="1613664903997" MODIFIED="1613664904001"/>
<node TEXT="imagen chuncho" ID="ID_458846946" CREATED="1613925411807" MODIFIED="1615415022558" LINK="file:/C:/Users/Edo/Downloads/chuychu.jpg" FORMAT="markdownPatternFormat"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>= &quot;![]($node.link.uri)&quot;</text>
</richcontent>
</node>
<node TEXT="Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur." ID="ID_114630089" CREATED="1613664903992" MODIFIED="1613664903994"/>
</node>
</node>
<node TEXT="subsubTitle 2.2" ID="ID_1318356186" CREATED="1613664929634" MODIFIED="1615418265847">
<node TEXT="linked image from Web" FOLDED="true" ID="ID_595403498" CREATED="1613921731151" MODIFIED="1615416848922">
<hook URI="https://cldup.com/dTxpPi9lDf.thumb.png" SIZE="1.0" NAME="ExternalObject"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
<node TEXT="ejemplo de fórmula" ID="ID_93488836" CREATED="1615415121818" MODIFIED="1615416808488">
<icon BUILTIN="emoji-26D4"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def n = parent

reportText = new StringBuilder()

if(n.externalObject){
    reportText
        &lt;&lt; &quot;![${n.text}](${n.externalObject.uri})&quot;
    }//.uri

return reportText.toString()</text>
</richcontent>
</node>
</node>
<node TEXT="linked image from Disk" FOLDED="true" ID="ID_991196863" CREATED="1613921731151" MODIFIED="1615416978215">
<icon BUILTIN="emoji-1F343"/>
<hook URI="file:/C:/Users/Edo/Downloads/sqlJoins_7.png" SIZE="0.3768132" NAME="ExternalObject"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
<richcontent CONTENT-TYPE="xml/" TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      SQL Tables
    </p>
  </body>
</html></richcontent>
<node TEXT="ejemplo de fórmula" ID="ID_88315743" CREATED="1615415121818" MODIFIED="1615416966985"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
    <text>=
def n = parent

reportText = new StringBuilder()

if(n.externalObject){
    reportText
        &lt;&lt; &quot;![${n.text}](${n.externalObject.uri})&quot;
    }//.uri

return reportText.toString()</text>
</richcontent>
</node>
</node>
<node TEXT="Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ID="ID_681009864" CREATED="1613664903988" MODIFIED="1613664903990"/>
<node TEXT="subsubTitle 2.2.1" ID="ID_217467268" CREATED="1613664929634" MODIFIED="1613918259904">
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_500765605" CREATED="1613664903997" MODIFIED="1613664904001"/>
<node TEXT="Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur." ID="ID_1961693891" CREATED="1613664903992" MODIFIED="1613664903994"/>
<node TEXT="subsubTitle 2.2.2.1" FOLDED="true" ID="ID_768410171" CREATED="1613664929634" MODIFIED="1613919446930">
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_1357427623" CREATED="1613664903997" MODIFIED="1613664904001"/>
<node TEXT="subsubTitle 2.2.2.2.1" FOLDED="true" ID="ID_1862331117" CREATED="1613664929634" MODIFIED="1613919454328">
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_520673938" CREATED="1613664903997" MODIFIED="1613664904001"/>
</node>
</node>
</node>
<node TEXT="subsubTitle 2.2.2" ID="ID_1103187153" CREATED="1613664929634" MODIFIED="1615470983556">
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_268921018" CREATED="1613664903997" MODIFIED="1613664904001"/>
</node>
</node>
</node>
<node TEXT="Conclusions" ID="ID_209142636" CREATED="1613664811350" MODIFIED="1613666649540"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/">
    <text>= &apos;a&apos; * 5</text>
</richcontent>
<node TEXT="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." ID="ID_1848774850" CREATED="1613664875910" MODIFIED="1613664903984"/>
<node TEXT="Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat." ID="ID_565057695" CREATED="1613664903997" MODIFIED="1613664904001"/>
</node>
</node>
</node>
<node TEXT="iconos especiales" POSITION="right" ID="ID_797010700" CREATED="1615412898814" MODIFIED="1615412909833" STYLE="bubble">
<edge COLOR="#ff0000"/>
<node TEXT="ignorar nodo y descendencia" ID="ID_1457086637" CREATED="1615412911818" MODIFIED="1615413705910" ICON_SIZE="12 pt">
<icon BUILTIN="closed"/>
<icon BUILTIN="emoji-26D4"/>
<richcontent CONTENT-TYPE="plain/" TYPE="DETAILS">
    <text>=node.icons.icons</text>
</richcontent>
</node>
<node TEXT="tratar como final (leaf)" ID="ID_11648641" CREATED="1615412946045" MODIFIED="1615413705913" ICON_SIZE="12 pt">
<icon BUILTIN="emoji-1F512"/>
<icon BUILTIN="emoji-1F343"/>
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
<node TEXT="ignorar nodo" ID="ID_264994927" CREATED="1615412999118" MODIFIED="1615413705913" ICON_SIZE="12 pt">
<icon BUILTIN="emoji-1F648"/>
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
</node>
</node>
</map>
