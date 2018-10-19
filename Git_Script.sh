#!/bin/sh
#Script to commit changes in stage to GitHub

usage () {
	echo "usage: sh Git_Script.sh -f GitDoc -fn Git_Script.sh -m updating script with getopts"
	exit 1
}

while getopts ":f:fn:m:" opt; do
	case "{opt}" in
		
		f) 
			Folder=${OPTARG}
			;;
                fn)
			FileName=${OPTARG}
			;;
		m)
			COMMIT_MSG=${OPTARG}
			;;
		*)
			usage
			;;
        esac
done

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
