---
layout: post
title: "molly-guard"
date: 2014-01-27 20:08
comments: true
categories: 
---
Evitar paradas o reinicios de servidores desde consola remota. Editar:

>\# nano /etc/molly-guard/rc

Y descomentar la linea:

ALWAYS_QUERY_HOSTNAME=true

Cuando se intente parar o reiniciar el equipo vía ssh, saldrá una nota pidiendo el nombre de la máquina. Una vez introducida, se ejecutará el shutdown o reboot.

