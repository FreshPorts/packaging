l#!/bin/sh

VERSION=$1
MSG=$2

svn copy svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/scripts/trunk \
         svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/scripts/tags/${VERSION} -m "'${MSG}'"

cd ~/tmp
svn export svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/scripts/tags/${VERSION} freshports-scripts-${VERSION}

tar -czf freshports-scripts-${VERSION}.tar.gz freshports-scripts-${VERSION}
scp freshports-scripts-${VERSION}.tar.gz r710-01:
