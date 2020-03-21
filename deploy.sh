#! /bin/sh

sudo -i
kill -9 $(pgrep webserver)
cd ~/devops/
git pull https://github.com/thinkinghere/devops.git
cd webserver/
chmod +x webserver
./webserver $