---
layout: post
title: "mysqladmin"
date: 2014-04-12 07:48
comments: true
categories: 
---
Cliente mysql para realizar operaciones administrativas.

>$ mysqladmin -u root -p version (Conocer la versión instalada)

>$ mysqladmin -u root password 1234 (Establecer un primera contraseña si no la establece al instalar)

>$ mysqladmin -u root -p1234 password 'abcd'(Cambiar la contraseña 1234 por abcd)

>$ mysqladmin -u root -p create BASE_DATOS (Crear una base de datos)

>$ mysqladmin -u root -p drop BASE_DATOS (Borrar una base de datos)

>$ mysqladmin -u root -p status (Mostrar conexiones del servidor mysql)

>$ mysqladmin -u root -p reload (Recargar privilegios)

>$ mysqladmin -u root -p flush-logs (Vuelca todos los logs)

>$ mysqladmin -u root -p flush-tables (Vuelca todas las tablas)

