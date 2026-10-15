local M = {}

---@return LigniteExtra[]
M.generate = function()
	local util = require("lignite.util")
	local palette = require("lignite").palette

	local content = util.template(
		[[
background              ${bg0}
foreground              ${fg0}

selection_foreground    none
selection_background    ${bg2}

cursor					${orange}
cursor_text_color		${bg0}

inactive_tab_foreground ${fg3}
inactive_tab_background ${bg2}
active_tab_foreground   ${bg0}
active_tab_background   ${green}

scrollbar_handle_color  ${orange}
url_color				${blue}

color0                  ${bg0}
color1                  ${red_dark}
color2                  ${green_dark}
color3                  ${yellow_dark}
color4                  ${blue_dark}
color5                  ${purple_dark}
color6                  ${aqua_dark}
color7					${fg3}
color8                  ${gray}
color9                  ${red}
color10                 ${green}
color11                 ${yellow}
color12                 ${blue}
color13                 ${purple}
color14                 ${aqua}
color15                 ${fg0}
]],
		palette
	)

	return {
		{ filename = "lignite.conf", content = content },
	}
end

return M
