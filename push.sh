#!/bin/bash

msg_date=$(date "+%Y-%m-%d %H:%M:%S")
msg_git_add=$(git status -s)

if [ -n "$msg_date" ]; then
    git pull
    git add -A 
    git commit -m "Psuh(update): $msg_date" -m "$msg_git_add"
    git push
    echo "It's Okay!"
else
    echo "commit msg 有问题"
fi
