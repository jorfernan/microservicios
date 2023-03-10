<h1 align="center">Docker Compose: Práctica de MySQL, PHP y Apache</h1>

# Descripción

Práctica de puesta en producción segura donde se crean tres servicios enlazados entre si. Un servidor apache, un intérprete de PHP y una base de datos MySQL.

- El usuario, contraseña y la base de datos a crear se pueden modificar en el archivo .env
- Se requiere una modificación adicional para cambiar los directorios del archivo .env
- Los nombres de los contenedores pueden son modificables desde el archivo .env
- Las versiones tambien pueden cambiarse a voluntad
- El puerto de enlace del host al contenedor tambien puede modificarse

La práctica consistia en la creación de un docker-compose donde se parametrizaran las versiones de las imágenes tomadas para la construcción de los contenedores.

# Requisitos
<div style="display:flex;justify-content:center;align-items:center;">
<a href="https://docs.docker.com/engine/install/"><strong>Docker</strong></a>
<a href="https://docs.docker.com/compose/install/"><strong>Docker Compose</strong></a>
<a href="https://www.gnu.org/software/bash/manual/bashref.html" width=100 height=100><strong>Bash</strong></a>
</div>

# Descarga
###    git clone https://github.com/jorfernan/microservicios.git && cd microservicios

# Crear
Borra los contenedores e imágenes anteriores y crea los servicios (./reset && ./run)

##  sudo ./commands/create

# Borrar todo [ contenedores, imágenes y volúmenes ]
Borra los directorios src y db, para y elimina los contenedores y borra las imágenes de los mismos
##  sudo ./commands/reset

# Ejecución
##  ./commands/run
Crea los directorios src y db y los Dockerfiles de los servicios php y apache según los parámetros del archivo **.env** para finalmente ejecutar el comando docker compose up

# Modificación
Modificar el archivo **.env**
