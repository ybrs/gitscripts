#!/bin/sh
hub=`which hub`
if [ -z "$hub" ]; then
    echo "download and compile hub from https://hub.github.com/"
    exit 0
fi

pr_branch=$1
if [ -z "$pr_branch" ]; then
    echo "ERROR: write branch name, eg: git-pull-push-and-create-pr staging"
    exit 0
fi

CURRENT_BRANCH=`git branch | grep '*' | awk '{print $2}'`
echo "pushing to branch $1"
git pull origin $CURRENT_BRANCH
git pull origin $pr_branch
if [ $? -eq 0 ]; then
    echo "merged $pr_branch"
else
    echo "conflict or something exiting"
    exit 1;
fi

git push origin $CURRENT_BRANCH
last_message=`git log -1 --pretty=%B | xargs echo`

assign_to=$2
if [ -z "$assign_to" ]; then
    assign_to="ybrs";
fi

echo "now run this please."
echo hub pull-request -m \"$last_message\" -a $assign_to -b $1
