#!/bin/bash

# GitHub Personal Access Token 설정 스크립트
# 사용법: ./setup-token.sh

echo "🔐 GitHub Personal Access Token 설정"
echo ""
echo "다음 정보를 입력해주세요:"
echo ""

read -p "GitHub 사용자명: " username
read -sp "Personal Access Token: " token
echo ""

# URL에 토큰 포함하여 원격 저장소 설정
git remote set-url origin https://${username}:${token}@github.com/hanpeaceye/mbti.git

echo ""
echo "✅ 토큰이 설정되었습니다!"
echo "이제 git push를 사용할 수 있습니다."
echo ""
echo "⚠️  보안을 위해 이 스크립트를 삭제하는 것을 권장합니다."

