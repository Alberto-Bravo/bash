#!/bin/bash

archivo_csv="Accidentes_ags_2021.csv"

if [ ! -f "$archivo_csv" ]; then
    echo "El archivo $archivo_csv no existe."
    exit 1
fi

suma_tractor=$(awk -F',' '{sum+=$21} END {print sum}' "$archivo_csv")

echo "Suma total de la columna 'tractor' es: $suma_tractor"