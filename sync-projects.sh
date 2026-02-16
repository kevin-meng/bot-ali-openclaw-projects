#!/bin/bash

# 项目自动同步脚本
# 每天凌晨 4:00 自动执行

cd ~/Projects

# 添加所有更改
git add -A

# 如果有更改，提交并推送
if git diff --cached --quiet; then
    echo "[$(date)] 没有更改需要同步"
else
    git commit -m "sync: 自动同步 $(date '+%Y-%m-%d %H:%M')"
    git push origin main
    echo "[$(date)] 已同步到 GitHub"
fi
