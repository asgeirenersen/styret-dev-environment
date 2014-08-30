#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -r ${DIR}/../appengine_apps/styreapp_dev/saksbehandling
cp -r ${DIR}/../source/saksbehandling/ ${DIR}/../appengine_apps/styreapp_dev/
