local fn = vim.fn
local packer_install_path = fn.stdpath('data') ..'/site/pack/packer/start/packer.nvim'
local packer_compile_path = fn.stdpath('config') .. '/lua/packer_compiled.lua'

if fn.empty(fn.glob(packer_install_path)) > 0 then
  packer_bootstrap = fn.system({ 'rm', '-f', packer_compile_path })
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', packer_install_path})
  print "Installing packer, close and reopen nvim"
  vim.cmd [[packadd packer.nvim]]
end

if fn.filereadable(packer_compile_path) == 1 then
  require('packer_compiled')
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

local ok_packer, packer = pcall(require, 'packer')
if not ok_packer then
  return
end
local ok_util, util = pcall(require, 'packer.util')
if not ok_util then
  return
end

packer.init({
  compile_path = packer_compile_path,
  profile = {
    enable = true
  },
  display = {
    open_fn = function()
      return util.float({
        border = 'single',
        height = math.ceil(vim.o.lines * 0.5),
      })
    end,
  },
})

packer.startup(function(use)
  use { 'wbthomason/packer.nvim' }

  use { 'lewis6991/impatient.nvim' }

  use {
    'nyoom-engineering/oxocarbon.nvim',
    config = function()
      vim.opt.background = 'dark'
      vim.cmd [[ colorscheme oxocarbon ]]
    end
  }

  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    },
    config = require('benpl.neo-tree'),
  }

  use {
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function() require('neogit').setup() end,
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup() end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'c_sharp', 'lua', 'javascript', 'json', 'json5', 'typescript' },
        disable = { 'c' }
      }
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-treesitter/nvim-treesitter' },
      { 'nvim-telescope/telescope-fzy-native.nvim' },
    },
    config = require('benpl.telescope').setup
  }

  use {
    'nvim-telescope/telescope-frecency.nvim',
    requires = { 'kkharji/sqlite.lua' },
  }

  use { 'nvim-telescope/telescope-file-browser.nvim' }

  use {
      'williamboman/mason.nvim',
      config = function() require('mason').setup() end
  }

  use {
    'neovim/nvim-lspconfig',
    after = 'mason-lspconfig.nvim',
    requires = {
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = require('benpl.nvim-lspconfig'),
  }

  use { 'L3MON4D3/LuaSnip' }
  use { 'saadparwaiz1/cmp_luasnip' }

  use { 'mfussenegger/nvim-dap' }

  use {
    'folke/which-key.nvim',
    config = require('benpl.which-key'),
  }

  use {
    'anuvyklack/hydra.nvim',
    requires = {
      'anuvyklack/keymap-layer.nvim'
    },
    config = function() require('benpl.hydra') end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
