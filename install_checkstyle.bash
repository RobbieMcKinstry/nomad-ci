#!/bin/bash

set -e
set -x
set -u
readonly ARCHIVE='checkstyle.tar.gz'
readonly DESTINATION='/opt'

mkdir -p $DESTINATION || 0

curl -s -L 'https://downloads.sourceforge.net/project/checkstyle/checkstyle/8.0/checkstyle-8.0-all.jar?r=&ts=1514357386&use_mirror=versaweb' > $ARCHIVE

mv $ARCHIVE $DESTINATION/checkstyle.jar
