#!/bin/sh

VERSION=$1
MSG=$2

svn copy svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/periodics/trunk \
         svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/periodics/tags/${VERSION} -m "'${MSG}'"

cd ~/tmp
svn export svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/periodics/tags/${VERSION} freshports-periodics-${VERSION}

tar -czf freshports-periodics-${VERSION}.tar.gz freshports-periodics-${VERSION}
scp freshports-periodics-${VERSION}.tar.gz r710-01:
