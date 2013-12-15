---
layout: post
title: "variables"
date: 2013-12-15 15:46
comments: true
categories: 
---
Existen dos tipos de variables:

Variables locales (tiene valor únicamente dentro de nuestra shell)

Variables globales (disponibles para todos los procesos invocados por la shell)

Al ejecutar un script la línea de comandos introducida se guarda en unas variables especiales que podemos referenciar:

>$0 (Nombre del comando)

>$1 (Primer argumento)

>$2 (Segundo...)

>$@ (Todos los argumentos introducidos, separados por espacios)

>$# (Número de argumentos)

>$$ (identificador del proceso)

>$? (Cuando finaliza la ejecución de un proceso, $? será cero (0) si se ejecuta correctamente y distinto de cero si se ha producido algún error. Es muy usual guardar su valor en una variable (VAR=$?) para su posterior uso.)

Para declarar una variable sólo se precisa asignarle un valor. Nunca el valor puede preceder a la variable. No se ponen espacios ni antes ni después del signo igual. El nombre puede contener caracteres alfabéticos (A-Z, a-z), numéricos (0-9) o el guión bajo ‘_’. El primer carácter no puede ser un número o contener otros signos (2DIR, .DIR, -VAR...)

DIR="/var/www"

También puede asignarse a partir del contenido de un fichero:

$ firma=$(<firma.txt)

Puede asignarse a la salida de un comando encerrado entrecomillas graves:

WHO=`who | awk '{print$2}'`

O entra parentesis antecedido por el signo dolars ($):

WHO=$(who | awk '{print$2}')

Variables introducidas por el teclado:

echo "Como te llamas"

read NOMBRE

Puede especificarse un tiempo (en segundos) de espera para entrar lo solicitado (-t):

read -t 10 -p "¿Nombre y apellido? " NOMBRE APELLIDO

Para definir variables numéricas se utiliza el comando let:

let A=100

let B=200

let C=$A+$B

Si al llamar a una variable, esta va seguida de un carácter que sea otra letra, numero o el guión normal o bajo, La encerraremos entre llaves '{}':

ARCHIVO="registro"

echo "${ARCHIVO}_2011.txt"

registro_2011.txt

Cuando bash encuentra en una palabra el signo "$" todo lo que va a continuación se considera el nombre de una variable y todos los caracteres desde el "$" hasta el final de la palabra son sustituidos por dicha variable:

COSA="mastro"

echo "ca$COSA"

camastro

Otra forma de entrar variables es mostrando un promt:

$ read -p "palabra> " PALABRA

Si no indicamos nombre de variable, lo ingresado se guarda en la variable REPLY:

read

juan jose pedro

$ echo $REPLY

juan jose pedro

Modificar parte de una variable:

a="Linux es un sistema genial"

echo ${a/geni/brut}

Linux es un sistema brutal

Algunas de la variables globales:

$HOME  (ruta del directorio home del usuario)

$PATH    (directorios donde se encuentran los ejecutables)

$TERM    (nombre de la terminal)

$BASH    (ruta del interprete bash )

$PWD      (directorio actual)

$USER     (Usuario)

$HOSTNAME  (Nombre del equipo)

$HISTFILE (ruta para el histórico de comandos ejecutados)

$UID     (Número de usuario para el sistema)

$RANDOM (números aleatorios entre 0 y 32767)

