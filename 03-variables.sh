#!bin/bash

#Variables define either we have to use dollar-variable-name and dollar-flower braces
Person1=$1
Person2=$2

echo "$Person1:: Hi ${Person2} , How are you?"
echo "${Person2}:: Hello $Person1 , I am fine , How are you doing"
echo "$Person1:: I am doing good ${Person2}. what's going on?"
echo "${Person2}:: I started learning Shell Script $Person1"