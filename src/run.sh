#!/bin/bash

gcc main.c -lfcgi -o hellowo
spawn-fcgi -a 127.0.0.1 -p 8080 -f /server/hellowo
service nginx start

while true
do
    echo "nginx" > /dev/null
done
