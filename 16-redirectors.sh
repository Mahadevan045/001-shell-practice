#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER

USERID=$(id -u)
#echo "User ID is : $USERID"
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"


CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    then
        echo -e "$R Please run this script with root previliges $N" &>>$LOG_FILE
        exit 1
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is ...$R FAILED $N" &>>$LOG_FILE
        exit 1
    else
        echo -e "$2 is ...$G Success $N" &>>$LOG_FILE
    fi
}

CHECK_ROOT

for package in $@ # refers to pass all arguments
do
    echo  dnf list installed $package &>>$LOG_FILE
    if [ $? -ne 0 ]
    then 
        echo "$package is not installed , going to install it"&>>$LOG_FILE 
        dnf install $package -y &>>$LOG_FILE
        VALIDATE $? "Installing $package"
    else
        echo "$package is already is $Y installed $N,nothing to do.."&>>$LOG_FILE 
    fi
done 