#!/bin/bash
docker build -t emotion-mysql ./mysql
docker build -t emotion-tomcat-server ./server
docker network create --driver bridge emotion
docker run -di --name emotion-mysql --network=emotion -e MYSQL_ROOT_PASSWORD=root emotion-mysql
echo "Waiting for 20s to ensure MySQL is started."
sleep 20
docker exec -it emotion-mysql bash /dump.sh
docker run -di --name emotion-tomcat-server --network=emotion -p 8080:8080 emotion-tomcat-server
