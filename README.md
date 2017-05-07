# Emotion Deploy

This is the production version of emotion-server and webservice-db. 

Deployment is pretty simple with the support of Docker.

## How to deploy

1. Install Docker
2. Run initialize.sh

Then the Tomcat server for emotion-server and webservice-db, and the MySQL database are set up and running. Port 8080 is used by Tomcat.

> Mac and Linux are supported and tested.
>
> For Windows, run commands in the shell scripts manually. Hope it will work.

## How to release new version

- To update server, copy new war files to server/ directory and run restart_server.sh. All images and user tokens will be deleted
- To update MySQL, copy new emotion.sql file to mysql/ directory and run restart_mysql.sh. All data will be deleted.