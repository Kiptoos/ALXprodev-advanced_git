#!/usr/bin/env bash
# Install hook samples into .git/hooks (run after `git init` and first commit)
set -euo pipefail
if [[ ! -d .git/hooks ]]; then
  echo ".git/hooks not found. Run this from repository root after 'git init'." >&2
  exit 1
fi
cp -f hooks-samples/pre-commit .git/hooks/pre-commit
cp -f hooks-samples/post-merge .git/hooks/post-merge
chmod +x .git/hooks/pre-commit .git/hooks/post-merge
echo "Installed pre-commit and post-merge hooks."
