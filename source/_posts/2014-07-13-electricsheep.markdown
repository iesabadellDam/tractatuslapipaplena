---
layout: post
title: "electricsheep"
date: 2014-07-13 16:48
comments: true
categories: 
---
salva pantallas (screen saver) de arte abstracto en el que colaboran miles de personas en el mundo. Cuando los equipos "sueñan" ElectricSheep se enciende y comunica su ordenar con los demás a través de Internet para crear animaciones abstractas conocidas como "ovejas". Para que salga como opción en xscreensaver:

>$ nano .xscreensaver

Añadir la linea al final del apartado:

	....

	- GL:                           companioncube -root                         \n\

	- GL:                           hilbert -root                               \n\

	- GL:                           tronbit -root                               \n\

	                                unicode -root                               \n\

                                	electricsheep                               \n\

Nota.- Los videos se encuentran en ~/.electricsheep en formato .avi

