#! /bin/sh

kill -9 $(pgrep webserver)
cd ~/devops/
git pull https://github.com/thinkinghere/devops.git
cd webserver/
./webserver $