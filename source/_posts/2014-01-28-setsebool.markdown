---
layout: post
title: "setsebool"
date: 2014-01-28 17:52
comments: true
categories: 
---
Permite activar/desactivar las políticas en selinux. Ver getsebool

>\# setsebool httpd_can_network_connect on (Activamos el permitir a Apache realizar conexiones de red)

>\# setsebool -P httpd_can_network_connect on (Hacer el cambio persistente)

>\# setsebool httpd_disable_trans 1 (Otra forma de desactivar una politica. Con 0 se activa)

