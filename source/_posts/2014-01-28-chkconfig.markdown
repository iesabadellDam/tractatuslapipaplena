---
layout: post
title: "chkconfig"
date: 2014-01-28 17:49
comments: true
categories: 
---
Para activar y desactivar servicios, ver su estado y runlevel

>$ chkconfig --list (muestra listado de todos los servicios y nivel de ejecución)

>$ chkconfig --list apache2 (muestra nivel de ejecución del especificado)

>$ chkconfig --level 35 apache2 on (Para arrancar apache2 con runlevel 3 y5)

>$ chkconfig --level 345 nscd off (Desactivar nscd en los runlevel 3, 4 y 5)

>$ chkconfig --del sshd  (Quitar un servicio del arranque)

>$ chkconfig smb  (Indica si el servicio está activo o inactivo)

