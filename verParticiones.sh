#!/bin/bash

########################################################
#	Verificar el espacio libre en las particiones e 
#	indicar un advertencia cuando el sistema de archivos 
#	esté a un 60 % y una llamada de alerta si sobrepasa 
#	el 80 %
########################################################
#	Script echo por StanGil
########################################################
#	Encabezado
########################################################

echo -e "\n\t***************************************"
echo -e "\t*	Script echo por StanGil	      *"
echo -e "\t***************************************"
echo "-------------------------------------------------------"

########################################################
#	Obtencion de los datos
########################################################

resultado=`df -t ext4 -h`	#Obtengo todos los datos del disco duro

########################################################
#	Procesamiento de los datos
########################################################

porcentaje=`echo ${resultado:86:3}`	#Separo toda la informacion obtenida y solo utilizo lo que necesito

########################################################
#	Comprobaciones de los casos descritos en el problema
########################################################

if [ $porcentaje -ge 80 ]; then #Comprobacion de que se sobrepasa el 80% del almacenamiento del disco duro
	echo -e "\n\t¡¡¡¡¡¡¡ALERTA!!!!!!!!!! ha ocupado el $porcentaje% de su particion\n"
else
	if [ $porcentaje -ge 60 ]; then	#Comprobacion de que sobrepasa el 60% del almacenamiento del disco duro
		echo -e "\n\t¡¡ADVERTENCIA!! ha ocupado el $porcentaje% de su particion\n"
	else	#Si los casos anteriores no se cumples significa que el almacenamiento se encuentra correctamente
		echo -e "\n\tUsted ha utilizado el $porcentaje% de su particion\n"
	fi
fi

########################################################
#	Nombre
########################################################

echo -e "-------------------------------------------------------\n"
echo -e "\tZavaleta Parra Gilberto Standal\n"