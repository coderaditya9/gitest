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
comment

read -p "enter the file name : " file

if [ ! -f "$file" ]; then
	echo "the file not exist"
	exit 1
fi

chmod 755 "$file"

echo "permission changed to 755"

ls -l "$file"

