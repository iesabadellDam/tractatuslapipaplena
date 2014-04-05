---
layout: post
title: "operadores"
date: 2014-04-05 18:20
comments: true
categories: 
---
(Bash scripting).

lógicos o de comparación de cadenas alfanuméricas:

	= (Verdadero si las 2 cadenas son iguales)

	!= (Verdadero si las 2 cadenas son distintas)

	-n (Informa si la cadena tiene longitud mayor a cero)

	-z (Informa si la cadena tiene longitud igual a cero)

	== (Verdadero si las 2 cadenas son iguales [solo en bash])

	< (Si una cadena es menor que otra)

	> (Si una cadena es mayor que otra)

lógicos o de comparacion de valores numericos

	x -lt y (x menor que y)

	x -le y (x menor o igual que y)

	x -eq y (x igual que y)

	x -ge y (x mayor o igual que y)

	x -gt y (x mayor que y)

	x -ne y (x no igual que y)

De comprobacion de atributos de fichero

	-d fichero (fichero existe y es un directorio)

	-e fichero (fichero existe)

	-f fichero (fichero existe y es regular [no un directorio])

	-r fichero (si fichero tiene permiso de lectura)

	-s fichero (fichero existe y no esta vacio)

	-w fichero (si fichero tiene permiso de escritura)

	-x fichero (si fichero tiene permiso de ejecucion o de busqueda si es un directorio)

	-O fichero (si eres dueño del fichero)

	-G fichero (si el grupo del fichero es igual al tuyo)

Algunos ejemplos:

1.-

Comprobar si un fichero tiene datos:

	#!/bin/bash

	A=/etc/fstab

	if [ -s "$A" ]

	then

		echo "Tiene datos"

	else

		echo "No los tiene"

	fi

2.-

Comprobar si un directorio es el personal del usuario:

	#!/bin/bash

	read -p "Ingrese un directorio: " DIR

	if [ $DIR = home ]

	then

	 	echo "Es tu directorio personal"

	else

		echo "No es tu home"

	fi

	exit 0

3.-

Verificar si un archivo pasado como argumento existe o no:

	#!/bin/bash

	if [ $# -eq 0 ]

	then

		 echo "Falta el parametro"

		 exit

	else

		if [ -f $1 ]

		then

			echo "archivo existe"

		else

			echo "archivo no existe"

		fi

	fi

