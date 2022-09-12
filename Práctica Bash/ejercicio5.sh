#!/bin/bash

num=0

echo "Ingrese números (999 para finalizar)"

until [ $num -eq 999 ]; do
    read num

    if [ $num -ne 999 ]; then
        echo $num >>numeros.txt
    fi
done

echo "Desea ver los números ingresados? (S-s/N-n)"
read opcion

if [ $opcion == "s" -o $opcion == "S" ]; then
    echo "Ingrese O-o para mostrar los números en el orden ingresado"
    echo "Ingrese A-a para mostrar los números en orden ascendente"
    echo "Ingrese D-d para mostrar los números en orden descendente"
    read orden

    case $orden in
    o | O) cat numeros.txt ;;
    a | A) cat numeros.txt | sort -n ;;
    d | D) cat numeros.txt | sort -n -r ;;
    *) echo "Opción inválida" ;;
    esac
fi

rm numeros.txt
