---
layout: post
title: "extundelete"
date: 2014-01-28 17:49
comments: true
categories: 
---
[e2fsprogs, e2fslibs, e2fslibs-dev, g++, build-essential]. Recuperación de archivos o directorios borrados. La partición sobre la que se actua ha de estar desmontada. Descargar la aplicación de <http://extundelete.sourceforge.net/> e instalarla con el clasico ./configure, make, sudo make install.

>\# extundelete  /dev/sda11 --restore-directory /datos/dir_borrado (recuperar el directorio dir_borrado de la partición /dev/sda11. Lo guardará en el directorio RECOVERED_FILES)

>\# extundelete  /dev/sda11 --restore-file /datos/imagenes/foto.png -o fotos/ (recuperar un archivo y guardarlo en el directorio fotos)

>\# extundelete /dev/sda11 --restore-all (recuperar toda una partición)

>\# extundelete /dev/sda11 --restore-files files (recuperar de la partición /dev/sda11 los archivos enumerados en "files" a razón de uno por linea)

