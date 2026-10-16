local M = {}

---@return LigniteExtra[]
M.generate = function()
	local util = require("lignite.util")
	local palette = require("lignite").palette

	local content = util.template(
		[[
{
	"name": "Lignite",
	"background": "${bg0}",
	"foreground": "${fg0}",
	"cursorColor": "${orange}",
	"selectionBackground": "${bg2}",
	"black": "${bg0}",
	"red": "${red_dark}",
	"green": "${green_dark}",
	"yellow": "${yellow_dark}",
	"blue": "${blue_dark}",
	"purple": "${purple_dark}",
	"cyan": "${aqua_dark}",
	"white": "${fg3}",
	"brightBlack": "${gray}",
	"brightRed": "${red}",
	"brightGreen": "${green}",
	"brightYellow": "${yellow}",
	"brightBlue": "${blue}",
	"brightPurple": "${purple}",
	"brightCyan": "${aqua}",
	"brightWhite": "${fg0}"
}
]],
		palette
	)

	return {
		{ filename = "lignite.json", content = content },
	}
end

return M
