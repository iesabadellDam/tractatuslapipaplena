---
layout: post
title: "microfono"
date: 2013-12-27 19:42
comments: true
categories: 
---
>\# gedit /etc/modprobe.d/alsa-base.conf

Añadir:

options snd_hda_intel model=laptop options snd-hda-intel position_fix=1 enable=yes

Reiniciar

