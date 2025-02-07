#!/bin/bash
sudo docker build -t discord-bot:1 .
sudo docker run  --restart always -d discord-bot