#!/bin/bash

/usr/local/coreseek/bin/indexer -c /web/deploy/etc/csft.conf --rotate --all 2>&1 >> /web/logs/indexer.log

