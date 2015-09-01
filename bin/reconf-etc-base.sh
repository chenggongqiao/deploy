#!/bin/bash

mkdir -p /web/logs

cd /web/deploy/
MAINPATH=`pwd`

rm -rf /etc/redis.conf
ln -s ${MAINPATH}/etc/redis.conf /etc/redis.conf

rm -rf /etc/mongod.conf
ln -s ${MAINPATH}/etc/mongod.conf /etc/mongod.conf

rm -rf /etc/my.cnf
ln -s ${MAINPATH}/etc/my.cnf /etc/my.cnf

mkdir -p /usr/local/nginx/conf/nginx.conf.d/
rm -rf /usr/local/nginx/conf/nginx.conf
ln -s ${MAINPATH}/etc/nginx/nginx.conf /usr/local/nginx/conf/nginx.conf
rm -rf /usr/local/nginx/conf/nginx.conf.d/nginx.test.conf
ln -s ${MAINPATH}/etc/nginx/nginx.test.conf /usr/local/nginx/conf/nginx.conf.d/nginx.test.conf
rm -rf /usr/local/nginx/conf/nginx.conf.d/base
ln -s ${MAINPATH}/etc/nginx/base /usr/local/nginx/conf/nginx.conf.d/base
rm -rf /usr/local/nginx/conf/nginx.conf.d/CGQ
ln -s ${MAINPATH}/etc/nginx/CGQ /usr/local/nginx/conf/nginx.conf.d/CGQ

rm -rf /etc/supervisord.conf
ln -s ${MAINPATH}/etc/supervisor/supervisord.conf /etc/supervisord.conf
rm -rf /etc/supervisord.conf.d
mkdir -p /etc/supervisord.conf.d
rm -rf /etc/supervisord.conf.d/base
ln -s ${MAINPATH}/etc/supervisor/base /etc/supervisord.conf.d/base
rm -rf /etc/supervisord.conf.d/CGQ
ln -s ${MAINPATH}/etc/supervisor/CGQ /etc/supervisord.conf.d/CGQ

rm -rf /usr/local/httpd/conf/httpd.conf
ln -s /web/deploy/etc/httpd/httpd.conf /usr/local/httpd/conf/httpd.conf

rm -rf /etc/fdfs
ln -s ${MAINPATH}/etc/fdfs /etc/fdfs

rm -rf /data/nexus/nexus-2.8.1-01/bin/jsw/conf/wrapper.conf
ln -s ${DEPLOYPATH}/etc/nexus/wrapper.conf /data/nexus/nexus-2.8.1-01/bin/jsw/conf/wrapper.conf

rm -rf /data/nexus/nexus-2.8.1-01/conf/logback-access.xml
ln -s ${DEPLOYPATH}/etc/nexus/logback-access.xml /data/nexus/nexus-2.8.1-01/conf/logback-access.xml

rm -rf /data/nexus/nexus-2.8.1-01/conf/nexus.properties
ln -s ${DEPLOYPATH}/etc/nexus/nexus.properties /data/nexus/nexus-2.8.1-01/conf/nexus.properties

mkdir -p /data/nexus/sonatype-work/nexus/conf/
rm -rf /data/nexus/sonatype-work/nexus/conf/logback.properties
ln -s ${DEPLOYPATH}/etc/nexus/logback.properties /data/nexus/sonatype-work/nexus/conf/logback.properties

