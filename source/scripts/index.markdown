---
layout: page
title: "scripts"
date: 2013-03-09 22:50
comments: true
sharing: true
footer: true
---

### gestrac

Descarga y consultas del tractatus via consola.

Instalar las dependencias:

>\# apt-get install cowsay ccze git

{% include_code gestrac lang:bash gestrac %}

### servidef

script que muestra las ips y su procedencia de los ataques bloqueados por fail2ban a nuestro servidor. En primer lugar instalar las dependencias:

>\# apt-get install fail2ban geoip-bin ccze

{% include_code gestrac lang:bash servidef %}
