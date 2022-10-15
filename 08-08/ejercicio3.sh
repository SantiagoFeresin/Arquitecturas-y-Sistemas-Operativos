#!/bin/bash

echo "Ingrese una nota"
read nota

if [[ $nota -ge 6 && $nota -le 10 ]]; then
	echo "Promocionado."
elif [[ $nota -lt 6 && $nota -ge 4 ]]; then
	echo "Regular."
elif [[ $nota -lt 4 && $nota -gt 0 ]]; then
	echo "Desaprobado."
else
	echo "Nota inválida."
fi
