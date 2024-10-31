#!/bin/bash

# check value of parameters
if [ $# -ne 1 ]; then
    echo "Error: you should run this script with 1 parameters. You wrote $#."
    echo "Try: ./delimage.sh 4"
    exit
fi

if [[ "$1" != "4" ]] && [[ "$1" != "5" ]] && [[ "$1" != "6" ]]; then
    echo "Error: there are only 4, 5 and 6 task exist."
    echo "Try: ./delimage.sh 4"
    exit
fi

if [[ "$1" == "4" ]] || [[ "$1" == "5" ]]; then
    docker rmi $(docker images | grep "nginx-serv" | grep "0$1"| awk '{print $3}') | echo "Deleted nginx-serv:0$1 image"
else
    docker rm -fv $(docker ps -aq) | echo "Deleted all containers"
    docker rmi $(docker images | grep "src_part5" | awk '{print $3}') | echo "Deleted src_part5 image"
    docker rmi $(docker images | grep "src_part6" | awk '{print $3}') | echo "Deleted src_part6 image"
fi
