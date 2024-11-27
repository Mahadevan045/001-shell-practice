#!/bin/bash

USERID=$(id -u)
#echo "User ID is : $USERID"
R="\e[31m"
G="\e[32m"
N="\e[0m"


CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root previliges"
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is ...$R FAILED $N"
        exit 1
    else
        echo -e "$2 is ...$G Success $N"
    fi
}

CHECK_ROOT

#sh 15-loops.sh git postfix mysql nginx
for package in $@ # refers to pass all arguments
do
    echo  $package
done 