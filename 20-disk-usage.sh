#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD==5 #real projects ,it is usually 75

while IFS= read -r file #IFS ,internal field separator,empty it will ignore white spaces,-r is for not to ignore special character like /
do 
    echo $line
done <<< $DISK_USAGE