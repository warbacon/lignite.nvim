local M = {}

---@return LigniteExtra[]
M.generate = function()
	local util = require("lignite.util")
	local palette = require("lignite").palette

	local content = util.template(
		[[
background = ${bg0}
foreground = ${fg0}

cursor-color = ${orange}
cursor-text = ${bg0}

selection-background = ${bg2}
selection-foreground = cell-foreground

palette = 0=${bg0}
palette = 1=${red_dark}
palette = 2=${green_dark}
palette = 3=${yellow_dark}
palette = 4=${blue_dark}
palette = 5=${purple_dark}
palette = 6=${aqua_dark}
palette = 7=${fg3}
palette = 8=${gray}
palette = 9=${red}
palette = 10=${green}
palette = 11=${yellow}
palette = 12=${blue}
palette = 13=${purple}
palette = 14=${aqua}
palette = 15=${fg0}
]],
		palette
	)

	return {
		{ filename = "lignite", content = content },
	}
end

return M
