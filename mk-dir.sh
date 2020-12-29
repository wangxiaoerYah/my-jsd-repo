#!/usr/bin/env bash
rm -rf .PUSH-DIR
mkdir .PUSH-DIR
prin_dir=$(ls -l --time-style=iso |grep "^d" |awk '{print $8}')
for a in $prin_dir
do
  cp -rf $a .PUSH-DIR/
done
rm -rf .GITEE-DIR
cp -rf .PUSH-DIR .GITEE-DIR 
if [ -e README.md ]
 then mv -f README.md .PUSH-DIR/
else
  echo "E: 未找到README.md文件"
fi 

