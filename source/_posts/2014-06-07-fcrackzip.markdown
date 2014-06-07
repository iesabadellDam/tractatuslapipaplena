---
layout: post
title: "fcrackzip"
date: 2014-06-07 07:10
comments: true
categories: 
---
Craquear zips protegidos

>$ fcrackzip -c aA1 -l 5 archivo_protegido.zip

>$ fcrackzip -b -c a -u -l 1-6 archivo_protegido.zip

-c aA1!  (Prueba minúsculas, mayúsculas, números y caracteres especiales [!:$%&/()=?{[]}+*~#])

-c a (Que pruebe solo minúsculas de la a a la z)

-l 3-5  (Entre 3 y 5 caracteres)

-b  (fuerza bruta)

-u  (utilice unzip para eliminar contraseñas incorrectas)

