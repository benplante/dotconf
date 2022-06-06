local fn = vim.fn
local packer_install_path = fn.stdpath('data') ..'/site/pack/packer/start/packer.nvim'
local packer_compile_path = fn.stdpath('config') .. '/lua/packer_compiled.lua'
local packer_bootstrap

if fn.empty(fn.glob(packer_install_path)) > 0 then
  packer_bootstrap = fn.system({ 'rm', '-f', packer_compile_path })
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', packer_install_path})
end

if fn.filereadable(packer_compile_path) == 1 then
  require('impatient')
  require('packer_compiled')
end

local packer = require('packer')
local util = require('packer.util')

packer.init({
  compile_path = packer_compile_path,
  display = {
    open_fn = function()
      return util.float({
        border = 'single',
        height = math.ceil(vim.o.lines * 0.5),
      })
    end,
  },
})

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'

  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    },
    config = require('plugin.neo-tree'),
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
      },
      { 'nvim-telescope/telescope-file-browser.nvim' },
      { 'nvim-telescope/telescope-fzy-native.nvim' },
    },
    config = require('plugin.telescope'),
    cmd = {'Telescope*'},
  }

  use {
    disable = true,
    'neovim/nvim-lspconfig',
    config = require('plugin.nvim-lspconfig'),
  }

  use {
    'OmniSharp/omnisharp-vim',
    ft = {'sln','csproj','cs'},
    config = require('plugin.omnisharp-vim'),
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
