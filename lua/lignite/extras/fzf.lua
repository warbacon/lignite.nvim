local M = {}

local colors = {
	{ "fg", "fg0" },
	{ "bg", "bg0" },
	{ "border", "gray" },
	{ "separator", "gray" },
	{ "gutter", "bg0" },
	{ "scrollbar", "green" },
	{ "hl", "orange" },
	{ "hl+", "orange" },
	{ "fg+", "fg0" },
	{ "bg+", "bg2" },
	{ "pointer", "orange" },
	{ "prompt", "green" },
	{ "spinner", "green" },
	{ "marker", "green" },
	{ "header", "green" },
	{ "info", "yellow" },
	{ "preview-border", "gray" },
	{ "preview-scrollbar", "green" },
}

---@return LigniteExtra[]
M.generate = function()
	local palette = require("lignite").palette

	local args = { "--highlight-line" }
	for _, c in ipairs(colors) do
		args[#args + 1] = ("--color=%s:%s"):format(c[1], palette[c[2]])
	end

	local quoted_opts = '"$FZF_DEFAULT_OPTS \\\n    ' .. table.concat(args, " \\\n    ") .. '"\n'
	local ps1_script = "$env:FZF_DEFAULT_OPTS = @(\n    $env:FZF_DEFAULT_OPTS\n"
		.. "    '"
		.. table.concat(args, "'\n    '")
		.. "'\n"
		.. ') -join " "\n'

	return {
		{ filename = "lignite.sh", content = "export FZF_DEFAULT_OPTS=" .. quoted_opts },
		{ filename = "lignite.fish", content = "set -x FZF_DEFAULT_OPTS " .. quoted_opts },
		{ filename = "lignite.ps1", content = ps1_script },
	}
end

return M
