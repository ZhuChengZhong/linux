#!/bin/bash
#统计文件中单词的个数
if [ $# -ne 1 ]
then 
echo "usage: $0 filename"
exit -1
fi
egrep -o '\b[a-zA-Z]+\b' $1 | \
awk '{count[$0]++} END{ 
 printf ("%-20s %s\n","Word","Count");
 for(word in count){
   printf ("%-20s : %d\n",word,count[word]);
  }
}'
