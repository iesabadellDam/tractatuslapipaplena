---
layout: post
title: "newsbeuter"
date: 2014-01-27 20:08
comments: true
categories: 
---
Lector RSS en consola

>$ newsbeuter -i archivo.opml  (cargar los feeds de otra aplicación)

>$ newsbeuter -r (arrancar la aplicación obteniendo todas las fuentes)

>$ newsbeuter -e (exportar las fuentes a un archivo)

Algunos atajos [newsbeuter -h]:

	q (Subir pantalla/salir de la aplicación)

	Q (Salir de la aplicación)

	C (Marcarlos todos como leidos)

	A (Fuente leida)

	n (Pasar a siguiente fuente no leida)

	p (Pasar a la anterior fuente no leida)

	o (Abrir noticia en el navegador [lynx por defecto ])

	u (Ver listado de URLs de la noticia, Introduciendo el indice la abre)

	/ (Abrir busqueda)

	? (Abrir diálogo de ayuda)

1.-

Para incorporar los feeds de google reader editar o crear si no existe:

>$ nano .newsbeuter/config 

texto que se tiene que agregar:

	urls-source "googlereader" 

	googlereader-login "login_de_googlereader" 

	googlereader-password "contraseña"

2.-

Otros ajustes que pueden hacerse en este archivo:

	auto-reload yes 

	reload-time 15 

	keep-articles-days 15 

	browser "elinks %u"

	notify-beep yes

Que relea las fuentes al arrancar, las actualice cada 15 minutos, que guarde las noticias 15 dias, las abra con elinks y que avise con un beep las nuevas noticias. Si las noticias se leen en las X puede especificarse como navegador firefox o chromium [browser firefox]

3.-

Configurar colores:

Los colores soportados: black, red, green, yellow, blue, magenta, cyan y white. 

Los elementos sobre los que se puede actuar: listnormal [lista de las fuentes], listfocus [Fuente o articulo donde está el foco], info (Linea superior y penúltima de la pantalla que muestra información], background [última linea de la pantalla] y article [articulo que se abre para su lectura]

Los atributos: standout, underline, reverse, blink, dim, bold, protect e invis [pueden especificarse uno, varios o ninguno]

Muestra de mi configuración de color:

>$ nano .newsbeuter/config

	color listnormal yellow black

	color listfocus green blue bold

	color info yellow blue bold

	color background red black bold

	color article cyan black

