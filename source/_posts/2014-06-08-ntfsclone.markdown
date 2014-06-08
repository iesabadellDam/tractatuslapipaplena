---
layout: post
title: "ntfsclone"
date: 2014-06-08 08:26
comments: true
categories: 
---
[ntfsprogs]. Permite la creación de particiones NTFS de Windows y su posterior restauración

>\# ntfsclone -s -o imagen.img /dev/sda1 (crea el fichero imagen.img de la partición /dev/sda1)

>\# ntfsclone -r -O /dev/sda1 imagen.img (Restaura la imagen en la partición que queramos)

