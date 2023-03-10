#!/bin/bash
# THE FILE MUST BE RUN FROM THE 'microservicios' FOLDER
current_dir=$(basename $(pwd))
if [ $current_dir != "microservicios" ]; then
  echo ""
  echo -e "\033[31mError!\033[0m: This script must be run inside the \033[33m'microservicios'\033[0m directory!"
  echo ""
  echo -e "Like this: \033[1m./commands/run\033[0m or \033[1msudo ./commands/create\033[0m"
  echo ""
  exit 1
fi

# VARIABLES
db_passwd=$(grep DB_PASSWD .env | cut -d '=' -f2)
db_service=$(grep DB_SERVICE .env | cut -d '=' -f2)
db_user=$(grep DB_USER .env |cut -d '=' -f2)
db_name=$(grep DB_NAME .env | cut -d '=' -f2)
php_service=$(grep PHP_SERVICE .env | cut -d '=' -f2)
dir_share=$(grep DIR_SHARE .env | cut -d '=' -f2)
dir_apache=$(grep DIR_APACHE .env | cut -d '=' -f2)
dir_php=$(grep DIR_PHP .env | cut -d '=' -f2)
dir_templates=$(grep DIR_TEMPLATES .env | cut -d '=' -f2)
dir_db=$(grep DIR_DB .env | cut -d '=' -f2)

# CREATE FOLDERS IF NOT EXISTS
if [ ! -d $dir_share ]; then
  mkdir -p  $dir_share
fi

if [ ! -d $dir_apache ]; then
  mkdir -p $dir_apache
fi

if [ ! -d $dir_php ]; then
  mkdir -p $dir_php
fi

if [ ! -d $dir_db ]; then
  mkdir -p $dir_db
fi

# CREATES THE PHP Dockerfile FROM TEMPLATE
cp $dir_templates/template_php $dir_php/Dockerfile

# COPIES THE WEB TEMPLATE INTO A TEMP FILE
cp $dir_templates/template_index temp

# REPLACES THE KEY VALUES IN TEMP FILE WITH THOSE IN THE .env FILE
sed -i "s/DB_PASSWD/$db_passwd/g" temp
sed -i "s/DB_SERVICE/$db_service/g" temp
sed -i "s/DB_USER/$db_user/g" temp
sed -i "s/DB_NAME/$db_name/g" temp

# SENDS TEMP FILE AS index.php TO ITS LOCATION
mv temp  $dir_share/index.php

# COPIES THE APACHE TEMPLATE INTO A TEMP FILE
cp $dir_templates/template_apache temp
# REPLACES THE KEY VALUE (NAME OF THE PHP SERVICE) IN THE URL OF THE TEMP FILE WITH THE ONE IN THE .env FILE
sed -i "s/PHP_SERVICE/$php_service/g" temp
# SENDS TEMP FILE AS Dockerfile TO ITS LOCATION
mv temp  $dir_apache/Dockerfile

# DOCKER COMPOSE UP
docker compose up
