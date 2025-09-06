#!/usr/bin/env bash
set -euo pipefail

# Create scaffold structure
mkdir -p course/week1 course/week2 .github/ISSUE_TEMPLATE .github/workflows docs scripts

def files() {
  cat <<'EOF'
.gitignore
.editorconfig
LICENSE
CODE_OF_CONDUCT.md
CONTRIBUTING.md
README.md
syllabus.md
course/week1/day1.md
course/week1/day2.md
course/week1/day3.md
course/week1/day4.md
course/week1/day5.md
course/week1/project.md
course/week2/day6.md
course/week2/day7.md
course/week2/day8.md
course/week2/day9.md
course/week2/day10.md
course/week2/project.md
.github/PULL_REQUEST_TEMPLATE.md
.github/ISSUE_TEMPLATE/bug_report.md
.github/ISSUE_TEMPLATE/feature_request.md
.github/workflows/markdown.yml
.github/workflows/pages.yml
docs/index.md
scripts/scaffold.sh
EOF
}

echo "Scaffold created (files may be placeholders)."
