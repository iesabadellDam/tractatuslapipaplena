---
layout: post
title: "bootchart"
date: 2014-07-13 16:47
comments: true
categories: 
---
Ver el proceso de arranque en una imagen png. En la entrada del kernel en el grub colocar: init=/sbin/bootchartd

Ejemplo:

	title  Arch Linux

	root   (hd0,0)

	kernel /boot/vmlinuz26 root=/dev/sda2 init=/sbin/bootchartd ro

	initrd /boot/kernel26.img

Cuando el sistema haya arrancado lanzar:

>\# bootchart-render

	Parsing /var/log/bootchart.tgz

	Wrote image: ./bootchart.png

Lo que convertirá el ilegible archivo bootchart.tgz en una imágen en nuestro home. El archivo de configuración en /etc/bootchartd.conf

