---
layout: post
title: "robots.txt"
date: 2014-01-29 18:33
comments: true
categories: 
---
Archivo que evita que determinado contenido de un sitio web sea indexado por los motores de búsqueda. Este archivo distingue mayúsculas y minúsculas, puede incluir comentario mediante almohadilla [#] y cada grupo User-agen/Disallow debe de estar separado por una linea en blanco.

Algunos comandos:

User-agent (Indica qué tipo de robot debe cumplir con la directiva que se indica)

	User-agent: * (Incluir todos los buscadores)

	User-agent: Googlebot (Especificar el buscador de Google)

	User-agent: Bingbot (Especificar el robot de Bing)

Disallow  (Niega el acceso a un directorio, un archivo o una página)

	Disallow: (Permite la entrada a todo el sitio)

	Disallow: / (Denegar todo el sitio)

	Disallow: /directorio/ (Denegar un directorio)

	Disallow: /restringido*/ (Denegar directorios que comienzan por "restringido")

	Disallow: /pagina.html (Denegar una página)

	Disallow: /*.png$ (Denegar los archivos que terminen con la extensión .png)

Allow (Permitir el acceso a directorios, archivos o páginas)

	Allow: /directorio/subdirectorio/ (Permitir un subdirectorio)

Sitemap (Indica la ruta a un mapa del sitio en XML)

	Sitemap: http://web.com/sitemap.xml

Crawl-delay (Indica número de segundos que debe esperar para cada acceso a cada página)

	Crawl-delay: 30

