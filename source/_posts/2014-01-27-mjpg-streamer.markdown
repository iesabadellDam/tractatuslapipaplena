---
layout: post
title: "mjpg-streamer"
date: 2014-01-27 20:08
comments: true
categories: 
---
Streaming de video 

>$ mjpg_streamer -i "input_uvc.so -y -f 5" -o output_http.so -p 3000 -n -c USER:CONTRASEÑA -b

Opciones:

-f  frames por segundo 

-y  cambiar formato mjpg por yuv (cuando mjpg da problemas)

-b  background 

-n  liberar terminal (conjuntamente con -b) 

-c  usuario:contraseña

Y en el navegador: 

http://localhost:3000/?action=snapshot  (tomar una foto) 

http://localhost:3000/?action=stream    (reproducir video) 

Matar el proceso con: 

>$ kill -9 `pidof mjpg_streamer`

