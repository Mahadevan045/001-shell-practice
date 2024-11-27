#!/bin/bash

echo "All Variables passed to the script : $@"
echo "Number of Variables passed: $#"
echo "Script Name : $0"
echo "Current Working Directory : $PWD"
echo "Home directory of Current User : $HOME"
echo "PID of the Script executing now : $$"
sleep 100 &
echo "PID of last background command :: $!"