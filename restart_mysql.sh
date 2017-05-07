#!/bin/bash
docker build -t emotion-mysql ./mysql
docker rm -f emotion-mysql
docker run -di --name emotion-mysql --network=emotion -e MYSQL_ROOT_PASSWORD=root emotion-mysql
echo "Waiting for 20s to ensure MySQL is started."
docker exec -it emotion-mysql bash /dump.sh