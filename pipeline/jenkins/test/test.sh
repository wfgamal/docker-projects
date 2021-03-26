#!/bin/bash


echo "*******************"
echo "Testing jar build"
echo "*******************"

docker run --rm  -v \\wsl$\Ubuntu-18.04\home\waleed\docker-files\pipeline\java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"