#!/bin/sh
apk update 
apk add curl

value=`curl http://127.0.0.1:80/ip`
echo $value
