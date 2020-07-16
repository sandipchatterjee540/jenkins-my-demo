#! /bin/bash


echo "******************************************************************************"
echo "***************** Testing The Code **********************************************"
echo "******************************************************************************"

WORKSPACE=/home/sandip/jenkins/jenkins_data/workspace/PULL-FROM-GIT-PUSH-IN-DOCKER-HUB-MAVEN-APP

docker run --rm -v $WORKSPACE/java-app/:/app -v /root/.m2/:/root/.m2/ -w /app  maven:3-alpine "$@"
