---
layout: post
title: "scrounge-ntfs"
date: 2014-01-27 18:35
comments: true
categories: 
---
Permite recuperar datos de particiones ntfs incluso corruptas. 

>\# scrounge-ntfs -l /dev/sda  (Para vusializar los datos del disco)

La salida del comando puede ser paracida a:

Drive: /dev/sdc 

63              16787862        8               6291456        

16787925        471607195       8               6291456 

Con estos datos lanzar:

>\# scrounge-ntfs -m 6291456 -c 8 /dev/sdc 16787925 471607195

