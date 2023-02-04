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

<svg 
   xmlns:dc="http://purl.org/dc/elements/1.1/"
   xmlns:cc="http://creativecommons.org/ns#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
   width="256"
   height="256"
   viewBox="0 0 256 256"
   version="1.1"
   id="svg8"
   inkscape:version="0.92.3 (2405546, 2018-03-11)"
   sodipodi:docname="gala-file-script.svg"
   inkscape:export-xdpi="96"
   inkscape:export-ydpi="96">
  <title
     id="title851">Gala icon set</title>
  <defs
     id="defs2" />
  <sodipodi:namedview
     id="base"
     pagecolor="#ffffff"
     bordercolor="#666666"
     borderopacity="1.0"
     inkscape:pageopacity="0.0"
     inkscape:pageshadow="2"
     inkscape:zoom="5.6"
     inkscape:cx="108.31153"
     inkscape:cy="69.032565"
     inkscape:document-units="px"
     inkscape:current-layer="layer1"
     inkscape:document-rotation="0"
     showgrid="true"
     units="px"
     inkscape:pagecheckerboard="true"
     inkscape:showpageshadow="false"
     inkscape:window-width="1854"
     inkscape:window-height="1016"
     inkscape:window-x="66"
     inkscape:window-y="27"
     inkscape:window-maximized="1"
     inkscape:snap-page="true"
     inkscape:snap-text-baseline="true"
     inkscape:snap-center="true"
     inkscape:snap-others="true"
     inkscape:snap-object-midpoints="true"
     inkscape:snap-midpoints="true"
     inkscape:snap-smooth-nodes="true"
     inkscape:snap-intersection-paths="true"
     inkscape:object-paths="true"
     inkscape:snap-bbox="true"
     inkscape:bbox-paths="true"
     inkscape:bbox-nodes="true"
     inkscape:snap-bbox-midpoints="true"
     inkscape:snap-bbox-edge-midpoints="true"
     showguides="true"
     inkscape:guide-bbox="true"
     width="800px">
    <inkscape:grid
       type="xygrid"
       id="grid862"
       empspacing="16" />
    <sodipodi:guide
       position="128,248"
       orientation="0,1"
       id="guide875"
       inkscape:locked="false" />
    <sodipodi:guide
       position="144,8"
       orientation="0,1"
       id="guide877"
       inkscape:locked="false" />
  </sodipodi:namedview>
  <metadata
     id="metadata5">
    <rdf:RDF>
      <cc:Work
         rdf:about="">
        <dc:format>image/svg+xml</dc:format>
        <dc:type
           rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
        <dc:title>Gala icon set</dc:title>
        <dc:source>https://github.com/sisyphusion/gala-icons</dc:source>
        <dc:subject>
          <rdf:Bag />
        </dc:subject>
        <dc:creator>
          <cc:Agent>
            <dc:title>Jake Wells</dc:title>
          </cc:Agent>
        </dc:creator>
        <dc:contributor>
          <cc:Agent>
            <dc:title />
          </cc:Agent>
        </dc:contributor>
      </cc:Work>
    </rdf:RDF>
  </metadata>
  <g
     inkscape:label="icon"
     inkscape:groupmode="layer"
     id="layer1">
    <path
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc"
       id="path870"
       d="M 32,48 V 207.9236"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc"
       id="path874"
       d="M 224,96 V 208"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc"
       id="path880"
       d="m 64,16 h 80"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc"
       id="path882"
       d="M 64,240 H 192"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 224,208 c 0.0874,15.98169 -16,32 -32,32"
       id="path886"
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc" />
    <path
       transform="scale(-1,1)"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m -32,208 c -10e-7,16 -16,32 -32,32"
       id="path886-3"
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc" />
    <path
       transform="scale(-1)"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="M -32,-47.976784 C -32,-32 -48,-16.356322 -63.999997,-16.000002"
       id="path886-3-6"
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc" />
    <path
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc"
       id="path933"
       d="M 223.91257,96.071779 144,16"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" />
    <path
       transform="scale(-1,1)"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m -144,64 c -0.0492,15.912926 -16.06452,31.999995 -32,32"
       id="path886-5"
       inkscape:connector-curvature="0"
       sodipodi:nodetypes="cc" />
    <path
       inkscape:connector-curvature="0"
       id="path950"
       d="M 144,64 V 16"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       sodipodi:nodetypes="cc" />
    <path
       inkscape:connector-curvature="0"
       id="path952"
       d="m 176,96 h 48"
       style="fill:none;stroke:#000000;stroke-width:15.9923439;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       sodipodi:nodetypes="cc" />
    <path
       style="fill:none;stroke:#000000;stroke-width:16;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="M 64,208 96.000003,176 64,144"
       id="path821"
       inkscape:connector-curvature="0" />
    <path
       style="fill:none;stroke:#000000;stroke-width:16;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"
       d="m 112,208 h 32"
       id="path823"
       inkscape:connector-curvature="0" />
  </g>
</svg>
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
