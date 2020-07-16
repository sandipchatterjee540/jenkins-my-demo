#! /bin/bash

echo "*****************************************************************************************************"
echo "********************** BUILD DOCKER IMAGE FOR JAVA APP **********************************************"
echo "*****************************************************************************************************"


cp -f java-app/target/*.jar jenkins-script/build/

cd jenkins-script/build/ && docker-compose -f docker-compose-build.yaml build --no-cache
