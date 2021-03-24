c.selecteds.each{nodo ->
    nodo.noteText = '="![](${node.link.uri})"'
    nodo.noteContentType ='markdown'
}