#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ENV=$1

rm -r ${DIR}/../appengine_apps/styreapp_${ENV}/saksbehandling
cp -r ${DIR}/../source/saksbehandling/ ${DIR}/../appengine_apps/styreapp_${ENV}/
cp -r ${DIR}/configs/google_drive_settings.${ENV}.json ${DIR}/../appengine_apps/styreapp_${ENV}/saksbehandling/google_drive_settings.json
