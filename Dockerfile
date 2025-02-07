FROM node:latest

RUN mkdir -p /usr/src/publicIpBot
WORKDIR /usr/src/publicIpBot

COPY package.json /usr/src/publicIpBot
RUN npm install

COPY . /usr/src/publicIpBot

# Start the bot.
RUN node deploy.js
CMD ["node", "discordBot.js"]
