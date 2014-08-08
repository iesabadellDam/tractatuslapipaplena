---
layout: post
title: "usb_modeswitch"
date: 2014-07-13 16:52
comments: true
categories: 
---
Configuración del modem Huawei. Editar:

>\# gedit /etc/usb_modeswitch.conf

	EnableLogging=0

Y pegar el siguiente contenido:

	# Huawei E1752

	#

	# Contributor:

	DefaultVendor=0x12d1

	DefaultProduct=0x1446

	TargetVendor=0x12d1

	TargetProduct=0x1417

	MessageEndpoint=0x01

	MessageContent="55534243000000000000000000000011060000000000000000000000000000"

Verificar que el número de TargetProduc coincida con la salida de:

>\# lsusb

	Bus 006 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub

	Bus 005 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub

	Bus 004 Device 002: ID 0461:4d03 Primax Electronics, Ltd Kensington Mouse-in-a-box

	Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub

	Bus 003 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub

	Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub

	Bus 001 Device 006: ID 12d1:1417 Huawei Technologies Co., Ltd.

	Bus 001 Device 003: ID 0402:5602 ALi Corp. Video Camera Controller

	Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

Arrancarlo con alguno de los siguientes comandos:

>\# usb_modeswitch -v 12d1 -p 1417 -d 1

>\# usb_modeswitch -c /etc/usb_modeswitch.conf

