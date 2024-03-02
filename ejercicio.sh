#!/bin/bash

rico="lock.txt"
fecha_hora=$(date +"%Y-%m-%d %H:%M:%S")

if [ -f "$rico" ]; then
    echo "Fecha y hora actual: $fecha_hora" >> "$rico"
    echo "Se agrego una linea al archivo "$rico
else
    echo "Fecha y hora actual: $fecha_hora" >> "$rico"
    echo "Se creo el archivo $rico y se agrego una linea."
fi
