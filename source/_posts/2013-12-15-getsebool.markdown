---
layout: post
title: "getsebool"
date: 2013-12-15 15:42
comments: true
categories: 
---
Permite listar polí­ticas y determinar si estan activas o inactivas en SELinux, implementación de seguridad para GNU/Linux que provee una variedad de políticas de seguridad a través del uso de módulos de Seguridad en el nucleo de Linux. Ver setsebool

># getsebool -a (Lista todas las políticas, activa o inactivas)

># getsebool -a | grep ftp (conocer que polí­ticas que incluyan la cadena ftp están activas)

Para el servicio de FTP las políticas serían:

allow_ftpd_anon_write (Permite a usuarios anónimos escribir en el servidor)

allow_ftpd_full_access (Permite lectura y escritura sobre los archivos del servidor)

allow_ftpd_use_cifs (Permite transferencias de datos desde CIFS)

allow_ftpd_use_nfs (Permite transferencias de datos desde NFS)

ftp_home_dir (Permite a usuarios locales acceder a sus directorios de inicio)

