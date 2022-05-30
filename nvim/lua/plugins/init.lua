local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
            config = function() require("nvim-web-devicons") end

		},
		config = function() require('setup.nvimtree') end
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
		config = function() require('setup.telescope') end,
        cmd = {'Telescope*'}
	}

--	use {
--		'neovim/nvim-lspconfig',
--		config = function() require('setup.lsp') end
--	}
	use {
		'OmniSharp/omnisharp-vim',
        ft = {'sln','csproj','cs'},
		config = function()
			vim.g.OmniSharp_translate_cygwin_wsl = 1
			vim.g.OmniSharp_server_use_net6 = 1
		end
	}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
