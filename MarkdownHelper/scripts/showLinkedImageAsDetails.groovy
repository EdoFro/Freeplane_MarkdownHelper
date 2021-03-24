c.selecteds.findAll{it.link?true:false}.each{nodo ->
    nodo.detailsText = '="![](${node.link.uri})"'
    nodo.detailsContentType ='markdown'
}
