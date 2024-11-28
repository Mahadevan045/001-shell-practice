#!/bin/bash

set -e # setting the automatic exit ,if we get error,set -ex for debug

failure(){
    echo "Failed at : $1:$2"
}
# ERR is the error signal
trap  'failure "${LINENO}" "$BASH_COMMAND"' ERR  

echo "Hello World Success"
echo000 "Hello World failure"
echo "Hello World After failure"