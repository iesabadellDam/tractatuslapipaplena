---
layout: post
title: "anamnesis"
date: 2014-02-15 04:54
comments: true
categories: 
---
Gestor del portapapeles. Almacena el historial del portapapeles y ofrece una interfaz para hacer búsquedas de todo lo copiado. Descarga de: <http://sourceforge.net/projects/anamnesis/> Una	vez descomprimido copiar la carpeta en:

    # cp anamnesis-1.0.4 /usr/local/

Colocar	el ejecutable en el path:

    # ln -s	/usr/local/anemnesis-1.0.4/source/anemnesis.py /usr/bin/anemnesis

>$ anamnesis --start (Arrancar sesión. Otras opciones: restart, stop)

>$ anamnesis -b (Ver el historial. Con intro o cambiando de escritorio desaparece)

>$ anamnesis -l 3 (Mostrar los últimos 3 datos guardados)

>$ anamnesis -l 5 --filter="palabra" (Buscar en los últimos 5 datos el que contine "palabra")

>$ anamnesis -a "Historial del Portapapeles" (Ponerle un título)

>$ anamnesis --remove = 5 (Eliminar el registro del ID número 5)

