---
layout: post
title: "flvstreamer"
date: 2013-12-15 18:53
comments: true
categories: 
---
Descarga de videos con protocolo RTMP.

Supongamos que el video a descargar tenga por ruta: http://www.tv3.cat/videos/1307049732092

Abrir una pestaña del vavegador y pegar:

http://www.tv3.cat/su/tvc/tvcConditionalAccess.jsp?ID=1307049732092&QUALITY=H&FORMAT=MP4

Colocando en el número “ID=” el que corresponda y con la ruta rtmp que nos indique lanzar [en una sola linea]:

>$ flvstreamer -r rtmp://mp4-500-str.tv3.cat/ondemand/mp4:g/tvcatalunya/2/9/1307049732092.mp4 -o video.mp4

