---
layout: post
title: "descriptor"
date: 2014-07-13 16:48
comments: true
categories: 
---
Toda aplicación tiene siempre tres descriptores de fichero abiertos, el 0 para la entrada estándar [stdin], el 1 para la salida estándar [stdout], y el 2 para la salida de errores estándar [stderr]. Del 3 al 9 son descriptores adicionales [ver tuberias]. En el ejemplo:

>$ ls -a >> listado.txt

La salida estándart [descriptor 1] se envia al fichero listado.txt, consecuentemente en pantalla no veremos nada. En el caso:

>$ ls -zy >> listado.txt

El error [descriptor 2] se mostrará por pantalla y listado.txt permanecerá vacio. Para redirigir el error [descriptor 2 ]al fichero listado.txt [descriptor 1]:

>$ ls -zy >> listado.txt 2>&1

