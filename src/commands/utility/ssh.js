const axios = require("axios");
const { SlashCommandBuilder } = require("discord.js");
require('dotenv').config()

module.exports = {
	data: new SlashCommandBuilder()
		.setName("ssh")
		.setDescription("Returns ssh command"),
	async execute(interaction) {
		let headersList = {
			"Accept": "*/*",
		}
		let reqOptions = {
				url: "https://api64.ipify.org?format=json",
				method: "GET",
				headers: headersList,
		}
		let response = await axios.request(reqOptions);
		await interaction.reply("\n`ssh "+process.env.USR+"@"+response.data.ip+" -p "+process.env.PORT+"`\n`ssh "+process.env.USR+"@"+process.env.LIP+" -p "+process.env.PORT+"`");
	},
};
