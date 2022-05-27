local g = vim.g
local nvimtree = require("nvim-tree")

require("nvim-web-devicons")

_G.NvimTreeConfig = {}

function NvimTreeConfig.toggle_replace()
	local view = require("nvim-tree.view")
	if view.is_visible() then
		view.close()
	else
		nvimtree.open_replacing_current_buffer()
	end
end

local function map(lhs, rhs)
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end


nvimtree.setup {
	disable_netrw = false,
	hijack_netrw = true,
	hijack_cursor = true,
	hijack_directories = {
		enable = true
	},
	update_cwd = true,
	git = {
		enable = true
	},
	view = {
		width = 50,
		side = "right",
		mappings = {
			list = {
				{ key = {'o', '<CR>'}, action = 'edit_in_place' } 
			}
		}
	}
}

map('-', '<CMD>lua NvimTreeConfig.toggle_replace()<CR>') 
map('<leader>nt', '<CMD>NvimTreeToggle<CR>')
