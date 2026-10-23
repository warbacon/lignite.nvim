local M = {}

---@return LigniteExtra[]
M.generate = function()
	local util = require("lignite.util")
	local palette = require("lignite").palette

	local stripped = {}
	for name, color in pairs(palette) do
		stripped[name] = type(color) == "string" and color:gsub("^#", "") or color
	end

	local content = util.template(
		[[
[colors-dark]
background=${bg0}
foreground=${fg0}

selection-foreground=${fg0}
selection-background=${bg2}

cursor=${bg0} ${orange}
urls=${blue}

regular0=${bg0}
regular1=${red_dark}
regular2=${green_dark}
regular3=${yellow_dark}
regular4=${blue_dark}
regular5=${purple_dark}
regular6=${aqua_dark}
regular7=${fg3}

bright0=${gray}
bright1=${red}
bright2=${green}
bright3=${yellow}
bright4=${blue}
bright5=${purple}
bright6=${aqua}
bright7=${fg0}
]],
		stripped
	)

	return {
		{ filename = "lignite.ini", content = content },
	}
end

return M
