#!/bin/bash

cd /tmp

mkdir node_install

cd node_install

wget https://nodejs.org/dist/v22.23.2/node-v22.23.2-linux-x64.tar.xz

tar -Jxvf node-v22.23.2-linux-x64.tar.xz

mv -f node*/bin/* /usr/local/bin/

rm -rf /usr/include

mv -f node*/include/node /usr/include

rm -rf /usr/lib/node_modules

mv -f node*/lib/node_modules /usr/lib
