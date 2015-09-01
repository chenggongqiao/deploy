#!/bin/bash

MAINPATH=`pwd`
cd /web/deploy/etc/shadowsocks/
nohup ssserver -d start > /web/logs/shadowsocks.log 2>&1 &
cd ${MAINPATH}/
tail -f /web/logs/shadowsocks.log

