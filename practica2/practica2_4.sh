#!/bin/bash
#816787, Villagrasa Labrador, Alain, T, [1], A
#848884, Herce Cruz, Daniel, T, [1], A

echo -n "Introduzca una tecla: "
read tecla

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
