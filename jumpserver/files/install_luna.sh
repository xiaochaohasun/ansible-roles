#!/bin/bash 

set -e

. /opt/py3/bin/activate

#upload source code
cd /opt
git clone https://github.com/jumpserver/luna.git

#install luna dependency soft
cd /opt/luna/requirements
yum -y install $(cat rpm_requirements.txt)
pip install -r requirements.txt

#modify jump_port
sed -i 's/8080/'$1'/g' /opt/luna/config.py
