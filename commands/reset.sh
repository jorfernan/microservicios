#!/bin/bash
# Sudo check
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  echo "" 
  echo -e "\033[1m\033[31mError!\033[0m: This script needs to be executed as \033[1msudo\033[0m!"
  echo ""
  exit 1
fi

# Dir check
current_dir=$(basename $(pwd))

if [ $current_dir != "microservicios" ]; then
  echo ""
  echo -e "\033[31mError!\033[0m: This script must be run in the \033[33m'microservicios'\033[0m directory!"
  echo ""
  echo -e "Like this: \033[1msudo ./commands/reset\033[0m"
  echo ""
  exit 1
fi


docker compose down

php_service=$(grep PHP_SERVICE .env | cut -d '=' -f2)
db_version=$(grep VERSION_MYSQL .env | cut -d '=' -f2)
web_service=$(grep WEB_SERVICE .env | cut -d '=' -f2)
dir_src=$(grep DIR_SRC .env | cut -d '=' -f2)
dir_db=$(grep DIR_DB .env | cut -d '=' -f2)

docker rmi microservicios-$php_service microservicios-$web_service mysql:$db_version

if [ -d $dir_src ];
then
  rm -rf $dir_src
fi

if [ -d $dir_db ];
then
  rm -rf $dir_db
fi
