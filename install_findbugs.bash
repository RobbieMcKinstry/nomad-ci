#!/bin/bash
set -e
set -x
set -u
readonly ARCHIVE='findbugs.tar.gz'
readonly FINDBUGS_VERSION='findbugs-3.0.1'
readonly DESTINATION='/opt'

curl -s -L 'https://downloads.sourceforge.net/project/findbugs/findbugs/3.0.1/findbugs-3.0.1.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Ffindbugs%2Ffiles%2Ffindbugs%2F3.0.1%2Ffindbugs-3.0.1.tar.gz%2Fdownload%3Fuse_mirror%3Dcfhcable%26download%3D&ts=1499989850&use_mirror=managedway' >> $ARCHIVE
tar -xzf $ARCHIVE

rm $ARCHIVE
mkdir -p $DESTINATION
mv $FINDBUGS_VERSION/lib/findbugs.jar $DESTINATION/findbugs.jar

rm -r $FINDBUGS_VERSION
