#!/bin/bash
#816787, Villagrasa, Alain, T, 1, A
#848884, Herce, Daniel, T, 1, A

echo -n "Introduzca el nombre de un directorio: "
read DIR

if [ -d "$DIR" ]
then
    # También se puede con un bucle comprobando permisos de cada fichero
    # y contadores
	nFiles=$( find "$DIR" -mindepth 1 -maxdepth 1 -type f | wc -l)
	nDirs=$( find "$DIR" -mindepth 1 -maxdepth 1 -type d | wc -l)

	echo "El numero de ficheros y directorios en $DIR es de $nFiles y $nDirs, respectivamente"

else
	echo "$DIR no es un directorio"
fi

