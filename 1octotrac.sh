#!/bin/bash
#!/bin/bash
# Date: 12-12-2013
# Author: "lapipaplena" <lapipaplena@gmail.com>
# Version: 6
# Licence: GPL v3.0
# Description: Script que transforma el tractatus en
# archivos markdown para octopress en github y heroku 
# Require: unzip ccze git
shopt -s extglob
## Colorear las salidas de echo
function color ()
{
	echo $1 | ccze -A
}
## Realizar las entradas a octopress
function _post() {
	for i in `ls $DIR2`
    do
		rake new_post["$i"] | tee 0-nota.txt
        FIL=$(cat 0-nota.txt | cut -d / -f 3)
        cat $DIR2/$i | sed '1d' | sed G >> ../source/_posts/$FIL
        echo " " > 0-nota.txt
        i=i+1
     done
}

## INICIO PROGRAMA
## Comprobar privilegios
if [ "$(id -u)" = "0" ]
then
	echo
	color "Ejecutar el script como usuario sin privilegios..." 
	echo
	exit 0
fi
## Crear directorios de trabajo.
DIR=~/octopress/octotrac
if [ -d $DIR ]
then
        echo
else
        mkdir -p $DIR
fi
cd $DIR
FILES=(`date +%s`)
mkdir $FILES
## Descargar el tractatus.txt
cd $HOME/tractatus
echo
color "<< ....Comprobar actualizaciones [git pull]...... >>"
echo
git pull
echo
cd $DIR
cat $HOME/tractatus/tractatus.txt | sed '1d' > 0-file1.txt
cat 0-file1.txt | sed -e 's/^[#]/>\\#/' -e 's/^[$]/>$/' -e 's/^[<]/\t\</' >> 0-file1.md
cd $FILES
ESTAT=1 # 1 - Linia en blanc, 2- comanda, 
COMANDA=""
while read linia
do
       if [ $ESTAT -eq 1 ] && [ -z "${linia}" ]; 
       then
               ESTAT=1
       else
               if [ $ESTAT -eq 1 ] && [ ! -z "${linia}" ]
               then
                       ESTAT=2
                       read -ra COMANDA <<< "$linia"
                       echo "$linia" >> "$COMANDA"
               elif [ $ESTAT -eq 2 ] && [ -z "${linia}" ]
               then
                       ESTAT=1
               else
                       echo "$linia" >> "$COMANDA"
               fi
       fi
done < ../0-file1.md
### Comprobar si "files" está vacio:
cd ..
ls $FILES >> 0-lista.txt
if [ ! -s 0-lista.txt ]
then
        color "<< Se han detectado errores al procesar el Tractatus... >>"
        exit 1
fi
## Buscar diferencias entre los directorios nuevo y viejo
DIRNUEVO=$(ls -ad */ | sed -n '2p')
DIRANTIGUO=$(ls -ad */ | sed -n '1p')
if [ `ls -ad */ | wc -l` -ge 2 ]
then
        diff -q $DIRNUEVO/ $DIRANTIGUO/ > 0-cambios.txt
                if [ -s  0-cambios.txt ]
                then
                        awk 'length($0) < 45' 0-cambios.txt > 0-cambios1.txt
                        awk 'length($0) > 45' 0-cambios.txt > 0-cambios2.txt
                        color "Las entradas nuevas son: "
                        echo
                        cat 0-cambios1.txt | sed -e 's/\// /g' | awk '{print$5}' | tee 0-cambios.txt 2>/dev/null
                        echo
                        color "Las modificaciones: "
                        echo
                        cat 0-cambios2.txt | sed -e 's/\// /g' | awk '{print$4}' | tee -a 0-cambios.txt 2>/dev/null
                        echo
                        read -p "<< ¿Efectuar los cambios? [s/n] >> " OPCION
                        echo
                        if [ $OPCION = s ]
                        then
                                color "<< El nuevo directorio es $DIRNUEVO... elimino $DIRANTIGUO >>"
                                rm -R $DIRANTIGUO
                        else
                                color " << No efectuo cambios... salir... >> "
                                rm -R $DIRNUEVO
                                rm 0-*
                                exit
                        fi
                        for linea in `cat 0-cambios.txt`; do
                                let numero+=1
                                echo "[$numero] $linea"
                                mkdir FilesMod 2>/dev/null
                                mv $FILES/$linea FilesMod/  2>/dev/null
                                find $HOME/octopress/source/_posts/  -name *-$linea.* -exec rm {} \;
                                done
                                DIR2=FilesMod
                                _post
                                cp FilesMod/* $FILES
                                rm -R FilesMod
                        else
                                        color "<< No  existen modificaciones... >>"
                                        rm -R !($FILES)
                        fi
        else
                        echo
                        color "<< No existe directorio antiguo para verificar modificaciones.... >>"
                        ## Convertir a post
                        DIR2=$FILES
                        rm $DIR/0-*
                        _post
                        echo
fi
## Borrar ficheros usados
echo
color "<< ....Actualizado el directorio y eliminados ficheros temporales... >>"
rm @(0-*.md|0-*.txt) 2>/dev/null
echo
## Colocar en el sidebar el número do entradas
ENTRADAS=$(ls $FILES/* | wc -l)
echo "<section>
<h1>Número de entradas</h1>
        <ul>
        <li>$ENTRADAS</li>
        </ul>
</section>" > ../source/_includes/asides/num_entradas.html
color "<< El Tractatus cuenta con $ENTRADAS entradas... >>"
echo
ENTRADAS=$(ls ../source/_posts/ | wc -l)
POST=$(ls ../octotrac/*/ | wc -l)
if [ "$ENTRADAS" -eq "$POST" ]
        then
                echo
                echo "==================================================="
                color "<< CORRECTO: Coinciden las entradas y los post...>>"
                echo "==================================================="
        else
                echo
                echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
                color "<< ¡¡PELIGRO!! .. REVISAR: ENTRADAS Y POST NO COINCIDEN...>>"
                echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
                echo
fi
echo
OP=s
color "<< ¿Proceder con rake generate, git add, commit y push ? [s/n] >>"
read OP
if [ $OP = s ]
then
        cd $HOME/octopress
        git add .
        echo
        color "<< Realizando rake generate.... >>"
        echo
        rake generate
        echo
        color "<< Añadiendo archivos.... >>"
        git add .
        echo
        color "<< Realizando commit.... >>"
        echo
        git commit -a
        echo
        color "<< Realizando push..... >>"
        echo
        git push heroku master
else
        echo
fi
echo
color "<< Este script ha durado $SECONDS segundos >>"
echo
exit 0
