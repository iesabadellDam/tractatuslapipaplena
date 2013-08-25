---
layout: post
title: "deborphan"
date: 2013-07-13 16:49
comments: true
categories: 
---
Visualizar paquetes huerfanos 

>$ deborphan --guess-all   (Los muestra todos) 

>\# apt-get remove $(deborphan --guess-all)     (borra todos los mostrados)

>\# deborphan        (para ver las librerias huérfanas)	

>\# dpkg -l $(deborphan)    (lo mismo que el anterior con más detalles)

>\# sudo dpkg --purge $(deborphan)   (eliminar los paquetes huérfanos)

>\# apt-get remove `deborphan` (Lo mismo)

>\# dpkg -l $(deborphan --find-config)  (para borrar configuraciones que no se han borrado tras la desinstalación de un paquete)

>\# dpkg --purge $(deborphan --ind-config)  (para eliminarlos)

>\# apt-get remove $(deborphan --guess-all)

Nota.- Normalmente estas aplicaciones han de repetirse varias veces hasta que al lanzar el comando no salga ninguna archivo huerfana.

>\# deborphan | xargs sudo apt-get -y remove --purge (otra forma de eliminar paquetes huerfanos)

