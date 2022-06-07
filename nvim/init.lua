local opt = vim.opt
local cmd = vim.cmd
local g = vim.g
local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- Mispellings
cmd [[abbr cosnt const]]
cmd [[abbr pubic public]]

opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.updatecount = 0

opt.backupdir = {
  '~/.tmp'
}

opt.undodir = vim.fn.stdpath('data') .. '/undodir'
opt.undofile = true
opt.hidden = true
opt.completeopt = 'menuone,noinsert,noselect'

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.magic = true

opt.errorbells = false
opt.visualbell = true
opt.timeoutlen = 1000

o.termguicolors = true
o.syntax = 'on'
opt.number = true
opt.relativenumber = true
opt.wrap = true
opt.wrapmargin = 8
opt.linebreak = true
opt.showbreak = '↪'
opt.autoindent = true
opt.laststatus = 3
opt.scrolloff = 7
opt.wildmenu = true
opt.showmode = false
opt.wildmode = {'list', 'longest'}
opt.showmatch = true
opt.mat = 2
opt.signcolumn = 'yes'

o.expandtab = true
opt.smarttab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4 
opt.shiftround = true

opt.list = true
opt.listchars = {
  tab = '→ ',
  eol = '¬',
  trail = '⋅',
  extends = '❯',
  precedes = '❮'
}

o.guifont = 'Liga SFMono Nerd Font'

cmd [[filetype plugin indent on]]
cmd [[colorscheme everforest]]

require('bindings')
require('statusline')
require('plugin.packer')

