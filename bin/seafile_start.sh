#!/bin/bash

cd /data/seafile/seafile-server-4.0.5

./seahub.sh stop
./seafile.sh stop

./seafile.sh start
./seahub.sh start-fastcgi 9004

