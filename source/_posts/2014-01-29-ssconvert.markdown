---
layout: post
title: "ssconvert"
date: 2014-01-29 18:34
comments: true
categories: 
---
[gnumeric]. Conversor de formatos de hoja de cálculo por línea de comandos.

>$ ssconvert --list-exporters (Listado de conversiones de salida)

>$ ssconvert --list-importers (Litado de conversiones de entrada)

>$ ssconvert entrada.xls salida.csv (De formato excel a csv)

>$ ssconvert -E utf-8 entrada.xls salida.csv (Especificando una codificación para la salida)

>$ ssconvert --export-type=Gnumeric_stf:stf_assistant -O 'separator=| format=preserve charset=unicode' entrada.xls salida.csv (Especificando opcionalmente un exportador [--export-type] que permite exportar a txt, especificando un separador de campos que no sea el por defecto [el espacio] sinó la barra vertical [|], preservando el formato de las celdas del original [format], otras opciones de format son "automatic" [por defecto] y "raw" [sin formato] y con codificación de salida en unicode [por defecto UTF-8])

