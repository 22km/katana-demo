#!/bin/bash

echo "processing module ..."

if [ $# -ne 1 ]; then
    echo "accepts 1 arg(s), received $#"
    exit 0
fi
module=$1

workspace=$(cd $(dirname $0) && pwd -P)
cd $workspace

grep -rl 'katana-demo' ./ | xargs sed -i '' -e 's/katana-demo/'$module'/g'

echo 'cleaning files ...'
rm -rf '.git'
rm -f 'replace.sh'

echo "done"