---
layout: post
title: "duplicity"
date: 2014-01-29 18:30
comments: true
categories: 
---
Herramienta para realizar backups tanto en modo local como remoto

>\# duplicity full /home file:///backups/ (realiza un backup copmpleto [full] en modo local de la carpeta /home en la carpeta /backups)

>$ duplicity /home/usuario scp://usuario@host/dir (Backup de un directorio local a un servidor remoto)

Algunas opciones:

	--no-encryption (Sin codificar. Por defecto codifica los archivos en el destino)

	--include /home/usuario/datos/documentos (Backups de un subdirectorio especifico)

	--remove-all-but-n-full 1 --force (Sólo dejará en destino la última copia "full", borrando la anterior y las incrementales que dependen de ella) 

