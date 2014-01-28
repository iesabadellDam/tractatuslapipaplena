---
layout: post
title: "reflector"
date: 2014-01-28 17:52
comments: true
categories: 
---
Optimizador del mirrorlist de pacman.

>\# reflector (Mostrará todos los mirrors de archlinux.org/mirrors/status/json/)

>\# reflector --sort rate -l 10 -f 5 --save /etc/pacman.d/mirrorlist (Que tome los 5 mejores [f] de los 10 más actualizados [l], los ordene por velocidad de descarga [sort] y que sobreescriba el archivo mirrorlist [save])

