#!/bin/bash

# Nombre del archivo de texto
archivo="fibonacci.txt"

# Función para calcular el número de Fibonacci hasta una posición dada
fibonacci() {
    n=$1
    a=1
    b=2
    echo "Secuencia de Fibonacci hasta la posición $n:"
    echo "$a"
    echo "$b"
    for ((i=2;i<n;i++))
    do
        c=$((a + b))
        echo "$c"
        a=$b
        b=$c
    done
}

# Calcular la secuencia de Fibonacci hasta la posición 10 y escribirla en el archivo
fibonacci 54 > "$archivo"
echo "Se ha generado la secuencia de Fibonacci hasta la posición 10 en el archivo $archivo."

