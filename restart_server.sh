#!/bin/bash
docker build -t emotion-tomcat-server ./server
docker rm -f emotion-tomcat-server
docker run -di --name emotion-tomcat-server --network=emotion -p 8080:8080 emotion-tomcat-server
