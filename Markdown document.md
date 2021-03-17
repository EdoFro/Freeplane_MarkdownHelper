# Prueba Markdown

-----

## 1. Introducción

-----

Este es el documento de prueba, donde quiero ver si los diferentes tipos de nodosMD funcionan

## 2. Tabla de contenidos

-----

[Prueba Markdown](#Prueba-Markdown)

[1. Introducción](#1-Introducción)

[2. Tabla de contenidos](#2-Tabla-de-contenidos)

[3. Demostraciones](#3-Demostraciones)

[4. Final](#4-Final)

## 3. Demostraciones

-----

### 3.1. webLink(n) (absolute)

[Groovy Switch statement](https://www.tutorialspoint.com/groovy/groovy_switch_statement.htm)

### 3.2. webimageLink(n) (absolute)

![https://github.com/EdoFro/hello-world/raw/master/testFormulaNodeChange.gif](https://github.com/EdoFro/hello-world/raw/master/testFormulaNodeChange.gif)

### 3.3. fileLink(nodo)

[readme.txt](file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/readme.txt)

### 3.4. imageLink(n)

![heros-journey.png](file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/heros-journey.png)

### 3.5. list(n)

* item 1
   * item 3
   * item 3a
   * item 3b
   * item 2
* item 4
   1. item 1
   1. item 2
   1. item 4
* item 3
   * item 3a
   * item 3b

### 3.6. plainTaskList(n)

- [ ] pending task
- [ ] pending task
- [x] finished task
- [ ] **next task**
- [ ] *<del>discarded task</del>*

### 3.7. nestedTaskList(n)

- [ ] pending task
   - [ ] pending task
      - [x] finished task
      - [ ] pending task
   - [ ] pending task
   - [ ] pending task
   - [x] finished task
      - [x] finished task
      - [x] finished task
   - [ ] **next task**
- [x] finished task
   - [x] finished task
   - [x] finished task
      - [x] finished task
      - [x] finished task
   - [ ] *<del>discarded task</del>*
- [ ] **next task**
- [ ] *<del>discarded task</del>*

### 3.8. codeBlock(n)

Code: **'pasar texto a nota e indicar formato Markdown'**

```groovy
// import org.freeplane.features.text.TextController
import org.freeplane.features.note.NoteController


def nodos = c.selecteds

nodos.each{nodo ->
    nodo.note = nodo.text
    setNoteMarkdown(nodo)
}

def setNoteMarkdown(n){
    return NoteController.getController().setNoteContentType(n.delegate, 'markdown')
}
```

### 3.9. text block

En este texto quiero intercalar la imagen ![heros-journey.png](file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/heros-journey.png), el link al archivo [readme.txt](file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/readme.txt) y el link a la página web [Groovy Switch statement](https://www.tutorialspoint.com/groovy/groovy_switch_statement.htm)

y de nuevo [readme.txt](file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/readme.txt) es el link al archivo

es una prueba:

había una vez una cabra, un cerdo y un perro

hola

### 3.10. table(n)

|Nombre|Apellido|Edad|
|----|:----:|----:|
|Gustav|Perez|45|
|Pedro|[readme.txt](file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/readme.txt)|33|
|John|[Groovy Switch statement](https://www.tutorialspoint.com/groovy/groovy_switch_statement.htm)|![heros-journey.png](file:/C:/Users/Edo/Documents/GitHub/Freeplane_MarkdownHelper/ignore/heros-journey.png)|

### 3.11. TOC(n)

[Prueba Markdown](#Prueba-Markdown)

[1. Introducción](#1-Introducción)

[2. Tabla de contenidos](#2-Tabla-de-contenidos)

[3. Demostraciones](#3-Demostraciones)

[4. Final](#4-Final)

### 3.12. horizontal rule

----

### 3.13. Comments

aún no implementado

## 4. Final

-----

Conlusiones

Agradecimientos

ToC

[Prueba Markdown](#Prueba-Markdown)

[1. Introducción](#1-Introducción)

[2. Tabla de contenidos](#2-Tabla-de-contenidos)

[3. Demostraciones](#3-Demostraciones)

[4. Final](#4-Final)