#!/bin/bash

USERID=$(id -u)

#echo "User ID is : $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is ...FAILED"
        exit 1
    else
        echo "$2 is ...Success"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root previliges"
fi

dnf list installed git

VALIDATE $? "Listing Git"

# if [ $? -ne 0 ]
# then 
#     echo "Git is not installed , going to install it"
#     dnf install git -y
#     if [ $? -ne 0 ]
#     then
#         echo "Git installation is not success,check it..,"
#     else
#         echo "Git installation is success ,nothing to do"
#     fi
# else
#     echo "Git is already is installed,nothing to do.."
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]
# then 
#     echo "MySql is not installed ,going to install it"
#     dnf install mysql -y
#     if [ $? -ne 0 ]
#     then
#         echo "mysql installation is not success , check it.."
#     else 
#         echo "mysql installation is success, nothing to do.."
#     fi
# else 
#     echo "mysql is already is installed ,nothing to do.."
# fi
