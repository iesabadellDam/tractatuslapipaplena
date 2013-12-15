---
layout: post
title: "composite"
date: 2013-12-15 18:35
comments: true
categories: 
---
Mezclar dos imágenes por consola

>~$ composite -geometry 96x96+250+70 delante.jpg fondo.jpg imagen.jpg

>~$ composite -dissolve 50 -gravity Center una.png  dos.png salida.png

>~$ composite -tile una.png dos.png salida.png (Cubre la dos.png con imagenes una.png

>~$ composite -dissolve 60% una.jpg dos.jpg output (transparencia del 60%)

>~$ composite -blend 0x0 -gravity south uno.png dos.png -alpha set salida.png (funde dos imagenes en una transparencia completa)

>~$ composite -blend 0x80 imagen -size 70x46 xc:'#808080' -alpha on salida (controlar la transprencia de una imagen)

>~$ composite -watermark 20% -gravity SouthWest marca.png imagen salida.png (Poner una marca de agua 20% difuminada abajo a la izquierda)

opciones:

dissolve.- Indica el grado de fusión entre una y otra imagen.

gravity .- Indica dónde se mezclan las imágenes. Valores: SorthWest, North, NorthEast, West, Center, East, SouthWest, South y SouthEast

