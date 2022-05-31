--require("globals")
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
    "~/.tmp"
}

opt.undodir = vim.fn.stdpath('data') .. '/undodir'
opt.undofile = true
opt.hidden = true
opt.completeopt = 'menuone,noinsert,noselect'

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.lazyredraw = false
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
opt.showbreak = "↪"
opt.autoindent = true
opt.ttyfast = true
opt.laststatus = 3
opt.scrolloff = 7
opt.wildmenu = true
opt.showmode = false
opt.wildmode = {"list", "longest"}
opt.showmatch = true
opt.mat = 2
opt.signcolumn = "yes"

o.expandtab = true
opt.smarttab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.shiftround = true

opt.list = true
opt.listchars = {
    tab = "→ ",
    eol = "¬",
    trail = "⋅",
    extends = "❯",
    precedes = "❮"
}

--if vim.fn.has('win32') then
--	opt.shell = 'pwsh'
--	opt.shellxquote = ''
--	opt.shellpipe = '|'
--	opt.shellcmdflag = '-NoLogo -NoProfile -Command'
--	opt.shellredir = '| Out-File -Encoding UTF8'
--	opt.rtp += vim.fn.stdpath('data') + 'site/pack/packer/start/fzf/bin'
--end

cmd [[filetype plugin indent on]]
cmd [[colorscheme everforest]]

require("bindings")
require("statusline")

