#!/usr/bin/env bash
sudo docker run --name jenkins-docker \
    -p 30100:8080 \
    -p 50000:50000 \
    -v jenkins_home:/var/jenkins_home \
    --restart=unless-stopped \
    -d meloafc/jenkins-docker

# Unlock Jenkins:
# docker exec <container> cat /var/jenkins_home/secrets/initialAdminPassword