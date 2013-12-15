---
layout: post
title: "ssh-keygen"
date: 2013-12-15 16:15
comments: true
categories: 
---
Creación, gestión y conversión de claves utilizadas para la autenticación de cliente y servidor. Cuando no se especifica ninguna opción, ssh-keygen genera un par de claves RSA de 2048 bits y solicita un nombre de clave y una frase de paso para proteger la clave privada. Las claves públicas se crean usando el mismo nombre base que la clave privada con una extensión .pub añadida. La ubicación de la clave se muestra cuando se completa la generación de claves. Ver ssh

>$ ssh-keygen -lvf ~/.ssh/known_hosts (Ver todas las huellas digitales y las imágenes randomart)

>$ ssh-keygen -t rsa -C newserver -f .ssh/newkey (Generar el par de llaves publica y privada. Caso de exitir preguntará si se sobreescribe)

>$ ssh-keygen -B -f .ssh/id_rsa.pub (Muestra la huella digital de la llave especificada en formato SHA-1)

1.-

Para ver la huella digital cada vez que se ingresa en un host remoto:

>\# nano /etc/ssh/ssh_config

Descomentar la linea y dejarla:

VisualHostKey yes

