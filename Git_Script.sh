
Folder=$1

cd $Folder


COMMIT=$( git status | grep "nothing to commit" )

if [ -z "$COMMIT" ];then

File_Name=$2
git add $File_Name

MSG=$3
git commit -m "$MSG"

git status 

git push origin master

else
echo "Noting to commit..Tree is clean!!"
fi
