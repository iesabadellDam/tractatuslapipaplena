---
layout: post
title: "speedtest_cli"
date: 2014-06-07 07:13
comments: true
categories: 
---
script en python que se conecta a un servidor y realiza un test de velocidad de nuestra conexió.

Descarga y permisos:

    $ wget https://raw.github.com/sivel/speedtest-cli/master/speedtest_cli.py

    $ chmod +x speedtest_cli.py

>$ ./speedtest_cli.py (Forma básica)

>$ ./speedtest_cli.py --sahre (Nos da una URL con la imagen en png de la conexión)

>$ ./speedtest_cli.py --list (Mostrará una lista ordenada de los servidores de Speedtest.net con los más cercanos en primer lugar.)

>$ ./speedtest_cli.py --server 804 (Especificar un servidor distinto al más cercano,     tomado del listado anterior)

