#!/bin/bash

MAINPATH=`pwd`
cd /web/deploy/etc/shadowsocks/
ssserver -d stop
cd ${MAINPATH}/

