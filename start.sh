#!/bin/bash
docker build -t discord-bot .
docker run  --restart always -d discord-bot