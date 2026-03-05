#!/bin/bash

# Verificar si se ingresó un argumento
if [ -z "$1" ]; then
    echo "Uso: ./backup.sh <carpeta>"
    exit 1
fi

carpeta=$1

# Verificar si la carpeta existe
if [ ! -d "$carpeta" ]; then
    echo "Error: la carpeta '$carpeta' no existe."
    exit 1
fi

echo "Se realizará una copia comprimida de la carpeta '$carpeta'."

# Obtener fecha actual
fecha=$(date +%Y-%m-%d)

# Nombre del archivo de respaldo
archivo="respaldo_$fecha.tar.gz"

# Crear el archivo comprimido
tar -czf "$archivo" "$carpeta"

echo "Backup creado correctamente: $archivo"
