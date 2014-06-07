---
layout: post
title: "curlftpfs"
date: 2014-06-07 07:09
comments: true
categories: 
---
Montar directorios remotos en local.

>\# curlftpfs usuario:contraseña@192.168.1.10 /media/servidor

Para automatizar el proceso, añadir al /etc/fstab la linea:

curlftpfs#usuario:contraseña@192.168.1.10 /media/servidor fuse defaults 0 0

