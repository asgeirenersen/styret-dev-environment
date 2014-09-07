#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ENV=$1
echo "ENV: " $ENV "\n"


APP_PATH="${DIR}/../appengine_apps/styreapp_$ENV"

if [ $ENV = "prod" ] ; then
    PORT=8081
    ADMIN_PORT=8001
else
    PORT=8080
    ADMIN_PORT=8000
fi

echo "Binding to ports: $PORT and $ADMIN_PORT \n" 

/opt/google_appengine/dev_appserver.py --php_executable_path=/usr/bin/php --admin_host=0.0.0.0 --host=0.0.0.0 --port=$PORT --admin_port=$ADMIN_PORT "$APP_PATH"

