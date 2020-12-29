#!/usr/bin/env bash

rm -f out.md
prin_dir=$(ls -l --time-style=iso |grep "^d" |awk '{print $8}')
tab=$(echo -e '\t')
echo "## 文件列表" >> out.md
echo -e '\n' >> out.md
echo -e '|目录|名称|链接| \n|:--:|:--:|:--:|' >> out.md
for a in $prin_dir
do
  echo  "|$a|$tab|$tab|" >> out.md
  for b in $(ls $a)
  do
    url="https://cdn.jsdelivr.net/gh/wangxiaoerYah/my-jsd-repo@latest/$a/$b"
    echo "|$tab|$b|$url|" >> out.md
  done
done

mv out.md README.md


