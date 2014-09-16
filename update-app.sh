#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ENV=$1

if [ $ENV = "prod" ] ; then
    APP="styret-hallagerbakken"
else
    APP="test-hallagerbakken"
fi

rm -r ${DIR}/../appengine_apps/styreapp_${ENV}/*
cp -r ${DIR}/../source/* ${DIR}/../appengine_apps/styreapp_${ENV}/
cp -r ${DIR}/configs/google_drive_settings.${ENV}.json ${DIR}/../appengine_apps/styreapp_${ENV}/saksbehandling/google_drive_settings.json

sed -i -e "s/__APP_NAME__/${APP}/g" ${DIR}/../appengine_apps/styreapp_${ENV}/app.yaml
