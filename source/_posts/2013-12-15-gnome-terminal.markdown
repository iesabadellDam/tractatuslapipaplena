---
layout: post
title: "gnome-terminal"
date: 2013-12-15 15:42
comments: true
categories: 
---
Emulador de terminal de gnome.

>$ gnome-terminal --hide-menubar --geometry=200x70+0+0 -e "sh -c 'links2 http://google.es'"& (arrancar una terminal, sin menús, con unas medidas concretas y en ella, arrancar el navegador)

Opciones:

--window-with-profile=perfil2  (especificar un perfil para arrancar)

--show-menubar  (Mostrar los menús)

--maximize (maximizada)

--full-screen (a pantalla completa)

--zoom=x.x (factor de ampliación de la terminal [--zoom=1.0 medida normal])

atajos:

Ctrl + a (lleva el cursor al principio de la línea)

Ctrl + b (Retrocede un carácter)

Ctrl + c (mata lo que se está escribiendo y devuelve el prompt)

Ctrl + d (Sale de root y si está como usuario, cierra la terminal)

Ctrl + e (lleva el cursor al final de la línea)

Ctrl + f (adelanta un caracter)

Ctrl + k (Borra de la posición actual al final de la linea)

Ctrl + l (limpia la pantalla)

Ctrl + r (Buscar en el historial de comandos. “Esc” editar. “Ctrl +g” abortar “Intro” ejecutar)

Ctrl + t (Intercambiar las dos letras anteriores al cursor [pieran → pierna])

Ctrl + u (Borra de la posición actual al principio de la linea)

Ctrl + w (borra del cursor al primer espacio hacia el principio de la linea)

Ctrl + y (Deshace la última acción)

Ctrl + Mayu + t (Abrir nueva pestaña)

Ctrl + Mayu + w (Cerrar pestaña)

Esc + d (Borra de la posición actual al final de la palabra)

Esc + b (Ir una palabra hacia atras)

Esc + f (Ir una palabra hacia adelante)

Esc + t (Intercambiar las dos palabras anteriores al cursor [sin tos → tos sin])

Mayús+RePág (Hace scroll de la terminal hacia arriba)

Mayús+AvPág (Hace scroll de la terminal hacia abajo)

1.-

Cambiar las medidas por defecto de la terminal:

># nano /usr/share/vte/termcap/xterm

Buscar la linea:

co#80:it#8:li#24:Y modificar los parámetros co (columnas) y li (lineas) con las nuevas medidas: co#100:it#8:li#10:

