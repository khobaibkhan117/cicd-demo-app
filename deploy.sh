#!/bin/bash

# Purana container stop/remove karo
docker stop flask-container || true
docker rm flask-container || true

# Purani image hatao
docker rmi khobaib117/flask-app:latest || true

# DockerHub se latest image pull karo
docker pull khobaib117/flask-app:latest

# New container run karo
docker run -d --name flask-container -p 80:5000 khobaib117/flask-app:latest
