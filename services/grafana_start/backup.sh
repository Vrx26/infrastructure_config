#!/bin/bash

user=${GITHUB_USER}
repo=${GITHUB_REPO}
backupRepo=https://github.com/${user}/${repo}

git clone ${backupRepo}
cd ${repo}
cp -f /etc/docker/shared/grafana/grafana.db ./grafana-$(date "+%y-%m-%d").db
rm $(ls | sort -r | tail -n +6)

git config user.email "test@test.com"
git add .
git commit -m "$(date "+%y-%m-%d")"
git push git@github.com:${user}/${repo}.git master

cd ..
rm -rf ${repo}

