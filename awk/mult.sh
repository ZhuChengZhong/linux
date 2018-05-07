#!/bin/bash
seq 9|awk '{for(i=1;i<=NR;i++){ printf "%d*%d=%d%s",i,NR,i*NR,i==NR?"\n":"\t" }}'
