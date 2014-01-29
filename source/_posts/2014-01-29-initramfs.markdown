---
layout: post
title: "initramfs"
date: 2014-01-29 18:31
comments: true
categories: 
---
Problemas durante el arranque. Consiste en un fallo de lectura de los controladores ide de discos duros por parte del kernel del sistema operativo que no logra reconocer dichos drivers. Arrancar con un livecd o pulsando “e” para editar la opción cuando salga el menu en grub: 

>\# gedit /boot/grub/menu.lst 

Y al final de la linea del kernel poner: rootdelay=90 

Otras soluciones propuestas (sustituir el rootdelay=90 por):

pci=nomsi 

all_generix_ide

