#!/usr/bin/env bash
set -e # halt script on error
git config --global http.postBuffer 524288000
git config --global user.name "sre"
git config --global user.email "info@srehub.com"
git config --global push.default simple
rm -rf ./repo
git clone "https://${GIT_USER}:${GIT_TOKEN}@${GH_REF}" --depth=1 repo -q
mkdir -p ./repo/fexteam
cp -r ./_site/* ./repo/fexteam
cd ./repo
git add --all .
git commit -m "Update docs"
git push -q
