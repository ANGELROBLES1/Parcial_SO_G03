# Parcial_SO_G03
# Script de apagado programado

1. Cree un archivo de script llamado apagar.sh que permita programar el apagado del equipo
desde la terminal; el script debe recibir como parámetro un número entero que representa la
cantidad de minutos a esperar antes del apagado, mostrar un mensaje en pantalla indicando “El
equipo se apagará en X minutos...” donde X corresponde al valor ingresado y, posteriormente,
ejecutar el comando que programe el apagado en Linux; asegúrese de que el script pueda
ejecutarse directamente desde la terminal otorgándole los permisos adecuados y valide que
funcione con un ejemplo de ejecución como ./apagar.sh 5.

Se creó un script llamado `apagar.sh` que permite programar el apagado del sistema en Linux después de una cantidad de minutos especificada por el usuario.

# Código del script

```bash
#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: ./apagar.sh <minutos>"
    exit 1
fi

minutos=$1

echo "El equipo se apagará en $minutos minutos..."

sudo shutdown -h +$minutos
```
<img width="802" height="186" alt="image" src="https://github.com/user-attachments/assets/bc177e05-53ae-4ea3-812c-33d6da0dc425" />
# Permisos de ejecucion
```chmod +x apagar.sh```
# Ejecucion
```./apagar.sh 5```
# Salida esperada
```El equipo se apagará en 5 minutos... ```













