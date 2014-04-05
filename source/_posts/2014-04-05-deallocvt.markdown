---
layout: post
title: "deallocvt"
date: 2014-04-05 18:18
comments: true
categories: 
---
Libera memoria y estructuras de datos del núcleo para todas las consolas virtuales que no se usen. Una consola virtual se considera en desuso si no es la consola en primer plano, ni  ningún  proceso  la  tiene  abierta  para  lectura  o escritura, ni se ha seleccionado ningún texto en su pantalla. Ver openvt

>\# deallocvt (Las desasigna todas)

>\# deallocvt 5 (Sólo desasigna la /dev/tty5)

Un ejemplo de uso:

>\# openvt -s ls (lanzara el comando ls en la primera consola virtual libre. Normalmente la /dev/tty8)

>\# deallocvt 8

