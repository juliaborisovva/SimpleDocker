#!/bin/bash

docker run -d --name nginx-04 -v ${PWD}/nginx/nginx.conf:/etc/nginx/nginx.conf -p 80:81 --rm nginx-serv:04
