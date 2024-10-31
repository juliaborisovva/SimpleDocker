#!/bin/bash

# check value of parameters
if [ $# -ne 1 ]; then
    echo "Error: you should run this script with 1 parameters. You wrote $#."
    echo "Try: ./delimage.sh 4"
    exit
fi

if [[ "$1" != "4" ]] && [[ "$1" != "5" ]]; then
    echo "Error: there are only 4 and 5 task exist."
    echo "Try: ./delimage.sh 4"
    exit
fi

if [[ $1 -eq 4 ]]; then
    cp 04Dockerfile/{Dockerfile,build.sh,start.sh} .
fi

if [[ $1 -eq 5 ]]; then
    cp 05Dockerfile/{Dockerfile,build.sh,start.sh} .
fi
