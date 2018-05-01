#!/bin/bash
#利用静默模式查看文本中是否有匹配行
if [ $# -ne 2 ]
then
 echo "$0 match_text filename"
 exit 1
fi
match_text=$1;
filename=$2;
grep -q  $match_text $filename
if [ $? -eq 0 ]
then
echo "exists"
else
echo "not exists"
fi
