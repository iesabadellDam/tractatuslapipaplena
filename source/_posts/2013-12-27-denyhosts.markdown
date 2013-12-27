---
layout: post
title: "denyhosts"
date: 2013-12-27 19:40
comments: true
categories: 
---
Protege contra ataques. 

Configuración: 

>\# nano /etc/denyhosts.conf 

Algunas opciones: 

SECURE_LOG = /var/log/auth.log (Ruta a los logs) 

DENY_THRESHOLD_INVALID = 5 (Intentos fallidos permitidos con una cuenta que no existe) 

DENY_THRESHOLD_VALID = 5 (Intentos falllidos con usuarios validos) 

PURGE_DENY =5d (Tiempo de baneo de una IP. 5 dias en este caso) 

BLOCK_SERVICE = sshd (Servicios que queremos proteger [ sshd, ALL...) 

Nota.- Tambien es posible arrancar el servicio con la opción "purge"  [/etc/init.d/denyhosts start --purge] para eliminar las ips bloqueadas y que se muestran en /etc/hosts.deny 

