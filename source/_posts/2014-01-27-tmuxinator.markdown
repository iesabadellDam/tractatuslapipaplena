---
layout: post
title: "tmuxinator"
date: 2014-01-27 18:36
comments: true
categories: 
---
gema de ruby que permite definir pestañas, páneles y comandos que correrán en cada uno de los paneles de una sesión tmux. Cada proyecto guarda su configuración en un archivo .yml en el directorio ~/.tmuxinator. En el archivo .bashrc ha de constar la variable $EDITOR [export EDITOR=/usr/bin/vim, nano o el que sea]

	$ tmuxinator new proyecto1 (Crear un proyecto)

	$ tmuxinator proyecto1 (Abrir un proyecto)

	$ tmuxinator open proyecto1 (Editar un proyecto)

	$ tmuxinator list (Listar todos los proyectos)

	$ tmuxinator delete proyecto1 (Suprimir un proyecto)

	$ tmuxinator doctor (Ver problemas en la configuración)

	$ tmuxinator implode (Suprimir todos los proyectos)

Muestra de un archivo.yml:

	name: proyecto1

	root: ~/

		windows:

				- editor:

				layout: main-vertical

				panes:

					- top

					- who; pwd

