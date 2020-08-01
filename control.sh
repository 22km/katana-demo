#!/bin/bash

# start service online
function start() {
    exec ./app -config app.release.yaml
}

WORKSPACE=$(cd $(dirname $0) && pwd -P)
cd $WORKSPACE

action=$1
case $action in
    "start" )
        start
        ;;
    * )
        echo "unknown command"
        exit 1
        ;;
esac
