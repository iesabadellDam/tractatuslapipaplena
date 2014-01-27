---
layout: post
title: "host.conf"
date: 2014-01-27 18:33
comments: true
categories: 
---
[/etc/host.conf]

Archivo que contiene el orden de cómo serán ejecutadas las resoluciones que requiera el "Host". Algunos parámetros:

**order hosts,bind,nis** (que cualquier tipo de resolución primero consulte el archivo /etc/hosts , en segundo lugar a BIND y si aún no se ha logrado la resolución, intentar con NIS)

	BIND (Llamada al servidor de nombres)

	NIS ("Network Information Server" es un sistema de resolución desarrollado por Sun Microsystem's , su implementación generalmente esta limitada a intranets y utiliza una metodología diferente a la usada por BIND

**multi on** (Que devuelva más de un resultado si existen alias ya que un host puede tener varias direcciones IP y la dirección IP puede coincidir con varios nombres de host. Por defecto es off [sólo se muestra el primero] )

**spoofalert on** (Intentar encontrar el nombre de host de una dirección IP. Si la aplicación no devuelve el resultado correcto, puede significar que una máquina intenta hacerse pasar por lo que no es.)

**nospoof on** (rechaza los resultados que no pasan la prueba de robo de identidad)

**reorder on** (intenta reordenar las direcciones de host para que las direcciones locales [misma subred] se listen en primer lugar)   

