#! /bin/bash

echo "********************************************************************************"
echo "******************* Deploy In Local Server *************************************"
echo "********************************************************************************"


cd jenkins-script/local_deploy/ && echo $PWD 
docker-compose up -d 
echo $PWD
