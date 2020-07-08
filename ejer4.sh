#!/bin/bash

if [ "$#" -eq 0 ] ; then
	directory=$HOME
    elif [ "$#" -eq 1 ] ; then
    	directory=$1
    else
    	echo "ERROR, necesita 1 o ningún argumento"
    	exit 1
fi

while : ; do
	
	echo "Procesando directorio $directory"
	cd $directory || exit 1  # En el caso de que el comando cd falle, sale del programa
	echo -e "\nDirectorios en los que se puede entrar:\n"
	
	for dir in *; do 
    	if [ -d "$dir" ] && [ -w "$dir" ] && [ -r "$dir" ]; then
        	echo $dir
    	fi
	done

	echo -e "\nFicheros que se pueden escribir y ejecutar:\n"
	for files in *; do 
    	if [ -f "$files" ] && [ -w "$files" ] && [ -x "$files" ]; then
        	echo $files
    	fi
	done

	read -p "Quiere procesar otro directorio? (s/n):" yes_no

	if [ "$yes_no" = "n" ]; then
		break
	elif [ "$yes_no" = "s" ]; then
		read -p "Introduzca el nombre de directorio:" directory
	else
		echo "Error"
		exit 1
	fi
			
done

