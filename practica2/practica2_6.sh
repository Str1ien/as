#!/bin/bash
#816787, Villagrasa, Alain, T, 1, A
#848884, Herce, Daniel, T, 1, A

# Tomamos mediante stat, a uno por línea los nombres y fechas de directorios
# con nombre binXXX (descartando la salida de error si no había), los ordenamos
# por fecha con sort, tomamos la primera línea (el de menor fecha) con head, y 
# con cut tomamos el nombre de dicho directorio.
# Si no existía ninguno, direcc será la cadena vacía.
direcc=$(stat -c %n,%Y ~/bin??? 2> /dev/null | sort -t ',' -k 2 | head -n 1 | cut -d ',' -f 1)

if [ ! "$direcc" ]; then
	direcc=$(mktemp -d ~/binXXX)
	echo "Se ha creado el directorio $direcc"
fi

echo "Directorio destino de copia: $direcc"

count=0

# Copia de todos los ficheros ejecutables
for i in *; do
	if [ -f "$i" -a -x "$i" ]; then
		cp "$i" "$direcc"
		echo "./$i ha sido copiado a $direcc"
		((count++))
	fi
done

if [ $count -eq 0 ]; then
    echo "No se ha copiado ningun archivo"
else
    echo "Se han copiado $count archivos"
fi
