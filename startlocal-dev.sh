#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

/opt/google_appengine/dev_appserver.py --php_executable_path=/usr/bin/php --admin_host=0.0.0.0 --host=0.0.0.0 ${DIR}/../appengine_apps/styreapp_dev

