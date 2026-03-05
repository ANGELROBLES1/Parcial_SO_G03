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
! <img width="802" height="186" alt="image" src="https://github.com/user-attachments/assets/bc177e05-53ae-4ea3-812c-33d6da0dc425" />

# Permisos de ejecucion
```chmod +x apagar.sh```
# Ejecucion
```./apagar.sh 5```
# Salida esperada
```El equipo se apagará en 5 minutos... ```

---

# Script de respaldo de carpetas

2.Cree un script llamado backup.sh que reciba como argumento la ruta de una carpeta y genere
una copia comprimida de su contenido; el script debe validar que la carpeta exista, mostrar un
mensaje de confirmación antes de iniciar, crear un archivo comprimido con formato .tar.gz cuyo
nombre incluya la fecha actual (ejemplo: respaldo_2025-09-01.tar.gz) y guardarlo en la misma
ubicación donde se ejecutó el script; pruebe su funcionamiento con un ejemplo de ejecución como
./backup.sh documentos.

Se creó un script llamado `backup.sh` que permite generar una copia comprimida de una carpeta en Linux. El script recibe como argumento la ruta de la carpeta, valida que exista y genera un archivo comprimido `.tar.gz` con la fecha actual.

### Código del script

```bash
#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: ./backup.sh <carpeta>"
    exit 1
fi

carpeta=$1

if [ ! -d "$carpeta" ]; then
    echo "Error: la carpeta '$carpeta' no existe."
    exit 1
fi

echo "Se realizará una copia comprimida de la carpeta '$carpeta'."

fecha=$(date +%Y-%m-%d)
archivo="respaldo_$fecha.tar.gz"

tar -czf "$archivo" "$carpeta"

echo "Backup creado correctamente: $archivo"
```
# Permisos de ejecución
```chmod +x backup.sh```
# Ejemplo de ejecución
```./backup.sh carpetapruebas```
# Salida esperada:
``` Se realizará una copia comprimida de la carpeta 'carpetapruebas'.```
```Backup creado correctamente: respaldo_YYYY-MM-DD.tar.gz```
! <img width="663" height="203" alt="image" src="https://github.com/user-attachments/assets/424737a2-821d-4358-8b89-85fbda3a1799" />

---


# Explicación de Comandos de Linux
6. expliqué para qué sirve los comandos: ls –lh, ls-l, ls-a,rm,mv, wget, traceroute, netstat -i y de un ejemplo de su uso.

- ls -lh
El comando ```ls -lh``` muestra el contenido de un directorio en formato largo (```-l```) y con tamaños de archivo en formato legible para humanos (```-h```), como KB, MB o GB.
! <img width="506" height="145" alt="image" src="https://github.com/user-attachments/assets/b07f6370-e226-49b6-bfd1-739e754daad7" />

- ls -l
El comando ```ls -l``` permite listar los archivos y carpetas mostrando información detallada como permisos, propietario, tamaño del archivo y fecha de modificación.
! <img width="520" height="181" alt="image" src="https://github.com/user-attachments/assets/2bd83361-7269-4405-9b3d-a804c79a18d1" />

- ls -a
El comando ```ls -a``` muestra todos los archivos dentro de un directorio, incluyendo los archivos ocultos (los que comienzan con .).
! <img width="605" height="225" alt="image" src="https://github.com/user-attachments/assets/c4280b30-8972-44f1-8838-75fb25e10587" />

- rm
El comando ```rm``` se utiliza para eliminar archivos o directorios desde la terminal.
Eliminar un archivo:
! <img width="473" height="51" alt="image" src="https://github.com/user-attachments/assets/283d4de5-dbfe-4ad0-9e97-316619b4edad" />
Eliminar un directorio:
! <img width="439" height="42" alt="image" src="https://github.com/user-attachments/assets/90a87506-bdb1-4983-bf55-7389b2cca8d7" />

- mv
El comando ```mv``` permite mover archivos entre directorios o cambiar el nombre de un archivo.
Mover un archivo:
! <img width="662" height="303" alt="image" src="https://github.com/user-attachments/assets/51f7f792-51a2-4ce2-aa00-cf02dfbea56f" />

- wget
El comando ```wget``` se utiliza para descargar archivos desde internet utilizando la terminal.
! <img width="800" height="194" alt="image" src="https://github.com/user-attachments/assets/bcc126c9-f723-4680-851d-4d36c60a3e34" />

- traceroute
El comando ```traceroute``` muestra la ruta que siguen los paquetes de red desde el computador hasta un destino en internet, mostrando los diferentes nodos por los que pasa la conexión.
!<img width="559" height="222" alt="image" src="https://github.com/user-attachments/assets/0ddc5f71-274e-4bef-8859-77fb8933bdcc" />

- netstat -i
El comando ```netstat -i``` muestra información sobre las interfaces de red del sistema, incluyendo los paquetes enviados y recibidos.
! <img width="807" height="230" alt="image" src="https://github.com/user-attachments/assets/3ad97681-fd8b-4e61-ac72-ba6048469e71" />





