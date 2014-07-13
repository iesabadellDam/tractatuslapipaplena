---
layout: post
title: "portsentry"
date: 2014-07-13 17:41
comments: true
categories: 
---
Herramienta de seguridad que detecta escaneo de puertos y permite monitorizar rastreos tipo NULL, SYN, TCP, ARP... Su configuración se realiza en el archivo /etc/portsentry/portsentry.conf, las opciones [tcp y/o udp] del demonio en /etc/default/portsentry y las máquinas i interficies a ignorar en /etc/portsentry/portsentry.ignore.static. Sin tocar del archivo de configuración el parámetro TCP_PORTS y UDC_PORTS portsentry simula que todos los especificados están abiertos, lo cual puede verificarse con un nmap:

>\# nmap 192.168.1.x

La configuración por defecto con la explicación a modo de comentario:

	# Puertos que se simularán abiertos y que monitorizarán ataques:

	TCP_PORTS="1,11,15,79,111,119,143,540,635,1080,1524,2000,5742,6667,12345,12346,20034,27665,31337,32771,32772,32773,32774,40421,49724,54320"

	UDP_PORTS="1,7,9,69,161,162,513,635,640,641,700,37444,34555,31335,32770,32771,32772,32773,32774,31337,54321"

	# Monitorizar los servicios del rango de puertos del 1 al especificado [1024]:

	ADVANCED_PORTS_TCP="1024"

	ADVANCED_PORTS_UDP="1024"

	# puertos excluidos del scaneo:

	ADVANCED_EXCLUDE_TCP="113,139"

	ADVANCED_EXCLUDE_UDP="520,138,137,67"

	# Archivo con ips que no queremos bloquear:

	IGNORE_FILE="/etc/portsentry/portsentry.ignore"

	# Direcciones detectadas intentando accesar puertos monitoreados:

	HISTORY_FILE="/var/lib/portsentry/portsentry.history"

	BLOCKED_FILE="/var/lib/portsentry/portsentry.blocked"

	# No resolver la ip del host atacante [con valor 1 lo resuelve]:

	RESOLVE_HOST = "0"

	BLOCK_UDP="0"

	BLOCK_TCP="0"

	# Configurar la actuación de los distintos intentos de intrusión [0=no bloquear, 1=Bloquear y 2=Ejecutar un comando externo]:

	KILL_ROUTE="/sbin/route add -host $TARGET$ reject"

	# Opción para los atacantes insistentes [bloqueo total por TCPwrappers]:

	KILL_HOSTS_DENY="ALL: $TARGET$ : DENY"

	# Indica qué tan rápido marcar una intento fallido de conexión como un ataque. 0=paranoico, 1 y 2=permite algunos errores. Valores superiores a 2 mejor descartarlos]

	SCAN_TRIGGER="0"

	# Comunicar un mensaje al atacante:

	PORT_BANNER="** UNAUTHORIZED ACCESS PROHIBITED *** IP LOGGED "

