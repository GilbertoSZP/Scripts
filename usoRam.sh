#!/bin/bash

########################################################
#	Mostrar la cantidad de memoria RAM disponible, el 
#	uso del CPU y el espacio libre en disco duro
########################################################
#	Script echo por StanGil
########################################################
#	Encabezado
########################################################

echo -e "\n\t***************************************"
echo -e "\t*	Script echo por StanGil	      *"
echo -e "\t***************************************"
echo -e "-------------------------------------------------------\n"

########################################################
#	Obtencion de datos
########################################################

memoria=`free -m | grep Mem | cut -c 37-40`	#Obtengo y recorte de todos los datos de la memoria RAM
cpu=`top -n1`
# | cut -c 1-10`
disco=`df -t ext4 -h`	#Obtengo todos los datos del disco duro, en especial de la particio utilizada

########################################################
#	Otra forma
########################################################
#	memoria=`free -m`	
#	RAMlibre=`echo ${memoria:103:16}`
########################################################

########################################################
#	Procesamiento de los datos
########################################################B

CPUuso=`echo $cpu | cut -c 398-407`	#Reduzco todos los datos a lo que necesito
CPUuso=${CPUuso:5:4}	#Le quito los espacios al resulado dejando solo el numero que necesito
HDDlibre=`echo ${disco:81:3}`	#Obtengo los GB libres del disco duro que se obtubo del comando df

########################################################
#	Texto a mostrar con la informacion
########################################################

echo -e "\t->Usted cuenta con "$memoria"MB de memoria RAM libre"
echo -e "\t->Usted se encuentra utilizando "$CPUuso"% de su CPU"
echo -e "\t->Usted cuenta con "$HDDlibre"GB de almacenamiento en disco duro disponible\n"

########################################################
#	Nombre
########################################################

echo -e "-------------------------------------------------------\n"
echo -e "\tZavaleta Parra Gilberto Standal\n"