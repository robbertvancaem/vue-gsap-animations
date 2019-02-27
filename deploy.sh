#!/usr/bin/env bash

set -e

yarn run build

PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | tr -d '[[:space:]]')

cd dist

git init
git add -A
git commit -m "Deploy v$PACKAGE_VERSION"
git push -f git@github.com:robbertvancaem/vue-gsap-animations.git master:gh-pages
