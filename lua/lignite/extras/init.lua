local M = {}

---@class LigniteExtra
---@field filename string
---@field content string

local dir = vim.fs.dirname(debug.getinfo(1, "S").source:sub(2))

---@type string[]
M.modules = (function()
	---@type string[]
	local modules = {}

	for name, type in vim.fs.dir(dir) do
		if type == "file" and name:match("%.lua$") and name ~= "init.lua" then
			local extra = name:gsub("%.lua$", "")
			table.insert(modules, extra)
		end
	end

	return modules
end)()

M.build = function()
	local root = vim.fs.root(dir, "lua")
	local out = vim.fs.joinpath(root, "extras")

	for extra in vim.iter(M.modules) do
		local module = require("lignite.extras." .. extra)
		local generated = module.generate()
		local extra_dir = vim.fs.joinpath(out, extra)
		vim.fn.mkdir(extra_dir, "p")

		for file in vim.iter(generated) do
			local path = vim.fs.joinpath(extra_dir, file.filename)
			local f = assert(io.open(path, "w"))
			f:write(file.content)
			f:close()
			vim.print(extra .. ": Generated " .. file.filename .. "...")
		end
	end
end

return M
