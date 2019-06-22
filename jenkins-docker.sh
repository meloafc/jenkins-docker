#!/usr/bin/env bash
sudo docker run --name jenkins-docker \
    -p 30100:8080 \
    -p 50000:50000 \
    -v /home/jenkins:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e JAVA_OPTS=-Duser.timezone=America/Manaus \
    --restart=unless-stopped \
    -d -u root meloafc/jenkins-docker

# Unlock Jenkins:
# docker exec <container> cat /var/jenkins_home/secrets/initialAdminPassword