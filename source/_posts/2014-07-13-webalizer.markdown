---
layout: post
title: "webalizer"
date: 2014-07-13 16:52
comments: true
categories: 
---
Genera reportes en formato html de los accesos a una página web instalada en la misma máquina.

Configuración mínima:

>\# nano /etc/webalizer/webalizer.conf

Verificando que el siguiente contenido esté descomentado:

	LogFile         /var/log/apache2/access.log

	OutputDir       /var/www/webalizer

	Incremental     yes

	ReportTitle     Estidísticas de PAGINAWEB_NOMBRE

	Hostname URL_PAGINA

	IgnoreSite      localhost

Especificamos los logs a analizar [logfile], el directorio de salida de los resultados [outputdir], que analice todo por separado [incremental], título de la página de reporte [reporttitle], nombre de la página a analizar [hostname] y que innore los accesos desde la propia máquina [ignoresite]

>\# webalizer -c /etc/webalizer.conf -d (que se base en el archivo especificado [-c] y que haga debugging de los reportes por si todo salió sin errores [-d])

Dado que los reportes solo se realizan cuando se ejecuta el comando, es preferible colocar la linea en crontab:

>$ crontab -e

Y añadir:

	0 0 * * * /usr/bin/webalizer -c /etc/webalizer.conf -d

