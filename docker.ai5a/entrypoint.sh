#!/usr/bin/env sh

cd tools
autoreconf -i
./configure
debuild -b -uc -us

cd ../linux
debuild -b -uc -us
popd
