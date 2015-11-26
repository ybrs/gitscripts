#!/bin/sh
CURRENT_BRANCH=`git branch | grep '*' | awk '{print $2}'`
echo "pushing to branch $1"
git pull origin $CURRENT_BRANCH
git push origin $CURRENT_BRANCH

