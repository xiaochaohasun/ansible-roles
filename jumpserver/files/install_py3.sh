#!/bin/bash

set -e

cd /tmp/Python-$1
./configure
make
make install
