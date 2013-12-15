---
layout: post
title: "darkhttpd"
date: 2013-12-15 15:41
comments: true
categories: 
---
Servidor de archivos via web. Acceso por navegador con http://url_o_ip:puerto.

>$ darkhttp /home/usuario/share --port 12001 --daemon (Directorio, puerto de escucha 12001 y dejando como demonio. Matar con killall darkhttpd)

>$ darkhttp /home/usuario/share --port 12001 --log  archivo  --chroot  (Sin dejar en background. Creando un archivo con las incidencias y bloqueando el servidor en el directorio especificado. Matar con ctrl+c)

