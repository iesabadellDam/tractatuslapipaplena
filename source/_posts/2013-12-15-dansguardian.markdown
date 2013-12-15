---
layout: post
title: "dansguardian"
date: 2013-12-15 15:41
comments: true
categories: 
---
Filtro de contenidos web (cliente) que trabaja conjuntamente con el servidor proxy squid (servidor).

Adaptar el archivo de configuración:

># nano /etc/dansguardian/dansguardian.conf

Algunos parámetros a especificar (caso de no estarlo):

language = 'spanish'

reportinglevel = 3 #valores de 1, 2 y 3

filterport = 8080

proxyip = 127.0.0.1 #La misma ip del proxy squid

proxyport = 3128

Guardar el archivo.

El listado de conceptos (ip, nombre de dominio, frases... ) por los que se puede banear y conceptos excluidos en:

># ls /etc/dansguardian/lists/

Algunos de los más usuales:

bannedextensionlist (extensiones no permitidas)

banneriplist (listado de ips no permitidas)

bannedmimetypelist (Tipos MIME no permitidos)

bannedregexpurllist  (Listado de expresiones a bloquear)

bannedurllist (Bloquear partes especificas de un sitio)

bannedsitelist (Bloquear sitios)

bannedphraselist (Listado de frases prohibidas encerradas entre < >

exceptionsitelist (Lista de excepciones de sitios)

exceptioniplist (lista de excepciones de direcciones IP)

exceptionuserlist (Lista de excepciones de nombres de usuarios que no serán filtrado)

># /etc/init.d/dansguardian restart

