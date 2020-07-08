#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "El script debe tener un argumento"
    exit 1
fi

max=$1

random=$((($RANDOM % $max) + 1))

echo "debug: random = $random"

while [[ ${guess} != ${random} ]]
	do
	read -p "Adivina el numero (entre 1 y $max):" guess

	case $guess 
	
	in $random) 
		echo "HAS ACERTADO"
		break
		;;
	*) 
	echo "PRUEBA OTRA VEZ" 
	;;
	esac
done
