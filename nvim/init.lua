--require("globals")
local opt = vim.opt
local cmd = vim.cmd
local g = vim.g
local o = vim.o

-- Mispellings
cmd [[abbr cosnt const]]

opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.updatecount = 0

opt.backupdir = {
    "~/.tmp"
}

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
opt.showmode = true
opt.wildmode = {"list", "longest"}
opt.showmatch = true
opt.mat = 2
opt.signcolumn = "yes"

opt.smarttab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.shiftround = true

opt.list = true
opt.listchars = {
    tab = "→ ",
    eol = "¬",
    trail = "⋅",
    extends = "❯",
    precedes = "❮"
}

cmd [[filetype plugin indent on]]
cmd [[colorscheme everforest]]

require("plugins")

cmd [[syntax on]]
