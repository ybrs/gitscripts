#!/bin/sh
CURRENT_BRANCH=`git branch | grep '*' | awk '{print $2}'`
NEW_BRANCH="fire-in-the-building-$(date '+%Y%m%d%H%M%S')"
echo $NEW_BRANCH
echo "pulling our branch $CURRENT_BRANCH"
git pull origin $CURRENT_BRANCH
git checkout -b $NEW_BRANCH
git add -A
git commit -m "fire in the building"
git push origin $NEW_BRANCH