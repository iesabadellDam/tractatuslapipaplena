---
layout: post
title: "honeyproxy"
date: 2014-01-27 18:33
comments: true
categories: 
---
[python-pip]

Analiza el tráfico web. Instalación:

>\# pip install pyOpenSSL pyasn1 Twisted Autobahn

>$ git clone --recursive git://github.com/mhils/HoneyProxy.git

>$ cd HoneyProxy

>\# python honeyproxy.py --no-gui -a 192.168.1.15 (Arrancar el servicio)

	HoneyProxy has been started!

	Configuration Details (normal users: ignore):

	GUI: http://honey:zhw78b35ioynhg8vr4jcfmn5f326d4e4@localhost:8081/app/

	Proxy Address: 192.168.1.15:8080

	WebSocket Port: 8082

	Auth user: honey

	Auth key: zhw78b35ioynhg8vr4jcfmn5f326d4e4

Una vez instalado y arrancado el servicio, configurar el navegador para su uso en Editar/Preferencias/Avanzado/Red/Configurar la conexión, clicar en "Configuración manual del proxy" y en servidor intermediario de HTTP porner la ip de la máquina local o remota puesta al arrancar la aplicación [192.168.1.15 en este caso] y el puerto 8080. Los informes, colocando en la barra de navegación la dirección que muestra al arrancar el servicio, en este caso: http://honey:zhw78b35ioynhg8vr4jcfmn5f326d4e4@localhost:8081/app/ (usuario: honey y key: zhw78b35ioynhg8vr4jcfmn5f326d4e4). Por defecto los informes se guardan en ./dump/sites. Para parar el servicio, matar el proceso:

	$ ps aux | grep honeyproxy

	$ kill -9 PID

