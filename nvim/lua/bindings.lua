local map = require('util').map

map('n', '<leader>ff', '<CMD>Telescope find_files<CR>')
map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>')
map('n', '<leader>fb', '<CMD>Telescope buffers<CR>')
map('n', '<leader>fh', '<CMD>Telescope help_tags<CR>')
map('n', '<leader>fd', '<CMD>Telescope file_browser<CR>')
map('n', '<leader>nt', '<CMD>Neotree filesystem reveal right<CR>')
map('n', '-', '<CMD>Neotree filesystem reveal current<CR>')
