#!/bin/bash
#816787, Villagrasa Labrador, Alain, T, [1], A
#848884, Herce Cruz, Daniel, T, [1], A

for fich in "$@"
do
	if [ -f "$fich" ] ; then
		more "$fich"
	else
		echo "$fich no es un fichero"
	fi
done
