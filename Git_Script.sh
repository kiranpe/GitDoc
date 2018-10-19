
Folder=$1

cd $Folder

COMMIT=$( git status | grep "nothing to commit" )

if [ -z "$COMMIT" ];then

git add sample.sh

MSG=$2
git commit -m "$MSG"

git status 

git push origin master

else
echo "Noting to commit..Tree is clean!!"
fi
