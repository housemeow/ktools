#!/bin/bash
DIST_PATH=$1

docker run -d -p 8080:80 -v $DIST_PATH:/usr/share/nginx/html spa-server
