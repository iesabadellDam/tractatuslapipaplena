---
layout: post
title: "golismero"
date: 2014-07-13 16:49
comments: true
categories: 
---
Framework para auditorías de seguridad y pentesting.

>$ git clone https://github.com/golismero/golismero.git (Descargar la última versión)

>$ cd golismero

>\# python golismero.py localhost -o prueba.html -o prueba.txt --audit-name prueba_localhost (Iniciar la uditoria, que guarde el resultado en .html y .txt y dándole un nombre)

>\# python golismero.py URL -i nikto_output.csv -o report.html -d all (Importar el resultado de un scaneo con nikto [-i] y desactivando todos los plugins [-d])

>\# python golismero.py URL -nd (Sin guardar los resultados en la base de datos. Por defecto lo hace automáticamente)

>\# python golismero.py URL -db database.db -no (Realizar el scaneo y guardarlo en la basa de datos)

>\# python golismero.py -db database.db -d all -o report.html (Generar un informe a partir de un scaneo guardado en la base de datos)

>\# python golismero.py --plugin-list (Ver listado de plugins disponibles)

>\# python golismero.py --plugin-info dns_analyzer (Ver detalles de un plugin concreto)

