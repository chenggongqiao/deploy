#!/bin/bash

/usr/bin/fdfs_trackerd /etc/fdfs/tracker.conf stop
/usr/bin/fdfs_storaged /etc/fdfs/storage.conf stop
ps aux | grep fdfs

