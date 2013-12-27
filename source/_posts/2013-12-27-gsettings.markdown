---
layout: post
title: "gsettings"
date: 2013-12-27 19:41
comments: true
categories: 
---
Herramienta de configuración. Equivalente a gconftool-2 [gconf-editor] pero para gnome3 [dconf-editor]

>$ gsettings set com.canonical.indicator.session show-real-name-on-panel false (Borrar el nombre del panel de unity)

>$ gsettings set com.canonical.indicator.sound blacklisted-media-players "['xmms2']" (añadir aplicaciones en el menú de sonido)

Opciones 

help (Muestra informacion) 

list-schemas (Lista de esquemas instalados) 

list-relocatable-schemas (Lista los que pueden ser modificados) 

list-keys (Lista las claves de un esquema)

list-children	 (lista los procesos hijos de un esquema) 

list-recursively (Lista claves y valores recursivamente) 

range (Consulta el rango de la clave) 

get (Obtine el valor de una clave)

set (Establece el valor de una clave) 

reset (Reinicia el valor de la clave) 

reset-recursively (Reinicia los valores de todo un esquema)

writable (Comprueba si un clave es modificable)

monitor (Hace un seguimiento por si hay cambios) 

