#!/bin/bash

set -e

. /opt/py3/bin/activate

cd /opt
nohup python jumpserver/run_server.py &

cd /opt/coco
nohup python run_server.py &

cd /opt
nohup python luna/run_server.py &
