#!/bin/bash
# 下载图片脚本工具
if [ $# -ne 3 ]
then 
echo "Usage : $0 -d IMAGESDIR URL"
exit -1
fi
while [ $# -gt 0 ]
do
case $1 in
-d)
shift;imagesdir=$1;shift
;; 
*)
url=$1;shift
;;
esac
done
mkdir $imagesdir
curl $url --silent | egrep -o '<img[^>]*>' | sed 's/<img[^>]*src=\"\([^"]*\).*>/\1/g' >/tmp/$$.list

cd $imagesdir

while read imageurl
do
echo download file $imageurl

curl -s -O "$imageurl" --silent
done < /tmp/$$.list
