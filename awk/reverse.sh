#!/bin/bash
if [ $# -ne 1 ]
then
echo "Usage : $0 filename"
exit -1
fi
filename=$1
cat $filename | awk '{ lifo[NR]=$0 } END{ for(i=NR ; i>-1 ; i--) {  print lifo[i];  }  }'
