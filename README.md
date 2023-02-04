<h1 align="center">Docker Compose: Práctica de MySQL, PHP y Apache</h1>

# Descripción

Práctica de puesta en producción segura donde se crean tres servicios enlazados entre si. Un servidor apache, un intérprete de PHP y una base de datos MySQL.

- El usuario, contraseña y la base de datos a crear se pueden modificar en el archivo .env
- Se requiere una modificación adicional para cambiar los directorios del archivo .env
- Los nombres de los servicios pueden cambiarse al gusto en el archivo .env
- Las versiones tambien pueden cambiarse a voluntad
- El puerto de enlace del host al contenedor tambien puede modificarse

La práctica consistia en la creación de un docker-compose donde se parametrizaran las versiones de las imágenes tomadas para la construcción de los contenedores.

# Requisitos

<svg width="800px" height="800px" viewBox="0 -35.5 256 256" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid">
    <g>
        <path d="M250.715745,70.4971666 C244.951102,66.4973277 231.740464,64.997388 221.412146,66.9973071 C220.211179,56.9977092 214.68673,48.2480609 205.078993,40.4983724 L199.554544,36.4985331 L195.711449,42.248302 C190.90758,49.7480006 188.505646,60.2475786 189.226226,70.2471769 C189.46642,73.7470364 190.667387,79.9967847 194.270289,85.496564 C190.90758,87.4964838 183.941971,89.996383 174.814621,89.996383 L1.15476998,89.996383 L0.674383104,91.9963028 C-1.00697093,101.9959 -1.00697093,133.244645 18.6888904,157.243681 C33.5808831,175.492947 55.6786788,184.742575 84.7420842,184.742575 C147.672763,184.742575 194.270289,154.493791 216.127891,99.7459909 C224.774854,99.9959813 243.269748,99.7459909 252.637292,80.996745 C252.877486,80.4967649 253.357872,79.4968046 255.039227,75.7469554 L256,73.7470364 L250.715745,70.4971666 L250.715745,70.4971666 Z M139.986573,0 L113.565295,0 L113.565295,24.9989952 L139.986573,24.9989952 L139.986573,0 L139.986573,0 Z M139.986573,29.9987943 L113.565295,29.9987943 L113.565295,54.9977896 L139.986573,54.9977896 L139.986573,29.9987943 L139.986573,29.9987943 Z M108.761427,29.9987943 L82.3401495,29.9987943 L82.3401495,54.9977896 L108.761427,54.9977896 L108.761427,29.9987943 L108.761427,29.9987943 Z M77.5362814,29.9987943 L51.1150037,29.9987943 L51.1150037,54.9977896 L77.5362814,54.9977896 L77.5362814,29.9987943 L77.5362814,29.9987943 Z M46.311135,59.9975886 L19.8898576,59.9975886 L19.8898576,84.9965839 L46.311135,84.9965839 L46.311135,59.9975886 L46.311135,59.9975886 Z M77.5362814,59.9975886 L51.1150037,59.9975886 L51.1150037,84.9965839 L77.5362814,84.9965839 L77.5362814,59.9975886 L77.5362814,59.9975886 Z M108.761427,59.9975886 L82.3401495,59.9975886 L82.3401495,84.9965839 L108.761427,84.9965839 L108.761427,59.9975886 L108.761427,59.9975886 Z M139.986573,59.9975886 L113.565295,59.9975886 L113.565295,84.9965839 L139.986573,84.9965839 L139.986573,59.9975886 L139.986573,59.9975886 Z M171.211719,59.9975886 L144.790441,59.9975886 L144.790441,84.9965839 L171.211719,84.9965839 L171.211719,59.9975886 L171.211719,59.9975886 Z" fill="#2396ED" fill-rule="nonzero">

</path>
    </g>
</svg>
<a href="https://docs.docker.com/engine/install/">Docker</a>
<a href="https://docs.docker.com/compose/install/">Docker Compose</a>

<a href="" width=100 height=100>Bash</a>

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
##    Modificar el archivo **.env**
