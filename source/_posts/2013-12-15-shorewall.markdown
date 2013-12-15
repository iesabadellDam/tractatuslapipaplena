---
layout: post
title: "shorewall"
date: 2013-12-15 18:19
comments: true
categories: 
---
Cortafuegos.

>~# shorewall check (Chequea los archivos de configuración. Si finaliza con el mensaje "Shorewall configuration verified" todo está correcto)

>~# shorewall start (Arrancar el cortafuegos. "stop" para parar y "restart" para reiniciar)

>~# shorewall safe-start (Arrancar de forma segura. Aplicable tambien a safe-restart)

>~# shorewall clear (Desactivar todas las reglas de filtrado y enrutado)

>~# shorewall status (Ver el estado del firewall)

Configuración:

>~# nano /etc/default/shorewall

startup=1 (Aplicar las reglas al iniciar el sistema)

>~# nano /etc/shorewall/rules

Especificar los protocolos que se permitirán acceder a nuestra máquina des de el exterior:

SSH/ACCEPT	net	$FW

Equivalente a:

ACCEPT		net	$FW	tcp	22

Otro ejemplo:

Web/ACCEPT	net	$FW

Equivalente a:

ACCEPT		net	$FW	tcp	80

Otro para ftp:

FTP/ACCEPT	net	$FW

Equivalente a:

ACCEPT		net	$FW	tcp	21

Las opciones pueden ser DROP, ACCEPT y REJECT

Otros archivos de configuración:

/etc/shorewall/policy

/etc/shorewall/interfaces

/etc/shorewall/zones

