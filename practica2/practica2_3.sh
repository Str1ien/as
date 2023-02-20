#!/bin/bash
#816787, Villagrasa Labrador, Alain, T, [1], A
#848884, Herce Cruz, Daniel, T, [1], A

if [ "$#" -ne 1 ] ; then
    echo "Sintaxis: practica2_3.sh <nombre_archivo>"
else
    if [ -f "$1" ] ; then 
        chmod ug+x "$1"
        stat -c '%A' "$1"
    else
        echo "$1 no existe"
    fi
fi
