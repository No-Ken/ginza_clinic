# GitHub自動プッシュ設定完了

## 🚀 設定内容

### 1. Git Post-Commit Hook
- **場所**: `.git/hooks/post-commit`
- **機能**: コミット後に自動的にGitHubにプッシュ
- **トリガー**: `git commit` 実行時

### 2. 手動自動プッシュスクリプト
- **ファイル**: `auto-push.sh`
- **使用法**: `./auto-push.sh "コミットメッセージ"`
- **機能**: add → commit → push を一括実行

## 📋 使用方法

### 通常のコミット（自動プッシュ）
```bash
git add .
git commit -m "メッセージ"
# 👆 この時点で自動的にプッシュされます
```

### スクリプト利用（簡単）
```bash
./auto-push.sh "更新内容のメッセージ"
# 👆 add/commit/push を一括実行
```

## ✅ 設定完了
- Git hooks設定済み
- 自動プッシュスクリプト作成済み
- 実行権限付与済み

---
*以降、すべてのコミットが自動的にGitHubにプッシュされます*