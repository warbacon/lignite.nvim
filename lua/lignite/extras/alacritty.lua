local M = {}

---@return LigniteExtra[]
M.generate = function()
	local util = require("lignite.util")
	local palette = require("lignite").palette

	local content = util.template(
		[[
[colors.primary]
background = "${bg0}"
foreground = "${fg0}"

[colors.cursor]
text = "${bg0}"
cursor = "${orange}"

[colors.selection]
text = "CellForeground"
background = "${bg2}"

[colors.normal]
black = "${bg0}"
red = "${red_dark}"
green = "${green_dark}"
yellow = "${yellow_dark}"
blue = "${blue_dark}"
magenta = "${purple_dark}"
cyan = "${aqua_dark}"
white = "${fg3}"

[colors.bright]
black = "${gray}"
red = "${red}"
green = "${green}"
yellow = "${yellow}"
blue = "${blue}"
magenta = "${purple}"
cyan = "${aqua}"
white = "${fg0}"
]],
		palette
	)

	return {
		{ filename = "lignite.toml", content = content },
	}
end

return M
