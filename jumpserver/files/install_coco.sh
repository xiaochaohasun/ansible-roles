#!/bin/bash

set -e

#install coco
. /opt/py3/bin/activate
cd /opt
git clone https://github.com/jumpserver/coco.git

#install dependency soft
cd /opt/coco/requirements
yum -y  install $(cat rpm_requirements.txt)
pip install -r requirements.txt

#modify jump_port
sed -i 's/8080/'$1'/g' /opt/coco/config.py
