#!/bin/bash

USERID=$(id -u)

#echo "User ID is : $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root previliges"
fi

dnf list installed git

if [ $? -ne 0 ]
then 
    echo "Git is not installed , going to install it"
    dnf install git -y
else
    echo "Git is already is installed,nothing to do.."
fi
