#!/bin/sh

VERSION=$1
MSG=$2

svn copy svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/daemontools/trunk/fp-listen \
         svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/daemontools/tags/fp-listen-${VERSION} -m "'${MSG}'"

cd ~/tmp
svn export svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/daemontools/tags/fp-listen-${VERSION} freshports-fp-listen-${VERSION}

tar -czf freshports-fp-listen-${VERSION}.tar.gz freshports-fp-listen-${VERSION}
scp freshports-fp-listen-${VERSION}.tar.gz pkg01.int.unixathome.org:
