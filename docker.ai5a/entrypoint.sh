#!/usr/bin/env sh -e

cd tools
autoreconf -i
./configure
debuild -b -uc -us

cd ../linux
debuild -b -uc -us
