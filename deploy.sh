#!/bin/bash

# LinkTreeの自動公開スクリプト
echo "🚀 ネットへの公開（デプロイ）を開始します..."

# 自身が存在するフォルダに移動（ポータビリティの向上）
cd "$(dirname "$0")"

# Git リポジトリの確認
if [ ! -d ".git" ]; then
    echo "⚠️ .git フォルダが見つかりません。git init を実行するか、リポジトリ環境を確認してください。"
    exit 1
fi

# 変更されたファイルを全て追加
git add .

# コミットメッセージ（現在時刻）を作成
COMMIT_MSG="Update LinkTree at $(date +'%Y-%m-%d %H:%M:%S')"
git commit -m "$COMMIT_MSG"

# GitHubへ送信（公開）
echo "🌐 GitHubにデータを送信中..."
git push origin main

echo "✅ 公開が完了しました！数分後に実際のWebページに反映されます。"
echo "🔗 https://light8888share.github.io/"
