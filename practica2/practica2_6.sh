#!/bin/bash
#816787, Villagrasa Labrador, Alain, T, [1], A
#848884, Herce Cruz, Daniel, T, [1], A

# Tomamos mediante stat, a uno por línea los nombres y fechas de directorios
# con nombre binXXX, los ordenamos por fecha, tomamos la primera línea,
# y finalmente el nombre del directorio que aparece en esa línea.
# Si no había ningún directorio, la salida de error se vacía y direcc será
# la cadena vacía
direcc=$(stat -c %n,%Y ~/bin??? 2> /dev/null | sort -t ',' -k 2 | head -n 1 | cut -d ',' -f 1)

# Si no existía lo creamos
if [ ! "$direcc" ]; then
	direcc=$(mktemp -d ~/binXXX)
	echo "Se ha creado el directorio $direcc"
fi

echo "Directorio destino de copia: $direcc"

count=0

for i in *; do # Copiamos únicamente los ficheros ejecutables
	if [ -f "$i" -a -x "$i" ]; then
		cp "$i" "$direcc"
		echo "./$i ha sido copiado a $direcc"
		((count++))
	fi
done

# Mensaje final
if [ $count -eq 0 ]; then
    echo "No se ha copiado ningun archivo"
else
    echo "Se han copiado $count archivos"
fi
