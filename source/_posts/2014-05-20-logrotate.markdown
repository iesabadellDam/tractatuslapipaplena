---
layout: post
title: "logrotate"
date: 2014-05-20 18:17
comments: true
categories: 
---
Rotación, compresión y correos del sistema de logs.

>\# logrotate -d /etc/logrotate.conf (Verificación del correcto funcionamiento)

>\# logrotate -f /etc/logrotate.conf  (forzar la verificación)

1.-

Por defecto, se añade un numero al fichero rotado. Si queremos que se use la fecha:

>\# nano /etc/logrotate.conf

Añadir la linea:

dateext

