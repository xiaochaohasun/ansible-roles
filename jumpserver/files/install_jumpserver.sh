#!/bin/bash

set -e

#active py3
myPath=/opt
if [ ! -d "$myPath"]; then 
    mkdir "$myPath"  
fi  
cd /opt
python3 -m venv py3
. /opt/py3/bin/activate

#install jumpv4.0
cd /opt
git clone https://github.com/jumpserver/jumpserver.git
cd /opt/jumpserver/requirements
yum -y install $(cat rpm_requirements.txt)
pip install -r requirements.txt

#install mysqlclient
pip install mysqlclient

