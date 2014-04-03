---
layout: post
title: "grub-mkpasswd-pbkdf2"
date: 2014-04-03 15:35
comments: true
categories: 
---
Crear una contraseña para una entrada de grub2

>\# grub-mkpasswd-pbkdf2

Se entra la contraseña y se confirma. Saldrá una codificación del tipo:

Your PBKDF2 is grub.pbkdf2.sha512.10000.F2FE383.....

Editar grub.cfg

>\# nano /boot/grub/grub.cfg

Colocar al final de la parte comentada (#):

set superusers="NOMBRE_USUARIO"

password_pbkdf2 NOMBRE_USUARIO grub.pbkdf2.sha512.10000.F2FE383.....

Especificando el nombre del usuario y copipasteando la clave codificada que nos ha dado el comando anterior. Finalmente en la entrada [menuentry] que se quiere proteger inmediatamente después de las comillas ['....'] indicando el nombre del sistema operatico:

--users NOMBRE_USUARIO

El resultado sería:

menuentry 'Ubuntu, amb Linux 3.2.0-24-generic (mode de restabliment)' --users NOMBRE_USUARIO --class ubuntu --class gnu-linux ....

