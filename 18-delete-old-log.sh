#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ -d $SOURCE_DIR  ]
then
    echo -e "$SOURCE_DIR  $G Exists $N"
else
    echo -e "$SOURCE_DIR $R doesn't exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "Files are :$FILES"

# Don't use line ,it is reserved word
while IFS= read -r file #IFS ,internal field separator,empty it will ignore white spaces,-r is for not to ignore special character like /
do 
    rm -rf $file
    echo "Deleting file :$file"
done <<< $FILES