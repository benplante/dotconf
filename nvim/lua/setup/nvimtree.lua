local g = vim.g
local nvimtree = require("nvim-tree")

require("nvim-web-devicons")

local function toggle_replace()
	local view = require("nvim-tree.view")
	if view.is_visible() then
		view.close()
	else
		nvimtree.open_replacing_current_buffer()
	end
end

nvimtree.setup {
	disable_netrw = false,
	hijack_netrw = true,
	hijack_cursor = true,
	update_cwd = true,
	git = {
		enable = true
	},
	view = {
		width = 50,
		side = "right"
	}
}
