---
layout: post
title: "virtualbox"
date: 2014-04-03 15:39
comments: true
categories: 
---
[vitualbox-guest-utils]. Herramienta que permite la virtualización de sistemas operativos. 

En la página https://www.virtualbox.org/wiki/Downloads apartado "VirtualBox 4.2 Oracle VM VirtualBox Extension Pack" clicar en "All platforms" y Descargar el paquete de extensiones Oracle_VM_VirtualBox_Extension_Pack-4.2.0-80737.vbox-extpack. Para instalarlo, doble clic en el paquete y seguir instrucciones [aceptar condiciones y contraseña de root].

>\# usermod -aG vboxusers USUARIO (Agregar usuario al grupo vboxusers) 

>\# gpasswd -a $USER vboxsf (Agregar usuario al grupo vboxsf) 

>\# modprobe vboxdrv (Activar módulo)

>$ VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-4.2.16-86992.vbox-extpack (instala un pack de extensiones)

>$ VBoxManage list extpacks  (Ver paquetes de expansión instalados)

1.-

Gestión de máquina virtuales desde consola:

Para la gestión de máquinas virtuales sin interfaz gráfica, se utiliza VboxHeadless para tal proposito que incluye diferentes comandos que veremos en las próximas líneas.

>$ VBoxManage createvm --name "maquina_virtual" --register (Creamos una máquina virtual con el nombre "maquina_virtual")

>$ VBoxManage modifyvm "maquina_virtual" --memory 780 --acpi on --boot1 dvd --nic1 bridged --bridgeadapter1 eth0 --ostype Ubuntu (Modificamos la máquina virtual que hemos creado, asignándole 780MB de RAM, activando ACPI, definiendo que arranque desde CD/DVD, indicando que la tarjeta de red sea en modo bridge y que el la tarjeta de red del sistema a usar es la eth0, y finalmente definiendo que la máquina será un Ubuntu.)

>$ VBoxManage createvdi --filename ~/VirtualBox\VMs/maquina_virtual/maquina_virtual-disk01.vdi --size 30000 (Creamos un disco duro en formato VDI de 30 GB)

>$ VBoxManage storagectl "maquina_virtual" --name "IDE Controller" --add ide (Añadimos un controlador IDE para posteriormente conectar el disco duro)

>$ VBoxManage storageattach "maquina_virtual" --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium ~/VirtualBox\VMs/maquina_virtual/maquina_virtual-disk01.vdi (Asignamos el disco duro a la máquina virtual)

>$ VBoxManage storageattach "maquina_virtual" --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium ~/IS

O/ubuntu-12.04.2-server-i386.iso (Asignamos a la máquina Virtual una ISO de instalación, en este caso de Ubuntu Server)

>$ VBoxManage modifyvm "maquina_virtual" --pae on (activamos PAE en la máquina Virtual)

>$ VBoxManage modifyvm "maquina_virtual" --memory 512 (Modificamos la RAM a 512MB)

>$ VBoxHeadless --startvm "maquina_virtual" (arranca una máquina virtual)

>$ VBoxHeadless --startvm "maquina_virtual" -e "TCP/Ports=7000" & (Arrancamos la máquina virtual indicando que queremos un servidor RDP para conexión remota en el puerto 7000)

>$ VBoxManage controlvm "maquina_virtual" poweroff (Para la máquina virtual. Recomendable parar primero la máquina virtual desde la maquina virtual y luego ejecutar esto)

