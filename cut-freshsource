#!/bin/sh

VERSION=$1
MSG=$2

svn copy svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshsource/www/trunk \
         svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshsource/www/tags/${VERSION} -m "'${MSG}'"

cd ~/tmp
svn export svn+ssh://dan@svn.int.unixathome.org/usr/local/svn/repos/freshsource/www/tags/${VERSION} freshsource-${VERSION}

tar -czf freshsource-${VERSION}.tar.gz freshsource-${VERSION}
scp freshsource-${VERSION}.tar.gz r710-01:
