#!/usr/bin/env bash
set -Eeuo pipefail

REPO_URL="${1:?Usage: ./bootstrap-github.sh https://github.com/USER/skillsvault-content.git}"

test ! -d .git || { echo ".git already exists"; exit 1; }
git config user.name >/dev/null || { echo "Configure git user.name first"; exit 1; }
git config user.email >/dev/null || { echo "Configure git user.email first"; exit 1; }

git init -b main

git add README.md ROADMAP.md docs system schema_change_requests migration .gitignore .gitattributes .github tools
git commit -m "migration: import SkillsVault content system"

git add topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D1
git commit -m "freeze: import CRN-M-01 D1 frozen v1"
git tag -a crn-m-01-d1-v1 -m "CRN-M-01 D1 frozen v1"

git add topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D2
git commit -m "freeze: import CRN-M-01 D2 frozen v1"
git tag -a crn-m-01-d2-v1 -m "CRN-M-01 D2 frozen v1"

git add topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D3
git commit -m "freeze: import CRN-M-01 D3 frozen v1"
git tag -a crn-m-01-d3-v1 -m "CRN-M-01 D3 frozen v1"

git add topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D4 status
git commit -m "source: import CRN-M-01 D4 architecture and gates G1-G7"

python3 tools/verify_content_integrity.py

git remote add origin "$REPO_URL"
git push -u origin main
git push origin --tags

echo "DONE. Canonical entrypoint: status/CONTENT_STATUS.json"
echo "Next: CRN-M-01 / D4-G8"
