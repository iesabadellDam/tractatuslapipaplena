---
layout: post
title: "truecrypt"
date: 2014-06-08 08:28
comments: true
categories: 
---
Aplicación que permite cifrar sistemas de archivos enteros, generar archivos cifrados y tambien generar sistemas ocultos dentro de otros sistemas. Descarga de : http://www.truecrypt.org/downloads

Descomprimir y ejecutar:

	$ tar xf truecrypt-7.1a-linux-console-x64.tar.gz

	# ./truecrypt-7.1a-setup-console-x64

>\# truecrypt -t -c (por consola [t] y ejecutar por primera vez [c]. Sin el parámetro "t" abre la gui)

	Volume type:

	 1) Normal

	 2) Hidden

	Select [1]: 1

	**[Seleccionar si va a estar oculto o no: 1]**

	Enter volume path: /media/cripta

	**[Donde se montará. No tiene que existir el directorio]**

	Enter volume size (sizeK/size[M]/sizeG): 20M

	**[Tamaño del volumen: a voluntad]**

	Encryption algorithm:

	 1) AES

	 2) Serpent

	 3) Twofish

	 4) AES-Twofish

	 5) AES-Twofish-Serpent

	 6) Serpent-AES

	 7) Serpent-Twofish-AES

	 8) Twofish-Serpent

	Select [1]: 5

	**[Algoritmo de encriptación: a voluntad]**

	Hash algorithm:

	 1) RIPEMD-160

	 2) SHA-512

	 3) Whirlpool

	Select [1]: 2

	**[El hash: a voluntad]**

	Filesystem:

	 1) None

	 2) FAT

	 3) Linux Ext2

	 4) Linux Ext3

	 5) Linux Ext4

	Select [2]: 5

	**[El sistema de archivo]**

	Enter password:

	WARNING: Short passwords are easy to crack using brute force techniques!

	**[CUIDADO: Contraseñas cortas son fáciles de romper usando técnicas de fuerza bruta!]**

	We recommend choosing a password consisting of more than 20 characters. Are you sure you want to use a short password? (y=Yes/n=No) [No]: y

	**[Informa que la contraseña tiene menos de 20 caracteres pero la aceptamos de todas formas]**

	Re-enter password:

	**[La repetimos]**

	Enter keyfile path [none]:

	**[Sin archivo de claves: enter]**

	Please type at least 320 randomly chosen characters and then press Enter:

	Characters remaining: 134

	Characters remaining: 26

	**[Nos hace tipear 320 caracteres en el teclado... todavia faltan 134... todavia faltan 26...]**

	 Done: 100,000%  Speed:   22 MB/s  Left: 0 s

	**[Por fin... y toma sus notas... pasamos de ellas...]**

	The TrueCrypt volume has been successfully created.

	**[Finalmente se ha creado el volumen]**

>\# truecrypt -t /media/cripta (Ejecutando la aplicación. Intro a todo:)

	Enter mount directory [default]:

	Enter password for /media/cripta:

	Enter keyfile [none]:

	Protect hidden volume (if any)? (y=Yes/n=No) [No]:

>\# truecript -t -l (Comprobar dispositivo montado)

	1: /media/cripta /dev/mapper/truecrypt1 /media/truecrypt1

>\# truecrypt -d /media/cripta (Desmontar volumen)

