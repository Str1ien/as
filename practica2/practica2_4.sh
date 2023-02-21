#!/bin/bash
#816787, Villagrasa, Alain, T, 1, A
#848884, Herce, Daniel, T, 1, A

echo -n "Introduzca una tecla: "
read tecla

#tomamos unicamente el primer char
tecla=${tecla:0:1}

case $tecla in 
    [[:alpha:]])
        echo "$tecla es una letra"
        ;;
    [[:digit:]])
        echo "$tecla es un numero"
        ;;
    *)
        echo "$tecla es un caracter especial"
        ;;
esac
