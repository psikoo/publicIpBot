#!/bin/bash
sudo docker build -t discord-bot:1 .
sudo docker compose down
sudo docker compose up -d