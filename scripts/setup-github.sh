#!/usr/bin/env bash
# 라벨 · 마일스톤 한 번에 만들기
# 준비: GitHub CLI 설치 후 `gh auth login`
# 실행: 저장소 폴더에서 `bash scripts/setup-github.sh`
set -e

label() { gh label create "$1" --color "$2" --description "$3" --force; }

# 파트
label "공기·청정" "5B9BD5" "차압, 팬, 필터, 먼지 센서"
label "온습도"   "ED7D31" "펠티어, 가습, 온습도 센서"
label "통합·관제" "7030A0" "라즈베리파이, 데이터, 관제 화면"
label "공통"     "A5A5A5" "전원, 배선, 보드"

# 종류
label "bug"      "D73A4A" "동작 오류"
label "feature"  "0E8A16" "새 기능"
label "hardware" "FBCA04" "배선 · 부품 · 기구"
label "docs"     "0075CA" "문서"

# 단계
label "0차" "FFE699" "전기 작업"
label "1차" "F4B183" "센서 측정"
label "2차" "9DC3E6" "제어 · 통합"
label "3차" "A9D18E" "본체 · 시연"

# 마일스톤
repo=$(gh repo view --json nameWithOwner -q .nameWithOwner)
ms() { gh api "repos/$repo/milestones" -f title="$1" -f description="$2" ${3:+-f due_on="$3"} >/dev/null || echo "이미 있음: $1"; }
ms "0차 전기" "전원 구조 · 전기 부품 · 배선" "2026-12-08T23:59:59Z"
ms "1차 측정" "센서별 단독 측정 · 데이터 수집"
ms "2차"      "차압 · 온습도 제어 · 통합"
ms "3차"      "본체 제작 · 전체 통합 · 시연"

echo "완료"
