#/bin/bash
#816787, Villagrasa Labrador, Alain, T, [1], A
#848884, Herce Cruz, Daniel, T, [1], A

echo -n "Introduce el nombre de un directorio: "
read DIR

if [ -d "$DIR/" ]
then
	countD=0
	countA=0
	for fich in "$DIR"/*
	do
		if [ -d "$fich" ]
		then
			((countD++))
		else
			((countA++))
		fi
	done
	echo "El numero de ficheros y directorios en $DIR es de $countA y $countD, respectivamente"


else
	echo "$DIR no es un directorio"
fi

