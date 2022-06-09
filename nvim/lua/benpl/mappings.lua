local map = require('benpl.util').map

map('n', '<leader>ff', '<CMD>Telescope find_files<CR>')
map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>')
map('n', '<leader>fb', '<CMD>Telescope buffers<CR>')
map('n', '<leader>fh', '<CMD>Telescope help_tags<CR>')
map('n', '<leader>fs', '<CMD>Telescope grep_string<CR>')
map('n', '<leader>fr', '<CMD>Telescope lsp_references<CR>')
map('n', '<leader>fd', '<CMD>Telescope file_browser<CR>')
map('n', '<leader>nt', '<CMD>Neotree filesystem reveal right<CR>')
map('n', '<leader>gs', '<CMD>Neotree git_status float<CR>')
map('n', '-', '<CMD>Neotree filesystem reveal current<CR>')

-- Ctrl h/j/k/l to move move around windows
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- -/= resize horizontally Shift + -/= to resize vertically
map('n', '+', '<C-w>1+')
map('n', '_', '<C-w>1-')
map('n', '=', '<C-w>1>')
map('n', '-', '<C-w>1<')

-- Alt + j/k to move text up or down
map('n', '<A-j>', '<CMD>move .+1<CR>==')
map('n', '<A-k>', '<CMD>move .-2<CR>==')
map('i', '<A-j>', '<Esc><CMD>move .+1<CR>==gi')
map('i', '<A-k>', '<Esc><CMD>move .-2<CR>==gi')
map('v', '<A-j>', ":move .+1<CR>==")
map('v', '<A-k>', ":move  .-2<CR>==")
map('x', '<A-j>', ":move '>+1<CR>gv=gv")
map('x', '<A-k>', ":move '<-2<CR>gv=gv")

-- Shift indent in visual stays in visual
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Alt + s to clear search highlight
map('n', '<A-s>', '<CMD>noh<CR>')

-- Shift tabs with h/l, buffers with j/k
map('n', '<S-n>', '<CMD>tabnew<CR>')
map('n', '<S-w>', '<CMD>tabclose<CR>')
map('n', '<S-q>', '<CMD>tabonly<CR>')
map('n', '<S-h>', '<CMD>tabprevious<CR>')
map('n', '<S-l>', '<CMD>tabnext<CR>')
map('n', '<S-j>', '<CMD>bnext<CR>')
map('n', '<S-k>', '<CMD>bprevious<CR>')
