#!/bin/bash

# GitHub 자동 배포 스크립트
# 사용법: ./deploy.sh "커밋 메시지"

echo "🚀 GitHub 배포 시작..."

# 커밋 메시지 설정
COMMIT_MSG=${1:-"Update: 작업 내용 업데이트"}

# 변경사항 확인
if [ -z "$(git status --porcelain)" ]; then
    echo "⚠️  변경사항이 없습니다."
    exit 0
fi

# 변경사항 추가
echo "📝 변경사항 스테이징 중..."
git add -A

# 커밋
echo "💾 커밋 중..."
git commit -m "$COMMIT_MSG"

# 푸시
echo "⬆️  GitHub에 푸시 중..."
git push origin main

if [ $? -eq 0 ]; then
    echo "✅ 배포 완료!"
    echo "🌐 웹사이트에서 확인하세요: https://aimbti.xyz"
else
    echo "❌ 푸시 실패. 인증이 필요할 수 있습니다."
    echo "💡 GitHub Personal Access Token을 사용하거나 SSH 키를 설정해주세요."
fi

