---
layout: post
title: "apt-mirror"
date: 2014-05-17 04:43
comments: true
categories: 
---
[apache2]. Configurar un repositorio local. Seguidamente se muestra el proceso:

>$ mkdir repo (Crear el directorio)

>\# nano /etc/apt/mirror.list

Añadir al principio la linea del directorio:

	set base_path /home/USER/repo

>\# apt-mirror (Recargar/actualizar el repositorio)

Crear el enlace para que esté disponible via web:

>$ cd /var/www/html

>$ ln -s /home/USER/distro/mirror/us.archive.ubuntu.com/ubuntu ubuntu

Modificar el sources.list:

>\# nano /etc/apt/sources.list

Añadir la lineas:

	deb http://192.168.1.2/ubuntu trusty universe

	deb http://192.168.1.2/ubuntu trusty main restricted

	deb http://192.168.1.2/ubuntu trusty-updates main restricted

>\# apt-update (Actualizar el cliente)

