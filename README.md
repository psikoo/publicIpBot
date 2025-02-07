
# publicIpBot

publicIpBot is a simple Discord.js bot created following Discord.js [guide](https://discordjs.guide). Its only purpose is to fetch the ip of the router it is connected to. Why? I don't feel like paying my ISP 20 euros a month to have a static public ip address. (generates ssh command to connect to the server!)

## Running the bot

- Create a ".env" file inside the base directory and add the following contents to it:
``` env
#BOT
TOKEN="token"
CID="clientid"
GID="guildid"
#SSH
USR="username to ssh into"
PORT="port to ssh to"
```
- Get your TOKEN and CID [here](https://discord.com/developers/applications).

To start the bot just do:

```bash
sudo ./stat.sh
```
