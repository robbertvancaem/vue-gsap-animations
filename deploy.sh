#!/usr/bin/env bash
yarn run build

PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | tr -d '[[:space:]]')

echo $PACKAGE_VERSION

git add . && git commit -m "Deploy v$PACKAGE_VERSION" && git push;

git subtree push --prefix dist origin gh-pages
