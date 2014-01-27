---
layout: post
title: "regionset"
date: 2014-01-27 18:35
comments: true
categories: 
---
Los discos dvd contienen un código que indica la región geográfica donde el dvd fue publicado imposibilitando que los comprados en unas regiones, puedan reproducirse en otras: 

Códigos de región:

	1 Norte América (USA y Canadá)

	2 Europa, Medio-oriente, Sudáfrica y Japón

	3 Sudeste Asiático, Taiwan, Corea

	4 Hispano América, Brasil, Australia, Nueva Zelanda

	5 Antigua URSS (Rusia, Ucrania, etc.), resto de África, India

	6 China

Esta aplicación permite cambiar dicho código del reproductor, no en el disco dvd y en la mayoría de los casos sólo permite hacer 5 cambios y en algunos casos, sólo 2.

>\# regionset

	regionset version 0.1 -- reads/sets region code on DVD drives

	Current Region Code settings:

	RPC Phase: II

	type: NONE

	vendor resets available: 4

	user controlled changes resets available: 5

	drive plays discs from region(s):, mask=0xFF

	Would you like to change the region setting of your drive? [y/n]:

vendor resets available: 4 (indica el número de cambios disponibles)

