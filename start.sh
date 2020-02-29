#!/bin/sh
DIR=$(dirname $0)
SETENV=${DIR}/setenv

if [ ! -f ${SETENV} ]; then 
  echo ${SETENV} file is missing. Use setenv.tmpl as template 
  exit 1
fi

. ${SETENV}

sudo chown root:root $DIR/certs/acme.json
sudo chmod 600 $DIR/certs/acme.json

BASIC_AUTH_FILE=$DIR/.traefik-basic-auth 
if [ ! -f $BASIC_AUTH_FILE ]; then
    echo ${BASIC_AUTH_PASSWORD} | docker run -i --rm httpd htpasswd -ni ${BASIC_AUTH_USER} > ${BASIC_AUTH_FILE}
    chmod 600 ${BASIC_AUTH_FILE}
fi

export BASIC_AUTH_ENTRY=$(cat ${BASIC_AUTH_FILE})

. ${DIR}/setenv
docker-compose -f ${DIR}/docker-compose.yml up ${DAEMON}  
