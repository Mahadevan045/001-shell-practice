#!/bin/bash

USERID=$(id -u)
#echo "User ID is : $USERID"
R="\e[31m"
G="\e[32m"
N="\e[33m"


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

dnf list installed git

VALIDATE $? "Listing Git"

if [ $? -ne 0 ]
then 
    echo "Git is not installed , going to install it"
    dnf install git -y
    VALIDATE $? "Installing Git"
else
    echo "Git is already is installed,nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "MySql is not installed ,going to install it"
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"
else 
    echo "mysql is already is installed ,nothing to do.."
fi
