#!/bin/bash
if [ $# -ne 1 ]
then
exit -1;
fi
filename=$1;
cat $filename | sed 's://.*::g'| tr -d "\n\t" | tr -s " " |sed 's:/\*.*\*/::g' > "compress_${filename}"
