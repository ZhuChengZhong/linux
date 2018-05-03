#!/bin/bash
#列出本机已经开放的端口
lsof -i | egrep -o "[0-9]+->"|egrep -o "[0-9]+" | sort -n
