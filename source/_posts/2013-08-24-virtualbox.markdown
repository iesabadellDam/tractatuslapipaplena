---
layout: post
title: "virtualbox"
date: 2013-08-24 06:50
comments: true
categories: 
---
Herramienta que permite la virtualización de sistemas operativos. 

En la página https://www.virtualbox.org/wiki/Downloads apartado "VirtualBox 4.2 Oracle VM VirtualBox Extension Pack" clicar en "All platforms" y Descargar el paquete de extensiones Oracle_VM_VirtualBox_Extension_Pack-4.2.0-80737.vbox-extpack. Para instalarlo, doble clic en el paquete y seguir instrucciones [aceptar condiciones y contraseña de root].

>\# usermod -aG vboxusers USUARIO (Agregar usuario al grupo vboxusers) 

>\# gpasswd -a $USER vboxsf (Agregar usuario al grupo vboxsf) 

>\# modprobe vboxdrv (Activar módulo)

>\# VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-4.2.16-86992.vbox-extpack (instala un pack de extensiones)

>\# VBoxManage list extpacks  (Ver paquetes de expansión instalados)

