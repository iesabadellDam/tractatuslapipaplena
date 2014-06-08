---
layout: post
title: "adduser.conf"
date: 2014-06-08 08:22
comments: true
categories: 
---
Archivo que contiene las preferencias para los comandos adduser y addgroup [/etc/adduser.conf]. Algunos parámetros importantes:

DSHELL=/bin/bash (shell para nuevos usuarios. Por defecto /bin/bash)

DHOME=/home (donde se crean los directorios de los nuevos usuarios. Por defecto /home.

SKEL=/etc/skel (directorio de donde se copian los ficheros de configuración base del usuario. Por defecto /etc/skel)

FIRST_UID=1000 (Valor inicial del rango de IDs para usuarios normales)

LAST_UID=29999 (Rando final del rango de IDs)

DIR_MODE=0755 (Permisos de entrada de todos los directorios creados)

