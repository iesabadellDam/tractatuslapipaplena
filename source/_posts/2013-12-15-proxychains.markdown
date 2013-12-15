---
layout: post
title: "proxychains"
date: 2013-12-15 18:56
comments: true
categories: 
---
[tor privoxy]

Convierte en anonima la conexión que realiza una aplicación determinada [Ver privoxy]

>\# nano /etc/proxychains.conf

Descomentar o añadir las lineas [usar el mismo puerto que en privoxy]:

>\# defaults set to "tor"

socks4  127.0.0.1 9050

Iniciar tor o, caso de usar vidalia, crear nueva identidad.

>\# /etc/init.d/tor restart

>\# proxychains curl ifconfig.me (Si la ip no es la nuestra indica que todo está correctamente funcionando)

Si configuramos el navegador para usar proxy podemos comprobar su correcto funcionamiento con https://check.torproject.org/

>\# proxychains firefox ifconfig.me (Arrancar el navegador bajo proxy)

>\# proxychains nmap -Pn -sT IP (Lanzar nmap con proxy. -Pn y -sT son para dificultar en lo posible dejar trazas)

Otros ejemplos:

>\# proxychains nessusd -D

>\# proxychains msfconsole

>\# proxychains ssh -D 127.0.0.1:9050 usuario@host

