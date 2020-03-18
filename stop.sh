#!/bin/sh
DIR=$(dirname $0)
SETENV=${DIR}/setenv

if [ ! -f ${SETENV} ]; then 
  echo ${SETENV} file is missing. Use setenv.tmpl as template 
  exit 1
fi

. ${SETENV}

BASIC_AUTH_FILE=$DIR/.traefik-basic-auth 

export BASIC_AUTH_ENTRY=$(cat ${BASIC_AUTH_FILE})

docker-compose down 
