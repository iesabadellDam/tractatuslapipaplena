---
layout: post
title: "add-apt-repository"
date: 2013-12-15 18:34
comments: true
categories: 
---
Añadir repositorios a /etc/apt/sources.list o a /etc/apt/sources.list.d/

>~# add-apt-repository "deb http://packages.mate-desktop.org/repo/ubuntu $(lsb_release -cs) main" (Añade el repositorio del escritorio Mate según la versión de Ubuntu instalada [$(lsb_release -cs)]

