#!/bin/sh
set -e
CURRENT_BRANCH=`git branch | grep '*' | awk '{print $2}'`
echo "merging to branch $1"
git pull origin $CURRENT_BRANCH
git push origin $CURRENT_BRANCH
git checkout $1
git pull origin $1
git merge $CURRENT_BRANCH -m "merging $CURRENT_BRANCH to $1"
git push origin $1
git checkout $CURRENT_BRANCH
