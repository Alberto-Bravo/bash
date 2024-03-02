#!/bin/bash

# Nombre del archivo de texto
archivo2="fibonacci2.txt"

read -p "Ingrese el numero de posicion deseado " n

# Función para calcular el número de Fibonacci hasta una posición dada
fibonacci() {
    n=$1
    a=0
    b=1
    echo "Secuencia de Fibonacci hasta la posición $n:"
    echo "$a"
    echo "$b"
    for ((i=2;i<$n;i++))
    do
        c=$((a + b))
        echo "$c"
        a=$b
        b=$c
    done
}

# Calcular la secuencia de Fibonacci hasta la posición 10 y escribirla en el archivo
fibonacci $n > "$archivo2"
echo "Se ha generado la secuencia de Fibonacci hasta la posición $n en el archivo $archivo."
