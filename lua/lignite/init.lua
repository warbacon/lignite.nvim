local M = {}

---@type table<string,string>
M.palette = {
	fg0 = "#ebdbb2",
	fg3 = "#a89984",
	gray = "#928374",
	bg0 = "#1c1c1c",
	bg1 = "#282828",
	bg2 = "#3c3836",
	bg3 = "#504945",
	bg4 = "#665c54",
	bg5 = "#7c6f64",

	purple_dark = "#b16286",
	blue_dark = "#458588",
	aqua_dark = "#689d6a",
	green_dark = "#98971a",
	yellow_dark = "#d79921",
	orange_dark = "#d65d0e",
	red_dark = "#cc241d",

	purple = "#d3869b",
	blue = "#83a598",
	aqua = "#8ec07c",
	green = "#b8bb26",
	yellow = "#fabd2f",
	orange = "#fe8019",
	red = "#fb4934",
}

M._load = function()
	vim.o.background = "dark"
	vim.o.termguicolors = true

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	vim.g.colors_name = "lignite"

	local blend = require("lignite.util").blend

	---@type table<string,vim.api.keyset.highlight>
	local highlights = {
		Normal = { fg = M.palette.fg0, bg = M.palette.bg0 },
		Statusline = { bg = M.palette.bg2 },
		StatuslineNC = { fg = M.palette.fg3, bg = M.palette.bg2 },
		CursorLineNr = { fg = M.palette.yellow, bold = true },
		LineNr = { fg = M.palette.bg5 },
		Visual = { bg = M.palette.bg2 },
		ModeMsg = { fg = M.palette.yellow, bold = true },
		ColorColumn = { bg = M.palette.bg1 },
		CursorLine = { bg = M.palette.bg1 },
		MatchParen = { bg = M.palette.bg3, bold = true },
		SignColumn = { link = "LineNr" },
		QuickFixLine = { fg = M.palette.orange, bold = true },
		WinSeparator = { fg = M.palette.bg2 },
		Folded = { fg = M.palette.fg0, bg = M.palette.bg1 },

		Pmenu = { bg = M.palette.bg2 },
		PmenuSel = { bg = M.palette.bg3 },
		PmenuThumb = { bg = M.palette.bg5 },
		PmenuKind = { fg = M.palette.aqua },
		PmenuExtra = { fg = M.palette.gray },
		PmenuBorder = { fg = M.palette.gray },

		NormalFloat = { bg = M.palette.bg1 },
		FloatBorder = { fg = M.palette.gray },

		Added = { fg = M.palette.green },
		Changed = { fg = M.palette.blue },
		Removed = { fg = M.palette.red },
		DiffDelete = { fg = M.palette.red, bold = true },

		Error = { fg = M.palette.red, bold = true },
		Todo = { fg = M.palette.blue },

		MoreMsg = { fg = M.palette.blue },
		ErrorMsg = { fg = M.palette.red },
		OkMsg = { fg = M.palette.green },
		Question = { fg = M.palette.aqua },
		DiagnosticError = { fg = M.palette.red },
		DiagnosticWarn = { fg = M.palette.yellow },
		DiagnosticOk = { fg = M.palette.green },
		DiagnosticHint = { fg = M.palette.blue },
		DiagnosticInfo = { fg = M.palette.aqua },
		DiagnosticVirtualTextError = { fg = M.palette.red, bg = blend(M.palette.bg0, M.palette.red, 0.2) },
		DiagnosticVirtualTextWarn = { fg = M.palette.yellow, bg = blend(M.palette.bg0, M.palette.yellow, 0.2) },
		DiagnosticVirtualTextOk = { fg = M.palette.green, bg = blend(M.palette.bg0, M.palette.green, 0.2) },
		DiagnosticVirtualTextHint = { fg = M.palette.blue, bg = blend(M.palette.bg0, M.palette.blue, 0.2) },
		DiagnosticVirtualTextInfo = { fg = M.palette.aqua, bg = blend(M.palette.bg0, M.palette.aqua, 0.2) },
		DiagnosticUnderlineError = { sp = M.palette.red, undercurl = true },
		DiagnosticUnderlineWarn = { sp = M.palette.yellow, undercurl = true },
		DiagnosticUnderlineOk = { sp = M.palette.green, undercurl = true },
		DiagnosticUnderlineHint = { sp = M.palette.blue, undercurl = true },
		DiagnosticUnderlineInfo = { sp = M.palette.aqua, undercurl = true },

		SpellBad = { link = "DiagnosticUnderlineError" },
		SpellCap = { link = "DiagnosticUnderlineWarn" },
		SpellRare = { link = "DiagnosticUnderlineHint" },
		SpellLocal = { link = "DiagnosticUnderlineInfo" },

		Identifier = { fg = M.palette.blue },
		PreProc = { fg = M.palette.aqua },
		Directory = { fg = M.palette.blue, bold = true },
		Statement = { fg = M.palette.red },
		String = { fg = M.palette.green },
		Function = { fg = M.palette.green, bold = true },
		Delimiter = { fg = M.palette.orange },
		Special = { fg = M.palette.orange },
		Operator = { fg = M.palette.orange },
		Structure = { fg = M.palette.aqua },
		Comment = { fg = M.palette.gray, italic = true },
		Conceal = { link = "NonText" },
		NonText = { fg = M.palette.gray },
		Type = { fg = M.palette.yellow },
		Constant = { fg = M.palette.purple },
		Title = { fg = M.palette.green, bold = true },

		["@variable"] = { fg = M.palette.fg0 },
		["@markup.quote"] = { link = "Comment" },
		["@tag.attribute"] = { link = "Identifier" },
		["@lsp.type.delimiter"] = { link = "Delimiter" },

		["@markup.link"] = { underline = false },
		["@markup.link.label"] = { fg = M.palette.aqua },
		["@markup.link.url"] = { fg = M.palette.purple, underline = true },
		["@markup.heading.1"] = { fg = M.palette.green, bold = true },
		["@markup.heading.2"] = { fg = M.palette.yellow, bold = true },
		["@markup.heading.3"] = { fg = M.palette.purple, bold = true },
		["@markup.heading.4"] = { fg = M.palette.blue, bold = true },
		["@markup.heading.5"] = { fg = M.palette.aqua, bold = true },
		["@markup.heading.6"] = { fg = M.palette.aqua, bold = true },

		RenderMarkdownH1Bg = { fg = M.palette.green, bg = blend(M.palette.bg0, M.palette.green, 0.2), bold = true },
		RenderMarkdownH2Bg = { fg = M.palette.yellow, bg = blend(M.palette.bg0, M.palette.yellow, 0.2), bold = true },
		RenderMarkdownH3Bg = { fg = M.palette.purple, bg = blend(M.palette.bg0, M.palette.purple, 0.2), bold = true },
		RenderMarkdownH4Bg = { fg = M.palette.blue, bg = blend(M.palette.bg0, M.palette.blue, 0.2), bold = true },
		RenderMarkdownH5Bg = { fg = M.palette.aqua, bg = blend(M.palette.bg0, M.palette.aqua, 0.2), bold = true },
		RenderMarkdownH6Bg = { fg = M.palette.aqua, bg = blend(M.palette.bg0, M.palette.aqua, 0.2), bold = true },

		MiniIconsAzure = { fg = M.palette.blue },
		MiniIconsBlue = { fg = M.palette.blue },
		MiniIconsCyan = { fg = M.palette.aqua },
		MiniIconsGreen = { fg = M.palette.green },
		MiniIconsGrey = { fg = M.palette.fg0 },
		MiniIconsOrange = { fg = M.palette.orange },
		MiniIconsPurple = { fg = M.palette.purple },
		MiniIconsRed = { fg = M.palette.red },
		MiniIconsYellow = { fg = M.palette.yellow },

		BlinkCmpKindText = { link = "NonText" },
		BlinkCmpKindSnippet = { link = "NonText" },
		BlinkCmpKindFunction = { fg = M.palette.green },
		BlinkCmpKindString = { fg = M.palette.green },
		BlinkCmpKindFolder = { fg = M.palette.blue },
		BlinkCmpKindVariable = { fg = M.palette.blue },
		BlinkCmpKindConstant = { fg = M.palette.blue },
		BlinkCmpKindClass = { fg = M.palette.yellow },
		BlinkCmpKindEnum = { fg = M.palette.yellow },
	}

	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end

	vim.g.terminal_color_0 = M.palette.bg0
	vim.g.terminal_color_1 = M.palette.red_dark
	vim.g.terminal_color_2 = M.palette.green_dark
	vim.g.terminal_color_3 = M.palette.yellow_dark
	vim.g.terminal_color_4 = M.palette.blue_dark
	vim.g.terminal_color_5 = M.palette.purple_dark
	vim.g.terminal_color_6 = M.palette.aqua_dark
	vim.g.terminal_color_7 = M.palette.fg3
	vim.g.terminal_color_8 = M.palette.gray
	vim.g.terminal_color_9 = M.palette.red
	vim.g.terminal_color_10 = M.palette.green
	vim.g.terminal_color_11 = M.palette.yellow
	vim.g.terminal_color_12 = M.palette.blue
	vim.g.terminal_color_13 = M.palette.purple
	vim.g.terminal_color_14 = M.palette.aqua
	vim.g.terminal_color_15 = M.palette.fg0
end

return M
