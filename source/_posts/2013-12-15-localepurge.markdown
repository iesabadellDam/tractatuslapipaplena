---
layout: post
title: "localepurge"
date: 2013-12-15 18:37
comments: true
categories: 
---
Elimina e impide la instalacion de los paquetes de idiomas y páginas man que no hemos escogido.

>~# localepurge

En arch:

>~# nano /etc/locale.nopurge

Comentar la linea:

>~#NEEDSCONFIGFIRST

Y al final del fichero, suprimir o comentar los exsitentes y colocar los de nuestra elección, por ejemplo:

ca_ES.UTF-8

ca_ES.ISO-8859-1

ca_ES.ISO-8859-15@euro

es_ES.UTF-8

es_ES.ISO-8859-1

es_ES.ISO-8859-15@euro

Una vez realizados los ajustes, lanzar la aplicación.

