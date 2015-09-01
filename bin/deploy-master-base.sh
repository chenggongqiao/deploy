#!/bin/bash

cd /web/deploy/
MAINPATH=`pwd`

rm -rf ${MAINPATH}/etc/nginx.conf

cd ${MAINPATH}/bin/
sh reconf-etc-base.sh
cd ${MAINPATH}/

nginx -t
nginx -s reload
supervisorctl reread
supervisorctl update
supervisorctl status
supervisorctl restart memcached:8001
supervisorctl restart redis:8002
supervisorctl restart mongod:8003
supervisorctl restart mysqld:8004

