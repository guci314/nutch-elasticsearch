#!/bin/bash
# wget-deps.bash - download dependencies
ROOTDIR="/vagrant"

. `dirname $0`/setenv.bash

HBASE_URL="http://archive.apache.org/dist/hbase/hbase-0.90.4/hbase-0.90.4.tar.gz"
ANT_URL="http://mirror.nexcess.net/apache//ant/binaries/apache-ant-1.9.4-bin.tar.gz"
NUTCH_URL="https://archive.apache.org/dist/nutch/2.2.1/apache-nutch-2.2.1-src.tar.gz"

cd $ROOTDIR/downloads

if [ ! -f $HBASE_ARCHIVE ]; then
    wget $HBASE_URL
fi

if [ ! -f $ANT_ARCHIVE ]; then
    wget $ANT_URL
fi

if [ ! -f $NUTCH_ARCHIVE ]; then
    wget $NUTCH_URL
fi
