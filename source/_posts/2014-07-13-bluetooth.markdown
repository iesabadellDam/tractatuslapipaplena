---
layout: post
title: "bluetooth"
date: 2014-07-13 16:47
comments: true
categories: 
---
[gnome-bluetooth bluez-utils bluez-passkey-gnome bluez-pin]. Enviar archivos a dispositivos externos.

>$ hcitool scan  (buscar dispositivo)

>$ sdptool browse XX:XX:XX:XX:XX:XX (Con su identificador buscar el canal a utilizar)

>$ obexftp -b XX:XX:XX:XX:XX:XX -B 2 -p foto.jpg  (mandar el archivo)

Opciones

	-b	indica el identificador del dispositivo.

	-B	canal.

	-p	Archivo a enviar.

En el dispositivo deberemos aceptar la transferencia

1.-

En /etc/bluetooth/pin introducimos la clave de acceso, normalmente 1234.

>\# /etc/init.d/bluetooth restart    (reiniciar el demonio)

Activar el bluetooth del móvil y verificar con:

>\# hcitool scan

