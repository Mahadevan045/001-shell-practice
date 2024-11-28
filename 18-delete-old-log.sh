#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs

if [ -d $SOURCE_DIR  ]
then
    echo "$SOURCE_DIR  Exists"
else
    echo "$SOURCE_DIR doesn't exists"
    exit 1
fi