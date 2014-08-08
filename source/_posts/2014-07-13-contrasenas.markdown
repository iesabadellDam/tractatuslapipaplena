---
layout: post
title: "contraseñas"
date: 2014-07-13 16:48
comments: true
categories: 
---
1.-

Eliminar contraseña de root. Iniciar sesión con un live-cd y montar la partición del discon duro [suponemos /dev/sda2]

	# mount /dev/sda2 /media/sda2

	# gedit /dev/sda2/etc/passwd

Y en la linea: root:x:0:0:root/root:/bin/bash

Borrar la “x”, dejandola asi: root::0:0:root/root:/bin/bash y repetir la operación con el usuario normal.

Reiniciar

Activar  root en gdm [parecido con otros selectores de sesión: lightdm, xdm...]

	# gedit /etc/gdm/gdm.conf

Cambiar la linea:  AllowRoot=false   por AllowRoot=true

	# passwd root

Entrar la contraseña

2.-

Cambiar el tiempo en que el sistema "olvidará" la contraseña después de un sudo:

	# nano /etc/sudoers

Y añadir la línea: Defaults timestamp_timeout = 5

Donde el 5 es el tiempo en minutos que la contraseña será guardada.

3.-

Otra forma para cuando se pierde la contraseña

Entrar con un cd live y visualizar /etc/shadow del sistema instalado y buscar el  usuario. La estructura es parecida a:

pepe:$1$YpVPtTE9$jNPGevJ8IjHyAqh0h04V4.:13277:0:99999:7:::

Borrar lo que sigue al nombre del usuario para que quede:

pepe::13277:0:99999:7:::

de este modo el usuario no tendrá contraseña y cuando se pida, dar al intro.  Tras reiniciar, cuando aparezca el menu de grub, situarse con el cursor en la línea del kernel que se quiera usar. Pulsar 'e' para editar la entrada y editar la línea kernel [pulsando 'e' de nuevo]. Añadir al final de la línea lo siguiente:

init=/bin/bash

Esto hace que el sistema arranque una shell root sin pedir password. Es posible que el teclado esté en inglés. Pulsar 'b' para comenzar el arranque del kernel. La partición raíz suele montarse como sólo lectura, asi que se deberá montar como lectura/escritura:

>\# mount -o remount,rw /dev/hda2

Por último, cambiar la clave de root ejecutando:

>\# passwd root

4.-

Establecer norma en el sistema de que la contraseña tenga como nímino 8 caracteres:

>\# nano /etc/pam.d/common-password

Y dejar la linea:

	password        [success=2 default=ignore]      pam_unix.so obscure sha512 min=8

5.-

Página donde comprobar la fortaleza de una contraseña: <https://howsecureismypassword.net/>

