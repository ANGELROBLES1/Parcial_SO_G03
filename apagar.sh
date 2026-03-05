#!/bin/bash

# Verificar que se ingrese un parámetro
if [ -z "$1" ]; then
    echo "Uso: ./apagar.sh <minutos>"
    exit 1
fi

minutos=$1

echo "El equipo se apagará en $minutos minutos..."

# Programar apagado
sudo shutdown -h +$minutos
