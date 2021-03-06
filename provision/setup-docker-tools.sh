#!/bin/bash
#
# download and install handy Docker tools
#

readonly BASE_URL="https://raw.githubusercontent.com/William-Yeh/docker-host-tools/master/"
readonly APP=( "DOCKER"  "docker-mirror"  "docker-rm-stopped"  "docker-rmi-repo"  "docker-inspect-attr" )


cd /usr/local/bin

for i in "${APP[@]}"; do
    NAME=$i
    curl -o $NAME  "$BASE_URL$NAME"
    chmod a+x $NAME
done
