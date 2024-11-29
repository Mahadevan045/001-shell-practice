#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD==5 #real projects ,it is usually 75

while IFS= read -r file #IFS ,internal field separator,empty it will ignore white spaces,-r is for not to ignore special character like /
do 
    USAGE=$(echo $line | df -hT | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1
)
    PARITION=$(echo $line df -hT | grep xfs | awk -F " " '{print $NF}'
)

    if [ $USAGE -ge $DISK_THRESHOLD ]
    then   
        echo "$PARITION is more than $DISK_THRESHOLD, current value  :$USAGE,Please check"
    fi
done <<< $DISK_USAGE