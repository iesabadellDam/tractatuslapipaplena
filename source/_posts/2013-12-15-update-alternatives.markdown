---
layout: post
title: "update-alternatives"
date: 2013-12-15 16:15
comments: true
categories: 
---
Modificar las aplicaciones por defecto cuando existen otras posibilidades 

>$ ls /etc/alternatives  (Muestra todas las posibilidades)

>$ update-alternatives --list x-www-browser (muestra las alternativas al navegador por defecto)

>$ update-alternatives --display x-www-browser (Para ver, de las opciones, la utilizada)

>$ update-alternatives --config x-www-browser (Para modificarla)

>$ update-alternatives --config x-cursor-theme (Modificar el tema del cursor)

