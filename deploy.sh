#! /bin/sh

sudo -i
kill -9 $(pgrep webserver)
cd ~/devops/
git pull 
cd webserver/
chmod +x webserver
./webserver &