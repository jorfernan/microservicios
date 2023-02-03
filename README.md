# Descripción

Práctica de puesta en producción segura donde se crean tres servicios enlazados entre si. Un servidor apache, un intérprete de PHP y una base de datos MySQL.

- El usuario, contraseña y la base de datos a crear se pueden modificar en el archivo .env
- Se requiere una modificación adicional para cambiar los directorios del archivo .env
- Los nombres de los servicios pueden cambiarse al gusto en el archivo .env
- Las versiones tambien pueden cambiarse a voluntad
- El puerto de enlace entre el host y el contenedor tambien puede modificarse

La práctica consistia en la creación de un docker-compose donde se parametrizaran las versiones de las imágenes tomadas para la construcción de los contenedores.

# Requisitos
docker
docker-compose
bash

# Descarga
git clone https://github.com:jorfernan/microservicios.git && cd microservicios

# Crear
Borra los contenedores e imágenes anteriores (./reset && ./run)
./commands/create

# Borrar todo
./commands/reset

# Ejecución
./commands/run

# Cambio de parámetros
sudo nano .env
