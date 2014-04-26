---
layout: post
title: "do-release-upgrade"
date: 2014-04-26 12:48
comments: true
categories: 
---
Herramienta para actualizar por consola sistemas basados en Ubuntu a una nueva versión de la distribución. Para configurar si queremos actualizar entre versiones normales o versiones LTS, debemos modificar del fichero /etc/update-manager/release-upgrades la linea:

Para versiones LTS:

Prompt=lts 

Para versiones normales:

Prompt=normal

Para no verificar nunca nuevas versiones:

Prompt=never

Estas modificaciones son válidas también para update-manager [ver]

>\# do-release-upgrade -d

