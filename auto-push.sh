#!/bin/bash

# Git 自動プッシュスクリプト
# 使用法: ./auto-push.sh "コミットメッセージ"

# カラー定義
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Git自動プッシュスクリプト開始${NC}"

# 引数チェック
if [ $# -eq 0 ]; then
    echo -e "${RED}❌ エラー: コミットメッセージを指定してください${NC}"
    echo "使用法: ./auto-push.sh \"コミットメッセージ\""
    exit 1
fi

COMMIT_MESSAGE="$1"

# 現在の状況確認
echo -e "${BLUE}📊 現在のGitステータス:${NC}"
git status --short

# 変更があるかチェック
if [ -z "$(git status --porcelain)" ]; then
    echo -e "${GREEN}✅ 変更なし - プッシュの必要はありません${NC}"
    exit 0
fi

# ステージング
echo -e "${BLUE}📝 ファイルをステージング中...${NC}"
git add .

# コミット
echo -e "${BLUE}💾 コミット中...${NC}"
git commit -m "$COMMIT_MESSAGE

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"

# プッシュ
echo -e "${BLUE}🚀 GitHubにプッシュ中...${NC}"
git push origin main

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ GitHubへのプッシュが完了しました!${NC}"
    echo -e "${GREEN}🔗 リポジトリ: https://github.com/No-Ken/ginza_clinic.git${NC}"
else
    echo -e "${RED}❌ プッシュに失敗しました${NC}"
    exit 1
fi