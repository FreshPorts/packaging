#!/bin/sh

VERSION=$1
MSG=$2

svn copy svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/daemontools/branches/git/fp-listen \
         svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/daemontools/tags/fp-listen-git-${VERSION} -m "'${MSG}'"

cd ~/tmp/packaging/
svn export svn+ssh://svnusers@svn.int.unixathome.org/freshports-1/daemontools/tags/fp-listen-git-${VERSION} freshports-fp-listen-git-${VERSION}

tar -czf freshports-fp-listen-git-${VERSION}.tar.gz freshports-fp-listen-git-${VERSION}
scp freshports-fp-listen-git-${VERSION}.tar.gz pkg01.int.unixathome.org:
