---
layout: post
title: "octopress"
date: 2013-12-15 18:55
comments: true
categories: 
---
[git-core curl zlib1g-dev libssl-dev build-essential libreadline-dev libaml]

CMS para gestión de contenido web que genera automaticamente los archivos html, css y javascript a partir de archivos de texto plano formateado en markdown (Ver) y sin utilizar base de datos. 

Pasos previos para su instalación en Debian y derivados: 

>$ curl -L https://get.rvm.io | bash -s stable –ruby 

>$ source ~/.rvm/scripts/rvm 

>$ rvm install 1.9.3 

>$ rvm use 1.9.3 

>$ rvm rubygems latest 

En Arch (requiere el paquete curl): 

>$ curl -L get.rvm.io | bash -s stable 

>$ source ~/.rvm/scripts/rvm 

>$ rvm requirements 

>$ rvm install 1.9.3 

>$ rvm use 1.9.3 –default 

>$ rvm rubygems current 

Instalación de octopress: 

>$ git clone git://github.com/imathis/octopress.git octopress 

>$ cd octopress 

>$ gem install bundler 

>$ bundle install 

>$ rake install 

Generar contenido (Ver markdown): 

>$ cd octopress 

>$ rake new_post[“nombre_del_nuevo_post”] 

Crea un archivo en la carpeta /home/usuario/octopress/source/_posts/ con el siguiente encabezado: 

	-- 

	layout: post 

	title: “Nombre_del_post” 

	date: 2012-10-17 19:27 

	comments: true 

	categories: 

	-- 

Título del post [title], fecha [date], si permitimos o no comentarios [true/false] y catagorias [categories] entre corchetes y separadas por comas [comandos, redes] 

A continuación de este encabezado introducimos la entrada del post. Al finalizar la entrada para generar el archivo en la carpeta “public”: 

>$ rake generate 

Para visualizarlo en local [http://localhost:4000] lanzar: 

>$ rake preview 

Y no cerrar la terminal. Para matar la previsualización pulsar Ctrl +c 

La configuración del titulo del blog, subtítulo, autor, etc. Algunos parámetros a especificar:

>$ nano _config.yml

	url: http://crontux.homelinux.com

	title: TRACTATUS ELEMENTALIS

	subtitle: Apuntes sobre Bash. GNU/Linux a tope.

	author: lapipaplena

	simple_search: http://google.com/search

	description: Orgasmos con Gnu/linux

	date_format: "%d-%m-%Y"

	search_text: "Buscar"

	paginate: 10 

	pagination_dir: blog 

	recent_posts: 10

	excerpt_link: "Leer m&aacute;s &rarr;"

	code_dir: downloads/scripts

	# Twitter

	twitter_user: templix

	twitter_tweet_count: 6

	twitter_show_replies: false

	twitter_follow_button: true

	twitter_show_follower_count: false

	twitter_tweet_button: true

	# Google Plus Profile

	# Hidden: No visible button, just add author information to search results

	googleplus_user: 107431970267257491799

	googleplus_hidden: false

Para la creación de nuevas páginas:

>$ rake new_page[previa]

Si queremos que la nueva página salga en una pestaña "previa" en la cabecera:

>$ nano source/_includes/custom/navigation.html

	<li><a href="/previa">Previa</a></li>

En este archivo tambien se pueden personalizar los nombres de las pestañas. Si queremos una pestaña con un enlace a una web:

>$ nano source/_includes/custom/navigation.html

	<li><a href="http://www.lapipaplena.net">Web</a></li>

1.-

Crear un apartado "Sobre mi" en el sidebar con una imagen web en el centro de la linea:

>$ nano source/_includes/custom/asides/about.html

Con el siguiente contenido:

	<section>

	  <h1>Sobre mi</h1>

	  <center>

	  <img src="https://lh5.googleusercontent.com/-WyGxndIWvo4/AAAAAAAAAAI/AAAAAAAACRI/L_iOIAgh69A/s250-c/photo.jpg" width="125" height="125">

	  </center>

	  <p>Cualquier texto explicativo</p>

	</section>

Luego añadir el achivo en:

>$ nano _config.yml

en la linea:

	default_asides: [asides/num_entradas.html, asides/recent_posts.html, custom/asides/about.html]

2.-

Para mostrar archivo con código [script.sh, por ejemplo] se ha de colocar en texto plano en la ruta especificada en _config.yml, linea code_dir [downloads/scripts/ en este caso] y si lo queremos en la barra de navegación:

>$ nano source/_includes/custom/navigation.html

Y añadir la linea:

	<li><a href="{{ root_url }}/scripts">Scripts</a></li>

Si lo colocamos en un post, llamarlo con:

	% include_code script.sh lang:bash script.sh %

Al principio de la linea antes del % colocar una llave abierta y al final despues del % la cerrada. Se han omitido porque Octopress lo interpreta.

Nota.- Despues de cualquier modificación en las entradas o en los archivos de configuración lanzar: 

>$ rake generate

3.-

Instalar un nuevo tema:

>$ git clone git://github.com/tommy351/Octopress-Theme-Slash.git .themes/slash

>$ rake install['slash']

>$ rake generate

4.-

Para que las busquedas se realicen en el mismo site y no en la web:

>$ nano _config.yml

Modificar la linea:

	simple_search: http://www.google.com/search?q=site%3Awww.lapipaplena.net&q=

5.-

Quitar la fecha del post en la url:

>$ nano _config.yml

Y dejar la linea:

permalink: /blog/:title/

Con lo que si se borran entradas antiguas para substituirlas por otras nueva con el mismo nombre, la indexación de google no se pierde.

6.-

Colocar en el sidebar un blogroll

Crear el fichero:

>$ nano source/_includes/asides/blog_roll.html

Con el siguiente contenido, adaptado según gustos:

	<section>

	  <h1>Blogs útiles</h1>

	  <ul>

		  <li><a href="http://distrowatch.com">distrowatch</a></li>

		  <li><a href="http://es.wikipedia.org/wiki/Lista_de_n%C3%BAmeros_de_puerto">Listado de puertos</a></li>

		  <li><a href="http://livecdlist.com/">LiveCDs</a></li>

	   </ul>

	</section>

Editar:

>$nano _config.yml

Y añadir asides/blog_roll.html a la linea:

	default_asides: [asides/recent_posts.html, asides/twitter.html, asides/blog_roll.html]

7.-

Modificar el "Posted by" por "Escrito por"

>$ nano source/_includes/post/author.html

Modificar la linea que empieza por "if author":

	<span class="byline author vcard">Escrito por <span class="fn">{{ author }}</span></span>

8.-

Mostrar datos del visitante de la web:

Crear:

>$ nano octopress/source/_includes/asides/ip_visitante.html

Con el siguiente contenido:

	<section>

		    <h1>Datos visitante</h1>

		    <script type="text/javascript" src="http://boastology.com/tools/ip2c/?im=1&cn=1&ip=1"></script>

	</section>

Las opciones de la url, aunque no siempre funcionan correctamente, son:

	im=1 (1 mostrar bandera, 0 no mostrar)

	cn=1 (1 mostrar nombre país, 0 no mostrar)

	ip=1 (1 IP, 0 no mostrar)

>$ nano _config.yml

Y añadir a la linea default_asides el archivo según el lugar que queremos que ocupe en el sidebar [en tercer lugar en este ejemplo]:

	default_asides: [asides/num_entradas.html, asides/recent_posts.html, asides/ip_visitante.html]

9.- 

Para especificar una imagen en octopress, la sintaxis es:

	{% img center http://www.lapipaplena.net/wp-content/uploads/2011/06/lapipaplena.png La_Pipa_Plena %}

Con medidas determinadas y en la derecha:

	{% img right http://www.lapipaplena.net/wp-content/uploads/2011/06/lapipaplena.png 150 250 La_Pipa_Plena %}

10.-

Modificación de colores. Por ejemplo la barra de navegación:

>$ nano sass/custom/_colors.scss

Buscar la variable $nav-bg, descomentarla (quitarle las dos //) y colocar el código de color escogido:

	//$subtitle-color: lighten($header-bg, 58);

	$nav-bg: desaturate(lighten(#C68800, 18), 5);

	//$nav-bg-front: image-url('noise.png');

11.-

Colocar una imagen en el header que previamente habremos copiado en el directorio public/images:

>$ nano source/stylesheets/screen.css

Y pegamos al final:

	body > header {

		background-image: url("/images/tux_gnu.png");

		background-color: #333;

		background-position: right center;

		background-repeat: no-repeat;

	}

12.-

Quitar la opción RSS de la barra de navegación:

>$ nano source/_includes/navigation.html

Y borrarlo en la linea "site.subscribe_rss"

13.-

Centrar el título del blog:

>$ nano source/_includes/custom/header.html

Y dejarlo:

	<hgroup>

	  <div align=center>

	  <h1><a href="{{ root_url }}/">{{ site.title }}</a></h1>

	  {% if site.subtitle %}

		<h2>{{ site.subtitle }}</h2>

	  </div>

	  {% endif %}

	</hgroup>

13.-

Resolver el error en el rake preview "WARN  TCPServer Error: Address already in use - bind(2)"

>$ lsof -i4000 (Para conocer el pid del proceso)

>$ kill -9 PID

14.-

Llevar un archivo de las visita al site:

Crear en la carpeta web el archivo:

nano /var/www/getip.php

Con el siguiente contenido:

	<?php

	$userip = $_SERVER['REMOTE_ADDR'];

	$file = fopen('ips_visitantes.txt', 'r');

	$filedata = fgets($file);

	fclose($file);

	$file = fopen('ips_visitantes.txt', 'a');

	fwrite($file, "\n$filedatan$userip");

	fclose($file);

	?> 

Y luego en la carpeta octopress:

>$ nano source/_includes/after_footer.html

Añadir al final:

	<div style="width: 1px; height: 1px; overflow: hidden; position: absolute; left: -1000px">

	<iframe src="http://crontux.homelinux.com/getip.php"></iframe>

	</div>

15.-

Para que las url se abran en una nueva pestaña.

>$ nano source/javascripts/links.js

Y pegamos:

	$(document).ready(function(){

	    $('a').each(function() {

	        var a = new RegExp('/' + window.location.host + '/');

	        if(!a.test(this.href)) {

	            $(this).click(function(event) {

	                event.preventDefault();

	                event.stopPropagation();

	                window.open(this.href, '_blank');

	            });

	        }

	    });

	});

>$ nano source/_includes/head.html

Añadir la linea:

	<script src="(( root_url ))/javascripts/links.js"></script>

Nota.- Los 4 parentesis que abren y cierran el código "root_url" han de substituirse por llaves "{{"  "}}".

16.-

Añadir en el sidebar las sección "Entradas más populares" [Popular posts]

>$ cd octopress

>$ nano Gemfile

Y añadir al final la linea:

gem 'octopress-popular-posts'

>$ bundle install

>$ bundle exec octopress-popular-posts install

>$ nano _config.yml

Añadir al final la linea [5 es el número de posts que saldrán]:

popular_posts_count: 5

Y en la linea "default_asides:" añadimos en el lugar que deseemos:

default_asides: [....ent_posts.html, custom/asides/popular_posts.html,custom/asid...]

>$ nano .gitignore

Aadir la linea:

.page_ranks

>$ nano source/_includes_custom/asides/popular_posts.html

Y substituir "Popular posts" por "Entradas más vistas"

Para mantener actualizado el plugin lanzar de vez en cuando:

>$ bundle exec octopress-popular-posts install

17.-

Subir el blog a heroku.

Crear una cuenta en <http://www.heroku.com>

	$ gem install heroku (Instalar la gema)

	$ cd octopress (Entrar en el directorio)

	$ heroku create (Pedirá las credenciales de la cuenta)

	$ git config branch.master.remote heroku (Implementar el control remoto via git)

	$ rake generate (Regenerar el site)

	$ git add . (Añadir el proyecto)

	$ git commit -m 'site updated' (Commit de los cambios)

	$ git push heroku master (Subir el sitio local a heroku)

Una vez subido por primera vez el sitio, las siguientes modificaciones se reflejarán con:

	$ rake generate

	$ git commit -a -m "pequeño_comentario_de_los_cambios"

	$ git push heroku master (En algunas ocasiones es suficiente con "git push")

