#!/bin/bash

docker stop mynginx
docker rm mynginx
docker image rm mynginximage
docker build -t mynginximage .
docker run -it  --add-host localnode:<local_ip> --name mynginx -P -d mynginximage
docker stop mynginx

sudo apt install stunnel4
sudo cp stunnel.conf /etc/stunnel/
sudo systemctl enable stunnel4.service
