---
layout: post
title: "hasciicam"
date: 2013-12-15 15:42
comments: true
categories: 
---
Visualizar la webcam via ascii.

>$ hasciicam -m html -c 50 -o (En modo html, contraste 50 [de 0 a 100. Por defecto 4] y guardar el archivo)

Otras opciones:

-i /dev/xxxx (Especificando dispositivo.Por defecto /dev/video)

-o archivo (Guardar imagen en archivo. Se reescribe según el parámetro -r. Si no se especifica salida, por defecto es hasciicam.html [para html] y hasciicam.txt [para txt])

-r 1 (Refrescar imagen cada 1 segundo. Por defecto 2. No afecta al modo live)

