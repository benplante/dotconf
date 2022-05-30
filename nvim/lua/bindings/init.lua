local nvimtree = require('nvim-tree')
_G.NvimTreeConfig = {}

local function map (lhs, rhs) 
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

function NvimTreeConfig.toggle_replace()
	local view = require("nvim-tree.view")
	if view.is_visible() then
		view.close()
	else
		nvimtree.open_replacing_current_buffer()
	end
end

map('<leader>ff', '<CMD>Telescope find_files<CR>')
map('<leader>fg', '<CMD>Telescope live_grep<CR>')
map('<leader>fb', '<CMD>Telescope buffers<CR>')
map('<leader>fh', '<CMD>Telescope help_tags<CR>')
map('<leader>fd', '<CMD>Telescope file_browser<CR>')
map('-', '<CMD>lua NvimTreeConfig.toggle_replace()<CR>') 
map('<leader>nt', '<CMD>NvimTreeToggle<CR>')
