# Documento de prueba

## 1. Introducción

El presente documento es una **prueba** para ver si todo esto **funciona**

> ¿realmente funciona?

no sé, lo veremos

## 2. Tabla de contenidos

[Documento de prueba](#Documento-de-prueba)

[1. Introducción](#1-Introducción)

[2. Tabla de contenidos](#2-Tabla-de-contenidos)

[3. Funcionalidades](#3-Funcionalidades)

[3.1. Bótones de Iconos](#31-Bótones-de-Iconos)

[3.2. Links](#32-Links)

[3.3. Listas](#33-Listas)

[3.4. Listas de Tareas](#34-Listas-de-Tareas)

[3.5. Tablas](#35-Tablas)

[3.6. Bloques de código](#36-Bloques-de-código)

[3.7. Comentarios](#37-Comentarios)

[4. Conclusiones](#4-Conclusiones)



## 3. Funcionalidades

A continuación revisaremos cada una de las funcionalidades de este addOn.

### 3.1. Bótones de Iconos

Revisé los diferentes botónes y todos agregan o quitan íconos según su función.

### 3.2. Links

En el siguiente párrafo veremos si la funcionalidad funciona según lo esperado

Aquí podemos ver como el web link [Freeplane API: MenuUtils](http://www.freeplane.org/doc/api/index.html?org/freeplane/core/util/MenuUtils.html) se intercaló en este párrafo.

Aquí en cambio ![Freeplane Icon](https://a.fsdn.com/allura/p/freeplane/icon?1513717476&w=90) intercalamos una imagen Web, ademas de un texto: ESTE TEXTO.

Finalmente también podemos linkear links locales como esta imagen ![dinosaur-5995333_100.png](/tests%20-%20examples/dinosaur-5995333_100.png) y este archivo [plain task list.md](/tests%20-%20examples/plain%20task%20list.md).

Se completa así una prueba exitosa (respecto a links)



### 3.3. Listas

Las listas pueden ser de los siguientes tipos:

* listas planas
* listas planas numeradas
* listas estructuradas
* listas estructuradas numeradas
* listas estructuradas mixtas



La lista anterior es un ejemplo de lista plana.

Pasemos al ejemplo de lista plana numerada usando la misma lista.

1. listas planas
1. listas planas numeradas
1. listas estructuradas
1. listas estructuradas numeradas
1. listas estructuradas mixtas



y ahora el ejemplo de lista estructurada:

* listas planas
   * bullet
   * numeradas
* listas estructuradas
   * bullet
   * numeradas
   * mixtas



lista estructurada numerada:

1. listas planas
   1. bullet
   1. numeradas
1. listas estructuradas
   1. bullet
   1. numeradas
   1. mixtas



lista estructurada mixta:

1. listas planas
   * bullet
   * numeradas
1. listas estructuradas
   * bullet
   * numeradas
   * mixtas



### 3.4. Listas de Tareas

existen dos funcionalidades para agregar listas de tareas:

* listas de tareas planas
* listas de tareas estructuradas



la diferencia entre ambas es que la primera sólo considera las tareas de primer nivel, permitiendo que el usuario agregue muchos más apuntes en ellas que no se publicarán en el documento.

Esto es útil si las tareas son clonadas de otra parte del documento donde realmente son administradas. De esa forma reflejan el estado actual de ellas

Ejemplo de listado de tareas plana:

- [x] Escribir rutinas de cada tipo de nodo
- [x] Llevar a librería
- [x] Generar Diálogo
- [ ] Llevar a librería
- [ ] Escribir mapa de ejemplo / prueba
- [ ] Escribir mapa guía



Las listas de tareas estructuradas muestran en cambio una estructura de tareas y subtareas. Sin embargo, al igual que en el caso anterior, sólo muestran los textos de los nodos indicados como tareas y sus descendientes en esa misma condición.

De esta forma si hay tareas que dependen de un nodo que no está indicado como tarea, ellas quedan aisladas y no son mostradas.

Eso permite al usuario administrar el nivel de detalle que desea sea mostrado en el documento

- [x] Escribir rutinas de cada tipo de nodo
- [x] Llevar a librería
- [x] Generar Diálogo
- [ ] Llevar a librería
   - [x] llevar a librería temporal
   - [ ] hacer pruebas
- [ ] Escribir mapa de ejemplo / prueba
- [ ] Escribir mapa guía



### 3.5. Tablas

También está la funcionalidad para agregar **tablas**

Podemos tener una tabla sencilla come ésta, por ejemplo:

|Nombre|Apellido|Edad|
|----|----|----|
|Pedro|López|43|
|Joe|Murphy|35|
|Anne|Kind|48|
|Hans|Sauer|67|



La cual se puede formatear para que la última columna se alinie a la derecha. Y podemos ademá reordenar las filas para, por ejemplo, ponerlas en orden de edad.

|Nombre|Apellido|Edad|
|----|----|----:|
|Hans|Sauer|67|
|Anne|Kind|48|
|Pedro|López|43|
|Joe|Murphy|35|



Las tablas pueden además contener links y otros tipos de objetos

|Nombre|Apellido|Edad|Comentario / Otro|
|----|----|----:|:----:|
|Hans|Sauer|67| el web link [Freeplane API: MenuUtils](http://www.freeplane.org/doc/api/index.html?org/freeplane/core/util/MenuUtils.html) y este archivo [plain task list.md](/tests%20-%20examples/plain%20task%20list.md).|
|Anne|Kind|48|![Freeplane Icon](https://a.fsdn.com/allura/p/freeplane/icon?1513717476&w=90)|
|Pedro|López|43|![dinosaur-5995333_100.png](/tests%20-%20examples/dinosaur-5995333_100.png)|
|Joe|Murphy|35|Image by <a href="https://pixabay.com/users/prawny-162579/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=5995333">Prawny</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=5995333">Pixabay</a>|



### 3.6. Bloques de código

Por otra parte podemos necesitar publicar bloques de algún código, como por ejemplo

Code: **'example code'**

```groovy
// getting list of icons:
msg = "The icons of the selected node are: ${node.icons.icons}"
ui.informationMessage(msg.toString())
```



### 3.7. Comentarios

También tenemos la posibilidad de agregar párrafos comentados

> Aquí podemos ver como el web link [Freeplane API: MenuUtils](http://www.freeplane.org/doc/api/index.html?org/freeplane/core/util/MenuUtils.html) se intercaló en este párrafo.
> 
> Aquí en cambio ![Freeplane Icon](https://a.fsdn.com/allura/p/freeplane/icon?1513717476&w=90) intercalamos una imagen Web, ademas de un texto: ESTE TEXTO.
> 
> Finalmente también podemos linkear links locales como esta imagen ![dinosaur-5995333_100.png](/tests%20-%20examples/dinosaur-5995333_100.png) y este archivo [plain task list.md](/tests%20-%20examples/plain%20task%20list.md).
> 
> Se completa así una prueba exitosa (respecto a links)
> 
> 

Inclusive podemos agregar listas y otros objetos:

> lista estructurada numerada:
> 
> 1. listas planas
>    1. bullet
>    1. numeradas
> 1. listas estructuradas
>    1. bullet
>    1. numeradas
>    1. mixtas
> 
> 
> 
> lista estructurada mixta:
> 
> 1. listas planas
>    * bullet
>    * numeradas
> 1. listas estructuradas
>    * bullet
>    * numeradas
>    * mixtas
> 
> 
> 
> Las tablas pueden además contener links y otros tipos de objetos
> 
> |Nombre|Apellido|Edad|Comentario / Otro|
> |----|----|----:|:----:|
> |Hans|Sauer|67| el web link [Freeplane API: MenuUtils](http://www.freeplane.org/doc/api/index.html?org/freeplane/core/util/MenuUtils.html) y este archivo [plain task list.md](/tests%20-%20examples/plain%20task%20list.md).|
> |Anne|Kind|48|![Freeplane Icon](https://a.fsdn.com/allura/p/freeplane/icon?1513717476&w=90)|
> |Pedro|López|43|![dinosaur-5995333_100.png](/tests%20-%20examples/dinosaur-5995333_100.png)|
> |Joe|Murphy|35|Image by <a href="https://pixabay.com/users/prawny-162579/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=5995333">Prawny</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=5995333">Pixabay</a>|
> 
> 

Inclusive se podría agregar un documento com comentario dentro de otro:

> # 8. Capitulo Final
> 
> ## 8.1. El encuentro
> 
> Cuando Anja llegó al refugio pudo ver que salía humo por la chimenea.
> 
> Pedro preparaba té caliente para ambos y había extendido el mapa sobre la mesa.
> 
> ...
> 
> ## 8.2. El regreso
> 
> Al amanecer el dinosario seguía allí, junto a las llaves del auto.
> 
> Tomaron cajas y maletas y las subieron al auto. Nadie decía palabra alguna.
> 
> Lo que había pasado estos días había cambiado para siempre su relación.
> 
> Ya en la ciudad se despidieron sonriendo y nunca más se volvieron a contactar.
> 
> 

## 4. Conclusiones

párrafo introductorio

listado de conclusiones

