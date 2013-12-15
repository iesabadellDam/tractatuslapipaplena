---
layout: post
title: "ntfsclone"
date: 2013-12-15 18:17
comments: true
categories: 
---
Permite la creación de particiones NTFS de Windows y su posterior restauración

>~# ntfsclone -s -o imagen.img /dev/sda1 (crea el fichero imagen.img de la partición /dev/sda1)

>~# ntfsclone -r -O /dev/sda1 imagen.img (Restaura la imagen en la partición que queramos)

