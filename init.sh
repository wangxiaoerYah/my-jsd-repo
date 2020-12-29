#!/usr/bin/env bash

a=$(ls -l --time-style=iso |grep "^d" |awk '{print $8}')

for i in $a
do
  echo "目录: $i"
done

#echo "$a"


