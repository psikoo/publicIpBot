#!/bin/bash
sudo git stash
sudo git pull
sudo chmod +x ./start.sh
sudo docker build -t public-ip-bot:1 .
sudo docker restart public-ip-bot