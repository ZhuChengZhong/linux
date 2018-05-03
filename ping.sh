#!/bin/bash
for ip in 10.115.8.{1..254} ;
do
(
 ping $ip -c 1 &> /dev/null;
if [ $? -eq 0 ];

then
  echo $ip is alive ;
fi
) &
done
wait
