local M = {}

local function hex_to_rgb(hex)
	local r, g, b = hex:match("^#?(%x%x)(%x%x)(%x%x)$")
	assert(r, "invalid hex color: " .. tostring(hex))
	return tonumber(r, 16), tonumber(g, 16), tonumber(b, 16)
end

M.blend = function(bg, color, alpha)
	alpha = math.max(0, math.min(1, alpha))

	local br, bgreen, bb = hex_to_rgb(bg)
	local cr, cg, cb = hex_to_rgb(color)

	local function mix(base, over)
		return math.floor(base + (over - base) * alpha + 0.5)
	end

	return string.format("#%02x%02x%02x", mix(br, cr), mix(bgreen, cg), mix(bb, cb))
end

return M
