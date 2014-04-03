---
layout: post
title: "badblocks"
date: 2014-04-03 15:33
comments: true
categories: 
---
[e2fsprogs]. Utilidad para reparar sectores dañados del disco duro o pendrive. Trabajar con la unidad desmontada.

>\# badblocks -s -v -n -f /dev/sda  (recuperar y reparar sectores dañados)

>\# badblocks -w -t random -s -v /dev/sda (Borrar un disco de forma segura)

>\# badblocks -s -w archivo.txt (Borrar de forma segura un archivo [irrecuperable])

>\# badblocks -sv /dev/sdb -o badblocks.log  (crear un informe)

nota.- Terminado el proceso debe formatearse la unidad, pasando a la herramienta los bloques dañados:

>\# mkfs.vfat -l badblocks.log -n usb /dev/sdb  (-n es un nombre que le damos a la unidad)

Opciones

	-s (muestra el progreso)

	-v (modo detallado)

	-n (recupera sectores dañados sin destruir informacion [modo no-destructivo])

	-f (repara los sectores dañados)

	-w (Modo destructivo)

	-t random (escribe de forma aleatoria en el disco)

