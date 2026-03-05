#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BASE_DIR="${1:-$HOME/NEWWAY_repro_base}"
BASE_REPO_URL="${BASE_REPO_URL:-https://github.com/AFETZ/NEWWAY.git}"
BASE_BRANCH="${BASE_BRANCH:-bootstrap/dev-onboarding}"

if [[ ! -d "$BASE_DIR/.git" ]]; then
  git clone "$BASE_REPO_URL" "$BASE_DIR"
fi

git -C "$BASE_DIR" fetch origin
# Keep reproducibility aligned with the branch where scenarios are maintained.
git -C "$BASE_DIR" checkout "$BASE_BRANCH"
git -C "$BASE_DIR" pull --ff-only origin "$BASE_BRANCH"

rsync -a "$ROOT/overlay/" "$BASE_DIR/"

echo "BASE_READY: $BASE_DIR"
echo "ACTIVE_BRANCH: $BASE_BRANCH"
