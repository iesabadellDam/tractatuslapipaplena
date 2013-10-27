---
layout: post
title: "fsarchiver"
date: 2013-10-27 13:53
comments: true
categories: 
---
Es una herramienta similar a partimage para crear imágenes de una o varias particiones a la vez a un fichero asi como restaurar dichas imágenes más tarde.

>\# fsarchiver savefs /data/imagen.fsa /dev/sda1 (creamos la imagen de la partición).

>\# fsarchiver savefs /data/imagen2.fsa /dev/sda1 /dev/sdb1 (creamos la imagen de dos particiones simultaneamente que seran almacenadas en el mismo fichero).

>\# fsarchiver restfs /data/imagen2.fsa id=0,dest=/dev/sda1 (restauramos la primera partición de la imagen).

>\# fsarchiver restfs /data/imagen2.fsa id=1,dest=/dev/sdb1 (restauramos la segunda partición).

>\# fsarchiver restfs /data/imagen2.fsa id=0,dest=/dev/sda1 id=1,dest=/dev/sdb1 (restauramos a la vez las dos particiones).

