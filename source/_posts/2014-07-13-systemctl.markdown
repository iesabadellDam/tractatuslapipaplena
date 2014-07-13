---
layout: post
title: "systemctl"
date: 2014-07-13 16:52
comments: true
categories: 
---
[systemd-sysv]. Systemd es un administrador del sistema y gestor de servicios compatible con SysV al que reemplaza.

>\# systemctl reboot (Reiniciar el pc)

>\# systemctl poweroff (Parar el sistema)

>\# systemctl suspend (Suspender el sistema)

>\# systemctl hibernate (Poner el sistema en hivernación)

>\# systemctl (Listado de unidades activas)

>\# systemctl list-units (Listado de unidades activas)

>\# systemctl --failed (Listado de unidades que han tenido problemas)

>\# systemctl list-unit-files (Listado de unidades instaladas)

>\# systemctl start slim.service (Activa slim de inmediato)

>\# systemctl stop sshd.service (Parar ssh de inmediato)

>\# systemctl restart dhcpcd@eth0.service (Reiniciar conexión por dhcp)

>\# systemctl reload wicd.service (Recargar la configuración de wicd)

>\# systemctl status cronie.service (Muestra el estado de cron)

>\# systemctl is-enabled vsftpd.service (Comprueba si vsftpd está habilitada o no)

>\# systemctl enable NetworkManager.service (Activa el inicio automático de network-manager en el arranque)

>\# systemctl disable smbd.service (Desactiva el inicio automático de samba en el arranque)

>\# systemctl daemon-reload (Recarga systemd, escaneando en busca de unidades nuevas o modificadas)

>\# systemctl isolate multi-user.target (Arrancar en runlevel 3)

>\# systemctl isolate graphical.target (Arrancar en runlevel 5)

1.-

Para incorporar el arranque a grub2, modificar del archivo:

>\# nano /etc/default/grub

La linea:

	GRUB_CMDLINE_LINUX_DEFAULT="quiet init=/bin/systemd"

