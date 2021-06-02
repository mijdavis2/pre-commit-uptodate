#!/usr/bin/env bash

TARGET_BRANCH=${1:-$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')}

git fetch

if [ ! -z "$(git rev-list ..${TARGET_BRANCH})" ]
then
    echo "Please rebase from master and try again"
    echo "    git fetch; git rebase origin/${TARGET_BRANCH}"
    exit 1
fi
