#!/usr/bin/env bash
# Local one-command deploy: build the site and publish it to the gh-pages branch.
# Use this if you want to deploy from your Mac instead of (or in addition to) the
# GitHub Action. Run it from anywhere: ./bin/deploy.sh
set -e

export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/4.0.0/bin:$PATH"
cd "$(dirname "$0")/.."

echo "==> Building site (production)..."
JEKYLL_ENV=production jekyll build

echo "==> Publishing _site/ to gh-pages..."
git fetch -q origin gh-pages
WT="$(mktemp -d)"
git worktree add -q "$WT" gh-pages
rsync -a --delete --exclude='.git' _site/ "$WT"/
touch "$WT/.nojekyll"
git -C "$WT" add -A
if git -C "$WT" diff --cached --quiet; then
  echo "    No changes to deploy."
else
  git -C "$WT" commit -q -m "Deploy $(date '+%Y-%m-%d %H:%M')"
  git -C "$WT" push origin gh-pages
fi
git worktree remove "$WT" --force

echo "==> Done. Live at https://anplus.github.io/ (allow ~1 min for the CDN)."
