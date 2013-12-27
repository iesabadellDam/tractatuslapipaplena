---
layout: post
title: "cpufreq-set"
date: 2013-12-27 19:40
comments: true
categories: 
---
Define el perfil de la CPU [powersave, performance, conservative, userspace, ondemand] así como la velocidad y otros parámetros

>\# cpufreq-set --governor powersave (Define el perfil de velocidad de la CPU. Perfiles disponibles: conservative, powersave, performance, ondemand, userspace)

>\# cpufreq-set -c 0 (Definimos que queremos aplicar el comando a la CPU 0. Si se omite, por defecto tomará este valor. El rango de este valor va de 0 a N-1 CPUs. Por ejemplo con 4 núcleos iria de 0 a 3)

>\# cpufreq-set --min 1200000 –governor PERFIL (define la velocidad mínima del procesador en Hz para el perfil seleccionado, requiere el uso de la opción --governor. En caso de que el valor sea inferior al permitido, se utiliza la velocidad mínima soportada por la CPU. Si tenemos más de una CPU o núcleo, debemos repetir el comando para cada CPU con la opción -c e indicar el número de esta)

>\# cpufreq-set --max 2101000 --governor ondemand (lo mismo que –min pero con la velocidad máxima de la CPU)

>\# cpufreq-set -f 1600000 (Especificamos que queremos que la CPU trabaje a la velocidad deseada. Requiere que estemos usando el perfil userspace)

