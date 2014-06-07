---
layout: post
title: "interfaces"
date: 2014-06-07 07:11
comments: true
categories: 
---
Archivo de configuración de la red en distros debian.

1.-

Con IP dinámica:

Colocar en el archivo las lineas:

	auto eth0

	iface eth0 inet dhcp

2.-

Con IP fija

Colocar en el archivo las lineas:

	auto eth0

	iface eth0 inet static

	address 192.168.1.10

	gateway 192.168.1.1

	netmask 255.255.255.0

	broadcast 192.168.1.255

Reiniciar el servicio:

>\# ifdown eth0

>\# ifup eth0

Nota.- Solo modificandolo en network-manager no funciona.

3.-

Creación de una segunda dirección IP virtual.

Añadir las siguientes lineas a las de la IP fija:

	auto eth0:1

	iface eth0:1 inet static

	address 192.168.0.15

	netmask 255.255.255.0

	broadcast 192.168.0.255

	gateway 192.168.0.1

Nota.- La instalación de nerwork-manager o wicd para la gestión de redes implica comentar las modificaciones de este archivo o en, en el caso de network-manager, editar:

>\# nano  /etc/NetworkManager/NetworkManager.conf

Y modificar la linea:

[ifupdown]

managed=true

