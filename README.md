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
- <img width="802" height="186" alt="image" src="https://github.com/user-attachments/assets/bc177e05-53ae-4ea3-812c-33d6da0dc425" />

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
- <img width="663" height="203" alt="image" src="https://github.com/user-attachments/assets/424737a2-821d-4358-8b89-85fbda3a1799" />

---


# Explicación de Comandos de Linux
6. expliqué para qué sirve los comandos: ls –lh, ls-l, ls-a,rm,mv, wget, traceroute, netstat -i y de un ejemplo de su uso.

- ls -lh
El comando ```ls -lh``` muestra el contenido de un directorio en formato largo (```-l```) y con tamaños de archivo en formato legible para humanos (```-h```), como KB, MB o GB.

- <img width="506" height="145" alt="image" src="https://github.com/user-attachments/assets/b07f6370-e226-49b6-bfd1-739e754daad7" />

- ls -l
El comando ```ls -l``` permite listar los archivos y carpetas mostrando información detallada como permisos, propietario, tamaño del archivo y fecha de modificación.

- <img width="520" height="181" alt="image" src="https://github.com/user-attachments/assets/2bd83361-7269-4405-9b3d-a804c79a18d1" />

- ls -a
El comando ```ls -a``` muestra todos los archivos dentro de un directorio, incluyendo los archivos ocultos (los que comienzan con .).

- <img width="605" height="225" alt="image" src="https://github.com/user-attachments/assets/c4280b30-8972-44f1-8838-75fb25e10587" />

- rm
El comando ```rm``` se utiliza para eliminar archivos o directorios desde la terminal.
Eliminar un archivo:
- <img width="473" height="51" alt="image" src="https://github.com/user-attachments/assets/283d4de5-dbfe-4ad0-9e97-316619b4edad" />

Eliminar un directorio:
- <img width="439" height="42" alt="image" src="https://github.com/user-attachments/assets/90a87506-bdb1-4983-bf55-7389b2cca8d7" />

- mv
El comando ```mv``` permite mover archivos entre directorios o cambiar el nombre de un archivo.
Mover un archivo:
- <img width="662" height="303" alt="image" src="https://github.com/user-attachments/assets/51f7f792-51a2-4ce2-aa00-cf02dfbea56f" />

- wget
El comando ```wget``` se utiliza para descargar archivos desde internet utilizando la terminal.
- <img width="800" height="194" alt="image" src="https://github.com/user-attachments/assets/bcc126c9-f723-4680-851d-4d36c60a3e34" />

- traceroute
El comando ```traceroute``` muestra la ruta que siguen los paquetes de red desde el computador hasta un destino en internet, mostrando los diferentes nodos por los que pasa la conexión.
- <img width="559" height="222" alt="image" src="https://github.com/user-attachments/assets/0ddc5f71-274e-4bef-8859-77fb8933bdcc" />

- netstat -i
El comando ```netstat -i``` muestra información sobre las interfaces de red del sistema, incluyendo los paquetes enviados y recibidos.
- <img width="807" height="230" alt="image" src="https://github.com/user-attachments/assets/3ad97681-fd8b-4e61-ac72-ba6048469e71" />

---

# Gestión de Archivos y Directorios en Linux
1. Crear la carpeta proyecto en el directorio personal: Primero verificamos la ubicación actual y luego creamos la carpeta
```
pwd
mkdir proyecto
cd proyecto
```
- <img width="349" height="117" alt="image" src="https://github.com/user-attachments/assets/bc720bd0-e480-4986-9254-ddcc89a1498e" />

2. Crear las carpetas docs, imagenes y scripts
Dentro de la carpeta proyecto:
- <img width="439" height="113" alt="image" src="https://github.com/user-attachments/assets/e5c82e10-12ba-4220-87ff-98dfc4a46c6d" />

3. Crear archivos reporte.txt y app.sh
Creamos los archivos vacíos en sus respectivas carpetas:
```
touch docs/reporte.txt
touch scripts/app.sh
```
- <img width="521" height="267" alt="image" src="https://github.com/user-attachments/assets/df46a950-d779-412b-aa34-d106eb074b12" />

4. Verificar el tipo del archivo reporte.txt
- <img width="528" height="49" alt="image" src="https://github.com/user-attachments/assets/8a392ac8-c629-42fc-b8e2-6f1fac5ab915" />

5. Listar el contenido de proyecto incluyendo archivos ocultos
- <img width="533" height="166" alt="image" src="https://github.com/user-attachments/assets/40360f3f-ddeb-4a2e-958c-2620da08a729" />

6. Copiar reporte.txt a la carpeta imagenes
- <img width="580" height="164" alt="image" src="https://github.com/user-attachments/assets/4ff74d69-a14a-45ff-b692-f163048f7b43" />

7. Mover app.sh a la carpeta docs
- <img width="529" height="95" alt="image" src="https://github.com/user-attachments/assets/1176e579-2620-44a0-8419-8df60d99dcc7" />

8. Renombrar reporte.txt dentro de docs
- <img width="728" height="98" alt="image" src="https://github.com/user-attachments/assets/54243b3f-552d-4d02-ab48-1f364ddbbe7d" />

9. Mostrar estructura del proyecto con tree hasta nivel 2
- <img width="400" height="231" alt="image" src="https://github.com/user-attachments/assets/059c095f-9aed-41f0-9d42-84d9b15f8ce5" />

10. Eliminar reporte_final.txt con confirmación
- <img width="717" height="53" alt="image" src="https://github.com/user-attachments/assets/2ddf0b59-791f-48a3-a634-17a7d89f1f0c" />

11. Eliminar la carpeta imagenes con su contenido
- <img width="436" height="72" alt="image" src="https://github.com/user-attachments/assets/781a12c6-b6c9-49e1-bf92-1323d21aa1e8" />







