---
layout: post
title: "wondershaper"
date: 2013-07-31 17:38
comments: true
categories: 
---
Limitar el ancho de banda de la conexion de una red. Prioriza telnet y ssh sobre tráfico web, y este sobre las descargas de datos. Para limitar aplicaciones ver trickle.

>\# wondershaper eth0 (Muestra el estado de la red eth0)

>\# wondershaper eth0 1024 512 (limita la conexión a 1024 kbps de bajada y 512 kbps de subida)

>\# wondershaper clear eth0  (Elimina los ajustes realizados en la red especificada)

