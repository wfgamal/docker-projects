#!/bin/nash

cp -f \\wsl$\Ubuntu-18.04\home\waleed\docker-files\pipeline\java-app\target\*.jar  \\wsl$\Ubuntu-18.04\home\waleed\docker-files\pipeline\jenkins\build\

cd \\wsl$\Ubuntu-18.04\home\waleed\docker-files\pipeline\jenkins\build

echo "*******************"
echo "Building Jar file"
echo "*******************"

docker-compose -f docker-compose-build.yml build --no-cache