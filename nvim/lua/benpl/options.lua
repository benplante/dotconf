local set = require('benpl.utils').set_options

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
  --shell           =       '/bin/bash',

  ignorecase      =       true,
  smartcase       =       true,
  hlsearch        =       true,
  incsearch       =       true,
  magic           =       true,

  errorbells      =       false,
  visualbell      =       false,
  timeout         =       true,
  timeoutlen      =       500,
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
  cursorline      =       true,
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

  guifont         =       'CommitMonobencmt Nerd Font',
}

set('opt', options)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd [[abbr cosnt const]]
vim.cmd [[abbr pubic public]]
vim.cmd [[autocmd VimLeavePre * LspStop]]
