#!/bin/bash

function install() {
    version=`go version | sed 's/[^0-9]*\([0-9\.]*\).*/\1/'`
    versionParts=( ${version//./ } )
    if ((${versionParts[1]} < 12)); then
        echo "set new GOROOT env for OE"
        export GOROOT=/usr/local/go1.12.6
        export PATH=$GOROOT/bin:$PATH
    fi

    rm -rf output || true
    mkdir output
    go build -o output/app

    cp control.sh output
    cp app.release.yaml output
}

function clean() {
    rm -rf output
}

function fmt() {
    gofmt -w .
}

function help() {
    echo "available targets"
    declare -F | grep -v "__"
}

########
# main #
########

# Halt on errors
set -e
# Be verbose
set -x

if [ $# -gt 1 ]; then
    echo "too many args. use method: sh build.sh [cmd]"
    exit 1
fi

if [ $# -eq 0 ]; then
    cmd="install"
else
    cmd="$1"
fi

WORKSPACE=$(cd "$(dirname $0)";pwd -P)
cd $WORKSPACE
$cmd
