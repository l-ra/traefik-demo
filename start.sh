#!/bin/sh
DIR=$(dirname $0)
SETENV=${DIR}/setenv

if [ ! -f ${SETENV} ]; then 
  echo ${SETENV} file is missing. Use setenv.tmpl as template 
  exit 1
fi

$BASIC_AUTH_ENTRY=$(echo ${BASIC_AUTH_PASSWORD} | docker run -i --rm  httpd htpasswd -ni ${BASIC_AUTH_USER})

. ${DIR}/setenv
docker-compose up -d -f ${DIR}/docker-compose.yml 
