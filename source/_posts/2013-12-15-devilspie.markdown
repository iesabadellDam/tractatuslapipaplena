---
layout: post
title: "devilspie"
date: 2013-12-15 15:41
comments: true
categories: 
---
Permite especificar el comportamiento de las ventanas para que determinadas aplicaciones se abran en un escritorio concreto. Ha de colocarse en las aplicaciones de inicio.

>$ mkdir .devilspie (Crear el directorio)

Crear por cada aplicación un archivo .ds en el directorio:

>$ nano .devilspie/firefox.ds

Con el siguiente contenido a modo de ejemplo:

(if

(is (application_name) "firefox")

(set_workspace 3)

)

Cada vez que arranquemos firefox, se abrirá en el escritorio número 3.

Para saber el nombre de las aplicaciones que corren en cada escritorio:

>$ nano .devilspie/debug.ds

Con el siguiente contenido:

(debug)

Cuando arranquemos devilspie por consola, nos las mostrará.

