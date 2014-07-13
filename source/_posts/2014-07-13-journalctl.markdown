---
layout: post
title: "journalctl"
date: 2014-07-13 08:02
comments: true
categories: 
---
Sistema de registro [log] propio de systemd.

>\# journalctl (Leer el registro)

>\# journalctl -b (Mostrar todos los mesajes de arranque)

>\# journalctl -b -0 (Muestra los mensajes del arranque actual)

>\# journalctl -b -1 (Muestra los mensajes del arranque anterior)

>\# journalctl -b -2 (Muestra los mensajes desde los dos últimos arranques)

>\# journalctl -f (Seguir los mensajes nuevos)

>\# journalctl _PID=1 (Mostrar mensajes por su PID)

>\# journalctl -u netcfg (Mostrar mensajes de una unidad especifica)

1.-

Hacer que el demonio syslog funcione con journal

>\# systemctl enable syslog-ng

