#! /bin/sh

kill -9 $(pgrep webserver)
cd /root/devops/
git pull 
cd webserver/
./webserver &
