---
layout: post
title: "dmidecode"
date: 2014-04-05 18:18
comments: true
categories: 
---
Muestra toda la información de la máquina directamente de la BIOS

>\# dmidecode -t (muestra los elementos sobre los que se puede solicitar)

>\# dmidecode -s (Muestra el listado para afinar más la busqueda de datos)

>\# dmidecode -t memory | grep Size (muestra la memoria y los slots libres)

>\# dmidecode -t processor | grep "Core Count"  (número de “cores” reales)

>\# dmidecode | grep "Current Speed"  (muestra la frecuencia de la RAM)

>\# dmidecode -t 0  (información sobre la BIOS)

>\# dmidecode -t 1  (informacion del fabricante: núm serie, producto...)

>\# dmidecode -t 2 (información sobre la placa base)

>\# dmidecode -t 4  (información sobre la CPU)

>\# dmidecode --type=processor | grep -i -A 1 charac (si el procesador es de 32 o 64 bit)

>\# dmidecode -t memory | grep Maxi | grep Capa (máximo  de memoria soportada)

