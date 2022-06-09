local map = require('benpl.util').map

map('n', '<leader>ff', '<CMD>Telescope find_files<CR>')
map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>')
map('n', '<leader>fb', '<CMD>Telescope buffers<CR>')
map('n', '<leader>fh', '<CMD>Telescope help_tags<CR>')
map('n', '<leader>fd', '<CMD>Telescope file_browser<CR>')
map('n', '<leader>nt', '<CMD>Neotree filesystem reveal right<CR>')
map('n', '<leader>gs', '<CMD>Neotree git_status float<CR>')
map('n', '-', '<CMD>Neotree filesystem reveal current<CR>')

-- Shift hjkl move windows
map('n', '<S-h>', '<C-w>h')
map('n', '<S-j>', '<C-w>j')
map('n', '<S-k>', '<C-w>k')
map('n', '<S-l>', '<C-w>l')

-- -= to resize horizontally, +_ to resize vertically
map('n', '+', '<C-w>2+')
map('n', '_', '<C-w>2-')
map('n', '=', '<C-w>2>')
map('n', '-', '<C-w>2<')

map('n', '<S-l>', '<CMD>bnext<CR>')
map('n', '<S-h>', '<CMD>bprevious<CR>')

map('n', '<A-j>', '<Esc>:m .+1<CR>==gi')
map('n', '<A-k>', '<Esc>:m .-2<CR>==gi')

map('n', '<', '<gv')
map('n', '>', '>gv')

map('v', '<A-j>', '<Esc>:m .+1<CR>==gi')
map('v', '<A-k>', '<Esc>:m .-2<CR>==gi')
map('v', 'p', '"_dP')

map('n', '<A-s>', '<CMD>noh<CR>')
