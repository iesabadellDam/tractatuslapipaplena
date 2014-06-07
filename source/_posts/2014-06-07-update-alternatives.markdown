---
layout: post
title: "update-alternatives"
date: 2014-06-07 07:14
comments: true
categories: 
---
Modificar las aplicaciones por defecto cuando existen otras posibilidades

>$ ls /etc/alternatives  (Muestra todas las posibilidades)

>$ update-alternatives --list x-www-browser (muestra las alternativas al navegador por defecto)

>$ update-alternatives --display x-www-browser (Para ver, de las opciones, la utilizada)

>$ update-alternatives --config x-www-browser (Para modificarla)

>$ update-alternatives --config x-cursor-theme (Modificar el tema del cursor)

>$ update-alternatives --install  /usr/bin/x-www-browser x-www-browser /usr/bin/firefox 100 (Incluir en el listado una aplicación que no está)

