#!/bin/bash -e

tar ch Dockerfile build.sh PKGBUILD dkms.conf | docker build --pull -t ch341-dkms-build -
docker run -ti --rm -v .:/output/ ch341-dkms-build
