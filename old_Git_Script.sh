#!/bin/sh
#Script to commit changes in stage to GitHub

Folder=$1
FileName=$2
COMMIT_MSG=$3

cd $Folder

COMMIT=$( git status | grep "nothing to commit" )

if [ -z "$COMMIT" ];then

git add $FileName

git commit -m "$COMMIT_MSG"

git status 

git push origin master

else
echo "Noting to commit..Tree is clean!!"
fi
