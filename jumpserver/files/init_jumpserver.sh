#!/bin/bash

set -e

. /opt/py3/bin/activate
cd /opt/jumpserver/utils
bash make_migrations.sh
bash init_db.sh
