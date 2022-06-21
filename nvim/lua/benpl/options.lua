local set = require('benpl.util').set_options

local options = {
  backup          =       false,
  writebackup     =       false,
  swapfile        =       false,
  updatecount     =       0,
  undodir         =       vim.fn.stdpath('data') .. '/undodir',
  undofile        =       true,
  hidden          =       true,
  fileencoding    =       'utf-8',
  clipboard       =       'unnamedplus',

  ignorecase      =       true,
  smartcase       =       true,
  hlsearch        =       true,
  incsearch       =       true,
  magic           =       true,

  errorbells      =       false,
  visualbell      =       true,
  timeoutlen      =       100,
  termguicolors   =       true,

  syntax          =       'on',
  matchtime       =       1,

  number          =       true,
  relativenumber  =       true,

  wrap            =       true,
  wrapmargin      =       8,
  linebreak       =       true,
  showbreak       =       '↪',
  list            =       true,
  listchars = {
    tab = '→ ',
    eol = '¬',
    trail = '⋅',
    extends = '❯',
    precedes = '❮'
  },
  updatetime      =       300,
  showtabline     =       2,
  mouse           =       "a",
  numberwidth     =       3,
  signcolumn      =       'yes',

  laststatus      =       3,
  scrolloff       =       7,
  wildmenu        =       true,
  showmode        =       false,
  wildmode        =       { 'list', 'longest' },
  showmatch       =       true,
  completeopt     =       { 'menuone', 'noinsert', 'noselect' },
  splitright      =       true,
  splitbelow      =       true,

  expandtab       =       true,
  smarttab        =       true,
  autoindent      =       true,
  smartindent     =       true,
  shiftround      =       true,
  tabstop         =       2,
  softtabstop     =       2,
  shiftwidth      =       2,

  guifont         =       'Liga SFMono Nerd Font',
}

set('opt', options) 

vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0

vim.cmd [[abbr cosnt const]]
vim.cmd [[abbr pubic public]]
vim.cmd [[abbr _lp LBMX.Phoenix]]
vim.cmd [[abbr _ld LBMX.Phoenix.Data]]
vim.cmd [[abbr _ls LBMX.Phoenix.Services]]
vim.cmd [[abbr _la LBMX.Phoenix.API]]


