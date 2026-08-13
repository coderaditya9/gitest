#!/bin/bash


<<comment
program for find the size of the file 


read -p "enter the directory path : " dir

if [ ! -d "$dir" ]; then
	echo "the directry not exist"
	exit 1
fi

for file in "$dir"/*
do
	size=(stat -c%s "$file")
	echo "$file : $size"
done
comment


<<comment
program for find the 10 largest file 


read -p "enter the directory name : " dir

if [ ! -d "$dir" ]; then
	echo "The directory not exist"
	exit 1
fi

for file in "$dir"/*
do
	find "$file" -type f -exec du -h {} + | sort -hr
	size=(stat -c %s "$file")
done
comment

<<comment
progam for find the modified file 



read -p "enter the directory name : " dir

if [ ! -d "$dir" ]; then
	echo "the directory not exist"
	exit 1
fi

echo "file modified last 24 hours: "

find "$dir" -type f -mmin -1440
comment


<<comment
program for find the same name file 


read -p"enter the directory name : " dir 

if [ ! -d "$dir" ]; then
	echo "the directory not exist"
	exit 1
fi

echo "duplicate file names"

find "$dir" -type f -printf '%f\n' | sort | uniq -d
comment


<<comment
program for find the permission no 777 in file 


read -p "enter the directory name : " dir

if [ ! -d "$dir" ]; then
	echo "The directory not exist"
	exit 1
fi

echo "permission 777 file name "

find "$dir" -type f -perm 0777
comment



<<comment
prorgm for change the permission of file 


read -p "enter the file name : " file

if [ ! -f "$file" ]; then
	echo "the file not exist"
	exit 1
fi

chmod 755 "$file"

echo "permission changed to 755"

ls -l "$file"
comment


<<comment
program for change the owner of the file 



read -p "enter the file name : " file 
read -p "enter the new owner name : " owner

if [ ! -f "$file" ]; then
	echo "the file not exist"
	exit 1
fi

sudo chown "$owner" "$file"
echo "file owner changed"
ls -l
comment


<<comment
program for change the group ownership of the file 



read -p "enter the file name : " file 
read -p "enter the new group name : " name

if [ ! -f "$file" ]; then
	echo "the file not exist"
	exit 1 
fi 

sudo chgrp "$name" "$file"
echo "group name change successfully"
ls -l "$file"
comment


<<comment
program for find the username with all files


read -p "enter the username : " username

if id "$username" &>/dev/null; then
	read -p "enter the directory to search : " dir
	find . -user "$username"
	exit 1
else
	echo "username not exist"
fi
comment


<<comment
progra for find the symbolic link 


read -p "enter the original file path : " source 
read -p "enter the symbolic link name : " link

if [ -e "$source" ]; then

	ln -s "$source" "$link"

	if [ $? -eq 0 ]; then
		echo "symbolic link created successfully"
		ls -l "$link"
	else
		echo "failed to create symbolic link"
	fi

else
	echo "error : original file does not exist"
fi
comment


<<comment
program for find the difrence btw two folder
comment


read -p "enter the directory name : " dir1
read -p "enter the directory name : " dir2

if [ ! -d "$dir1" ] && [ ! -d "$dir2" ]; then
	echo "both directry does not exist"
	exit 1
fi

diff -r "$dir1" "$dir2"
