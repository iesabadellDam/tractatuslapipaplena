---
layout: post
title: "expresiones-regulares"
date: 2014-01-29 18:30
comments: true
categories: 
---
[regex o patrones]. Buscar cadenas de texto que coinciden con un patrón. Los comandos más usuales que las emplean son grep, find, sed y awk y cada uno con sus pecualiaridades. Para ilustrar dichas expresiones se usa un archivo de texto al que llamo file.

>$ cat file

	# /etc/fstab: static file system information.

	UUID=de1d7793-c3d2-4e03-b79d-1a76905619e6 /               ext4    errors=remount-ro 0       1

	UUID=ccc71238-d89d-435b-a4e2-c2d836f800bb none            swap    sw              0       0

	/dev/sr0        /media/cdrom0   udf,iso9660 user,noauto     0       0

	/dev/sda5       /media/datos    ext4    defaults        0       0

	/dev/sda7       /media/fotos    ext3    defaults        0       0

	servidor:/home/templix /media/servidor  nfs4 defaults   0       0

	### Otras cosas

	7592 esto es un número....

	la letra z es la última

	aminora

	mediaplayer es un reproductor

	tres cincos hace 555

	salta la rana

	aRmARIO

Nota.- Los siguientes ejemplos se basarán en el comando grep. En algunos casos, al corresponder a expresiones regulares extendidas, se usará con el argumento -E. Las expresiones regulares han de ir siempre encerradas con comillas simples.

	Literales (Sólo encajan con ellos mismos)

		$ grep 'media' file (mostrara las lineas que contengan "media" incluso "mediaplayer")

		$ grep '\<media\>' file (Sólo mostrará las que contengan exactamente "media")

	. [punto] (Cualquier caracter)

		$ grep 'me.ia' file (Misma salida que el anterior)

		$ grep '\<m...a\>' file (Mostrar las de cinco letras que empiecen por "m" y terminen en "a")

		$ grep 'm...a\>' file (Mostrar las lineas que contengan una palabra de cinco letras que empiece por "m" y termine con "a" sin nada a continuación)

	[] [Corchetes] (Cualquier caracter de los encerrados entre corchetes)

		$ grep '[wz]' file (Mostras las que contengan "w" o "z")

		$ grep 'sda[0-9]' file (Mostrar las lineas con palabras que empiecen por sda seguidas de un número del 0 al 9)

		$ grep '[0-9]-' file (Buscar lineas que tengan un número seguido de un -)

	| [Tuberia] (Especificar varias opciones)

		$ grep -E 'e(xt|rvi)(3|dor)' file (Mostrar las que contengan ext3 y ervidor [servidor])

		$ grep -E 'datos|servidor' file (Mostrar las que tengan las palabras "datos" y "servidor")

	- [Guión] (Siempre que no siga a un corchete, especifica un rango)

		$ grep '[0-2]$' file (Lineas que contengan los números 0,1 y 2)

	^ [Circunflejo] (Si va precedido de un corchete significa "todo lo que no sea lo que sigue". En los demás casos significa "que la linea empiece por lo que sigue)

		$ grep '^UUID' file (Mostrar las que empiecen por UUID)

		$ grep ':[^/]' file (Las que tengan ":" y no vayan seguidos de una "/")

		$ grep -e '^UUID' -e '^\/' file (Mostrar las que empiecen por UUID y por / . La barra de escape [\] convierte al siguiente caracter en literal)

	$ [Dolar] (Indica que el carácter precedente aparece al final de la linea)

		$ grep '0$' file (Muestra las que terminen en 0)

		grep '\.$' file (Muestra las lineas que terminan con un punto)

	+ [Signo más] (Una o más veces).

		$ grep -E '\-[0-9]+' file (Buscar las lineas con varios números precedidos por un guión [que ha de escaparse con una barra])

	* (Asterisco) (Ninguna o más veces)

		$ grep -E '(fot).*' file (Mostrar las que tengan "fot" y puedan estar o no seguidas de otros caracteres)

	? (Interrogante) (Un caracter impreciso)

		$ grep -E 'ext4?' file (indica que el caracter anterior [el 4] puede ser distinto de 4 o puede no existir, o sea que mostrará lineas que contengan ext4, ext3, ext...)

	{n,m} [Llaves] (Que el caracter anterior a la llave se muestre las veces que indica entre el número n y el m. Si omitimos m significa como mínimo n veces.

		$ grep '5\{2,5\}.*' file (Que se muestre las lineas que tengan un 5 entre dos y cinco veces. Las llaves se escapan)

		$ grep '5\{3\}.*' file (Muestra las lineas en las que el 5 sale tres veces)

		$ grep '5\{3,\}.*' file (Muestra las lineas en las que el 5 sale como mínimo tres veces)

	b (Que lo precedente sea el final de una palabra. Siempre ha de escaparse.)

		$ grep 's\b' file (Muestra las lineas que contienen alguna palabra acabada en "s")

Otros ejemplos:

Buscar las lineas que no empiecen por #:

	$ grep -v '^#' file

Mostrar lineas que empiecen por # y las que terminen en 0:

	$ grep -E '^#|0$' file

Buscar lineas que tengan : seguidos de una barra que ha de escaparse:

	$ grep ':\/' file

Buscar las lineas que tengan una "o" seguida de al menos 3 dígitos:

	$ grep 'o[0-9]\{3\}' file

Buscar lineas que tengan algún dígito:

	$ grep '[[:digit:]]' file

Buscar lineas que empiecen por un caracter alfabético:

	$ grep '^[[:alpha:]]' file

Buscar lineas que tengan "ext" usando parentesis:

	$ grep '\(ext\)' file

Buscar lineas que que tengan un número entre 2 y 9 al menos una vez y esten precedidos de espacio, tabulación o salto de linea:

	$grep -E '\s[2-9]+' file

Mostrar lineas con entre 3 y 6 letras mayúsculas:

	$ grep '[A-Z]\{3,6\}' file

Algunos casos comentados:

1.-

>$ touch nada.8.sh.5

	$ ls | grep '.*.[6-8].*.[1-6]'

Nota.- Cuando se usen con el comando grep han de ir siempre encerradas con comillas simples.

	.* (Cero o más caracteres. El punto inicial es imprescindible)

	.[6-8] (Seguidos de un punto y un número que contenga entre el 6 y el 8)

	.* (seguido un punto y cero o más caracteres)

	.[1-6] (y terminado con un punto seguido de un número que contenga del 1 al 6)

Nota.- Los corchetes NO indican UN número de un dígito sinó un número que contenga el margen especificado [6,7,8 para el primer corchete y 1,2,3,4,5,6 para el segundo, por tanto también listaría el archivo nada.0357.sh.389 pero no nada.0352.sh.389 porque el número 0352 no contiene ninguno del margen especificado.

Nótese la diferencia en la expresión regular usando el comando mv [sin comillas simples y sin el punto delante del primer asterisco]:

	$ mv *.[6-8].*.[1-6] prueba

2.-

Buscar en el directorio scripts, todos los que sean de bash:

	$ grep -i '^#.*bash' scripts/*

		^#.*bash (Que el primer caracter de la primera linea sea # y que despues de cero o más caracteres aparezca la palabra bash)

		$ grep -i '$.*bash' scripts

		'$.*bash' (En todos los ficheros del directorio, que al final de la primera linea y despues de cero o más caracteres apararezca la palabra bash)

3.-

Ver los correos electrónicos completos de una lista en la que los hay incompletos:

>$ cat lista

	juangomez@gmail.com

	clarafuentes@

	@yahoo.es

	ant.rodri-perez@hotmail.nadadenada

	pedro@blog.empresa.travel

---

	$ grep -E '^[a-zA-Z._-]+@[a-zA-Z0-9.]+\.[a-z]+$' lista

		^[a-zA-Z._-]+ (Que empiece con una palabra que pueda contener mayúsculas, minúsculas, puntos, guiones o guiones bajos)

		@ (Seguida de una @ literal)

		[a-zA-Z0-9.]+ (A continuación varios caracteres que pueden ser mayúsculas, minúsculas, puntos o números)

		\. (Después un punto literal)

		[a-z]+$ (Para terminar, uno o varios caracteres en minúscula)

	$ grep -E '^[a-zA-Z._-]+@.[a-zA-Z.0-9]+\.[[:alpha:]]{2,3}$' lista (Sólo mostrará las que terrminen con 2 o 3 letras)

