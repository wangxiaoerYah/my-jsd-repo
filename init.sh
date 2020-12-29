#!/usr/bin/env bash

rm -f README.md
rm -f out.md
prin_dir=$(ls -l --time-style=iso |grep "^d" |awk '{print $8}')
tab=$(echo -e '\t')
echo "## 文件列表" >> out.md
echo -e '\n' >> out.md
echo -e '|目录|名称|JSD|GITEE \n|:--:|:--:|:--:|:--:|' >> out.md
for a in $prin_dir
do
  echo  "|$a|$tab|$tab|$tab|" >> out.md
  for b in $(ls $a)
  do
    jsd="https://cdn.jsdelivr.net/gh/wangxiaoerYah/my-jsd-repo@latest/$a/$b"
    gitee="https://wangxiaoeryah.gitee.io/my-link-repo/$a/$b"
    echo "|$tab|$b|$jsd|$gitee|" >> out.md
  done
done

mv out.md README.md


