#!/usr/bin/env bash

cd ..
JAVA_HOME=/usr/lib/jvm/jdk-11.0.1 mvn clean package
cd docker
docker build -f Dockerfile_ssjwt -t 'ssjwt' ../