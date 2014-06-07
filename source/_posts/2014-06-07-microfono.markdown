---
layout: post
title: "microfono"
date: 2014-06-07 07:11
comments: true
categories: 
---
(activar micro del monitor).

>\# gedit /etc/modprobe.d/alsa-base.conf

Añadir:

options snd_hda_intel model=laptop options snd-hda-intel position_fix=1 enable=yes

Reiniciar

