---
layout: post
title: "scanimage"
date: 2014-04-03 14:53
comments: true
categories: 
---
[sane, sane-utils]. Escanear. Solo genera archivos tiff y pnm. 

	$ scanimage -L (Para conocer los datos del escaner) 

	< device `hpaio:/usb/psc_1100_series?serial=MY387F93QWB0' is a Hewlett-Packard psc_1100_series all-in-one 

>$ scanimage -d hpaio:/usb/psc_1100_series?serial=MY387F93QWB0 (Especificando el escaner. Si solo existe uno no es necesaria esta opción) 

>$ scanimage -v -p > imagen.tiff (Ver la información que genera, el progreso y redirigido a un archivo) 

>$ scanimage --help (A continuación de la ayuda estandar, muestra las características concretas de nuestro escaner) 

>$ scanimage -p --mode Color --resolution 200 -l 0 -t 0 -x 190 -y 160  > imagen.pnm (Las opciones de "mode" y "resolution" los muestra el parámetro "help". Las opciones "l" y "t" indican que comenzará a escanear desde la esquina superior izquierda. Los limites de estos parámetros tambien los muestra "help". "x" e "y" indican la medida a escanear. En este caso 190X160 mm) 

>$ scanimage -p | convert - imagen.png (Redirigiendo la salida a convert que pasa la imagen a png)

scanimage

[sane, sane-utils]. Escanear. Solo genera archivos tiff y pnm. 

	$ scanimage -L (Para conocer los datos del escaner) 

	< device `hpaio:/usb/psc_1100_series?serial=MY387F93QWB0' is a Hewlett-Packard psc_1100_series all-in-one 

>$ scanimage -d hpaio:/usb/psc_1100_series?serial=MY387F93QWB0 (Especificando el escaner. Si solo existe uno no es necesaria esta opción) 

>$ scanimage -v -p > imagen.tiff (Ver la información que genera, el progreso y redirigido a un archivo) 

>$ scanimage --help (A continuación de la ayuda estandar, muestra las características concretas de nuestro escaner) 

>$ scanimage -p --mode Color --resolution 200 -l 0 -t 0 -x 190 -y 160  > imagen.pnm (Las opciones de "mode" y "resolution" los muestra el parámetro "help". Las opciones "l" y "t" indican que comenzará a escanear desde la esquina superior izquierda. Los limites de estos parámetros tambien los muestra "help". "x" e "y" indican la medida a escanear. En este caso 190X160 mm) 

>$ scanimage -p | convert - imagen.png (Redirigiendo la salida a convert que pasa la imagen a png)

scanimage

[sane, sane-utils]. Escanear. Solo genera archivos tiff y pnm. 

	$ scanimage -L (Para conocer los datos del escaner) 

	< device `hpaio:/usb/psc_1100_series?serial=MY387F93QWB0' is a Hewlett-Packard psc_1100_series all-in-one 

>$ scanimage -d hpaio:/usb/psc_1100_series?serial=MY387F93QWB0 (Especificando el escaner. Si solo existe uno no es necesaria esta opción) 

>$ scanimage -v -p > imagen.tiff (Ver la información que genera, el progreso y redirigido a un archivo) 

>$ scanimage --help (A continuación de la ayuda estandar, muestra las características concretas de nuestro escaner) 

>$ scanimage -p --mode Color --resolution 200 -l 0 -t 0 -x 190 -y 160  > imagen.pnm (Las opciones de "mode" y "resolution" los muestra el parámetro "help". Las opciones "l" y "t" indican que comenzará a escanear desde la esquina superior izquierda. Los limites de estos parámetros tambien los muestra "help". "x" e "y" indican la medida a escanear. En este caso 190X160 mm) 

>$ scanimage -p | convert - imagen.png (Redirigiendo la salida a convert que pasa la imagen a png)

scanimage

[sane, sane-utils]. Escanear. Solo genera archivos tiff y pnm. 

	$ scanimage -L (Para conocer los datos del escaner) 

	< device `hpaio:/usb/psc_1100_series?serial=MY387F93QWB0' is a Hewlett-Packard psc_1100_series all-in-one 

>$ scanimage -d hpaio:/usb/psc_1100_series?serial=MY387F93QWB0 (Especificando el escaner. Si solo existe uno no es necesaria esta opción) 

>$ scanimage -v -p > imagen.tiff (Ver la información que genera, el progreso y redirigido a un archivo) 

>$ scanimage --help (A continuación de la ayuda estandar, muestra las características concretas de nuestro escaner) 

>$ scanimage -p --mode Color --resolution 200 -l 0 -t 0 -x 190 -y 160  > imagen.pnm (Las opciones de "mode" y "resolution" los muestra el parámetro "help". Las opciones "l" y "t" indican que comenzará a escanear desde la esquina superior izquierda. Los limites de estos parámetros tambien los muestra "help". "x" e "y" indican la medida a escanear. En este caso 190X160 mm) 

>$ scanimage -p | convert - imagen.png (Redirigiendo la salida a convert que pasa la imagen a png)

