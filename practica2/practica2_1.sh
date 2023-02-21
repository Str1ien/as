#!/bin/bash
#816787, Villagrasa, Alain, T, 1, A
#848884, Herce, Daniel, T, 1, A

echo -n "Introduzca el nombre del fichero: "
read nFich # Variable para guardar el nombre del fichero

if [ ! -f "$nFich" ] ; then # Fichero no existe
	echo "$nFich no existe"
else # Existe, y mostramos sus permisos
	echo -n "Los permisos del archivo $nFich son:"
	
	# Lectura
	if [ -r "$nFich" ] ; then
		echo -n "r"
	else
		echo -n "-"
	fi
	
	# Escritura	
	if [ -w "$nFich" ] ; then
		echo -n "w"
	else
		echo -n "-"
	fi
	
	# Ejecucion
	if [ -x "$nFich" ] ; then
		echo "x"
	else
		echo "-"
	fi
fi

