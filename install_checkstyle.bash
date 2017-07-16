#!/bin/bash
readonly ARCHIVE='checkstyle.tar.gz'

mkdir -p $FINAL_DEST || 0

cd $FINAL_DEST

curl -s -L 'https://downloads.sourceforge.net/project/checkstyle/checkstyle/8.0/checkstyle-8.0-all.jar?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fcheckstyle%2Ffiles%2Fcheckstyle%2F&ts=1499992368&use_mirror=superb-sea2' >> $ARCHIVE
tar -xzf $ARCHIVE

mv checkstyle $DESTINATION
rm $ARCHIVE


cd -
