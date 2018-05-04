#!/bin/bash
function handler()
{
   echo "i'm received sigint"
}

echo "my pid : $$"
trap 'handler' SIGINT

while true;
do
sleep 1;
done 
