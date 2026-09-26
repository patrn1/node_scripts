#!/bin/bash

version_arg="$1"

version20="20.15.0"

version22="22.23.2"

version_install="$version22"

if [ "$version_arg" == "20" ]; then
    
    version_install="$version20"
fi

if [ "$version_arg" == "22" ]; then
    
    version_install="$version22"
fi

cd /tmp

rm -rf node_install

mkdir node_install

cd node_install

wget https://nodejs.org/dist/v${version_install}/node-v${version_install}-linux-x64.tar.xz

tar -Jxvf node-v${version_install}-linux-x64.tar.xz

#####
#####

mv -f node*/bin/* /usr/local/bin/

rm -rf /usr/include

mv -f node*/include/node /usr/include

rm -rf /usr/lib/node_modules

mv -f node*/lib/node_modules /usr/lib
