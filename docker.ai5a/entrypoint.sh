#!/usr/bin/env sh

pushd tools
autoreconf -i
./configure
debuild -b -uc -us
popd

pushd linux
debuild -b -uc -us
popd
