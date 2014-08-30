#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

/opt/google_appengine/appcfg.py --noauth_local_webserver --oauth2 update ${DIR}/../appengine_apps/styreapp_dev/
