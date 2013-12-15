---
layout: post
title: "freeradius"
date: 2013-12-15 18:36
comments: true
categories: 
---
[libssl-dev freeradius-mysql freeradius-utils]

Servidor.

Configurar la base de datos:

>~# nano /etc/freeradius/sites-enabled/default

En los apartados "authorize" y "accouting" descomentar las lineas sql

>~# nano /etc/freeradius/radius.conf

Descomentar la linea $INCLUDE sql.conf

Configurar usuario, contraseña y mensaje de bienvenida:

>~# nano /etc/freeradius/users

USUARIO Cleartext-Password := "CONTRASEÑA"

Reply-Message "Entrando en el servidor el usuario %{User_Name}"

Configurar usuario y contraseña del router o punto de acceso:

>~# nano /etc/freeradius/clients.conf

client 192.168.1.0/24 {

secret		= CONTRASEÑA_ROUTER

shortname	= USUARIO_ROUTE

Finalmente entrar en router y colocar la ip del equipo donde hemos instalado el servidor. Reiniciar el servicio.

>~# /etc/init.d/freeradius restart

>~# freeradius -X (Arrancar em modo debug)

>~# radtest USUARIO testing 127.0.0.1 1812 testing123 (Testear si la configuración de un usuario está correcta)

