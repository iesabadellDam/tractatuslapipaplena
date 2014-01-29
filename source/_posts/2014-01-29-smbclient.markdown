---
layout: post
title: "smbclient"
date: 2014-01-29 18:34
comments: true
categories: 
---
Conectar recursos compartidos de windows desde linux.

>$ smbclient //192.168.1.155/compartido -U usuario (Después de ingresar usuario y contraseña entra en el prompt del recurso compartido)

>$ smbclient -L //192.168.1.155 (Ver los recursos compartidos de la IP especificada.

1.-

Para montarlo automaticamente:

Entrar en el /etc/fstab la siguiente linea:

//192.168.1.155/compartido /media/compartido cifs username=NOMBRE, password=CONTRASEÑA,user

