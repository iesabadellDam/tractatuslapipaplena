---
layout: post
title: "metapixel"
date: 2014-01-29 18:32
comments: true
categories: 
---
Generar mosaicos de fotos [collage]. 

>$ mkdir collage (Crear el directorio) 

>$ metapixel-prepare --width=10 --height=10 -r Imatges/ collage (Copiar con las medidas introducidas [width y height] desde el directorio de imágenes de forma recursiva [-r] al directorio creado) 

>$ metapixel --metapixel Imagenes/imagen.jpeg destino.jpg --library collage/ (Que coja la imágen.jpg del directorio Imagenes y la convierta en destino.jpg usando el directorio "collage")

