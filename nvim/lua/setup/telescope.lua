local telescope = require("telescope")

telescope.load_extension("file_browser")

local function map (lhs, rhs) 
	vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

map('<leader>ff', '<CMD>Telescope find_files<CR>')
map('<leader>fg', '<CMD>Telescope live_grep<CR>')
map('<leader>fb', '<CMD>Telescope buffers<CR>')
map('<leader>fh', '<CMD>Telescope help_tags<CR>')
map('<leader>fd', '<CMD>Telescope file_browser<CR>')
