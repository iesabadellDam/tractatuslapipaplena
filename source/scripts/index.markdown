---
layout: page
title: "scripts"
date: 2013-03-09 22:50
comments: true
sharing: true
footer: true
---

### destrac

Descarga y consultas del tractatus via consola.

Instalar las dependencias:

>\# apt-get install cowsay ccze wget

{% include_code destrac lang:bash destrac %}

### servidef

script que muestra las ips y su procedencia de los ataques bloqueados por fail2ban a nuestro servidor. En primer lugar instalar las dependencias:

>\# apt-get install fail2ban geoip-bin ccze

{% include_code destrac lang:bash servidef %}
