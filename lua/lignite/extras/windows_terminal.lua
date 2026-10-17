local M = {}

---@return LigniteExtra[]
M.generate = function()
	local util = require("lignite.util")
	local palette = require("lignite").palette

	local colorscheme = util.template(
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

	local theme = util.template(
		[[
{
	"name": "Lignite",
	"tab": {
		"background": "terminalBackground",
		"unfocusedBackground": "#00000000"
	},
	"tabRow": {
		"background": "${bg1}",
		"unfocusedBackground": "${bg2}"
	},
	"window": {
		"applicationTheme": "dark",
		"frame": "${green}",
		"unfocusedFrame": "${bg2}"
	}
}
]],
		palette
	)

	return {
		{ filename = "lignite-colorscheme.json", content = colorscheme },
		{ filename = "lignite-theme.json", content = theme },
	}
end

return M
