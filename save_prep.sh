#!/bin/bash
# prep_sh.sh
# 使用方法: sh prep_sh.sh "commit message"

# 作業ディレクトリ
DIR="/Users/mameyuna/MasterThesis/Prep_report"

# 引数が空ならデフォルトのメッセージを設定
COMMIT_MSG="${1:-Update files}"

# ディレクトリに移動
cd "$DIR" || { echo "ディレクトリ $DIR に移動できません"; exit 1; }

# 変更をすべてステージ
git add .

# commit
git commit -m "$COMMIT_MSG"

# push
git push

echo "Done: git add → commit → push"

