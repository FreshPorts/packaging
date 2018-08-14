#!/bin/sh

VERSION=$1
MSG=$2

svn copy svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/periodics/trunk \
         svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/periodics/tags/${VERSION} -m "'${MSG}'"

cd ~/tmp
svn export svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/periodics/tags/${VERSION} freshports-periodics-${VERSION}

tar -czf freshports-periodics-${VERSION}.tar.gz freshports-periodics-${VERSION}
scp freshports-periodics-${VERSION}.tar.gz r710-01:
