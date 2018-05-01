#!/bin/bash
if [ $# -ne 1 ]
then
echo "Usage : $0 filename"
exit -1
fi
filename=$1
len=${#filename}
newfilename=${filename:10:$len}
cat $filename | sed 's/[{};]/\0\n/g'" > $newfilename
