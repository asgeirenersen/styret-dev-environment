#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -r ${DIR}/../appengine_apps/styreapp_dev/saksbehandling
cp -r ${DIR}/../source/saksbehandling/ ${DIR}/../appengine_apps/styreapp_dev/
cp -r ${DIR}/configs/google_drive_settings.dev.json ${DIR}/../appengine_apps/styreapp_dev/saksbehandling/google_drive_settings.json
