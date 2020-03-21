#! /bin/sh

kill -9 $(pgrep webserver)
cd /opt/go/src/devops/
git pull 
cd webserver/
./webserver &
