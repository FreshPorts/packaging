#!/bin/sh

VERSION=$1
MSG=$2

svn copy svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/daemontools/trunk/fp-listen \
         svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/daemontools/tags/fp-listen-${VERSION} -m "'${MSG}'"

cd ~/tmp
svn export svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshports-1/daemontools/tags/fp-listen-${VERSION} freshports-fp-listen-${VERSION}

tar -czf freshports-fp-listen-${VERSION}.tar.gz freshports-fp-listen-${VERSION}
scp freshports-fp-listen-${VERSION}.tar.gz r710-01:
