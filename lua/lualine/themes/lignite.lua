local palette = require("lignite").palette

return {
	normal = {
		a = { fg = palette.bg0, bg = palette.blue, gui = "bold" },
		b = { fg = palette.blue, bg = palette.bg3 },
		c = { fg = palette.fg0, bg = palette.bg2 },
	},
	insert = {
		a = { fg = palette.bg0, bg = palette.green, gui = "bold" },
		b = { fg = palette.green, bg = palette.bg3 },
	},
	terminal = {
		a = { fg = palette.bg0, bg = palette.green, gui = "bold" },
		b = { fg = palette.green, bg = palette.bg3 },
	},
	command = {
		a = { fg = palette.bg0, bg = palette.yellow, gui = "bold" },
		b = { fg = palette.yellow, bg = palette.bg3 },
	},
	replace = {
		a = { fg = palette.bg0, bg = palette.red, gui = "bold" },
		b = { fg = palette.red, bg = palette.bg3 },
	},
	visual = {
		a = { fg = palette.bg0, bg = palette.purple, gui = "bold" },
		b = { fg = palette.purple, bg = palette.bg3 },
	},
	inactive = {
		a = { fg = palette.bg0, bg = palette.gray, gui = "bold" },
		b = { fg = palette.fg3, bg = palette.bg3 },
		c = { fg = palette.fg3, bg = palette.bg2 },
	},
}
