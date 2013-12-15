---
layout: post
title: "checkrestart"
date: 2013-12-15 18:13
comments: true
categories: 
---
[debian-goodies]

Muestra procesos activos que están utilizando una versión anterior de algún fichero que haya sido actualizado.

$ checkrestart -v

Found 0 processes using old versions of upgraded files

Nota.- Aunque la salida muestre gran cantidad de paquetes [por ejemplo por tener una "testing" o por una actualización del navegador mientras este está activo] no es preciso reiniciar el sistema o la aplicación.

