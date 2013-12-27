---
layout: post
title: "gnome-keyring"
date: 2013-12-27 19:41
comments: true
categories: 
---
Demonio para gestionar de manera segura las credenciales de acceso del usuario, como los nombre de usuario y las contraseñas. Usando algunos escritorios la consola puede mostrar el error:

WARNING: gnome-keyring:: couldn't connect to: /home/USER/.cache/keyring-s1KHzb/pkcs11: El fichero o directorio no existe 

Para resolverlo:

>\# nano /etc/xdg/autostart/gnome-keyring-pkcs11.desktop 

Buscar la linea: 

OnlyShowIn=GNOME;Unity; 

Y añadir el escritorio usado: 

OnlyShowIn=GNOME;Unity;LXDE;Xfce 

Reiniciar

