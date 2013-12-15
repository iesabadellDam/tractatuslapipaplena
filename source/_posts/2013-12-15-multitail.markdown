---
layout: post
title: "multitail"
date: 2013-12-15 18:55
comments: true
categories: 
---
Abrir en una ventana varios procesos tail.

>$ multitail /var/log/messagess /var/log/apache2/access.log

>$ multitail -R 2 -l "netstat -t" -ci green /var/log/apache2/access.log -ci yellow /var/log/apache2/error.log

>$ multitail -a netstat.log -R 2 -l "netstat -t tcp" /var/log/apache/access.log 

Algunas opciones:

-ci red (muestra los log en rojo)

-R 2     (actualiza cada 2 segundo)

-l "comando"  (incluir un comando)

-a archivo.log  (crear un archivo con los resultados del comando)

-I  (muestra el log precedido de la "i" mayuscula en la misma ventana que el anterior)

-s 2   (Mostrar el resultado en dos columnas)

-sn 2,3  (Mostrar 2 resultados en la 1ª columna y 3 en la 2ª)

Notas:

	F1 (abrir la ayuda)

	^g (cerrar ventana ayuda)

	b   (selecionar proceso)

	q   (cerrar ventana proceso)

	v   (Cambiar la orientación horizontal/vertical)

