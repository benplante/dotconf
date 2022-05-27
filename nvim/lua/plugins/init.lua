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
			'kyazdani42/nvim-web-devicons'
		},
		config = require('setup.nvimtree')
	}

	use {
		'nvim-telescope/telescope-file-browser.nvim',
		requires = {{
			'nvim-telescope/telescope.nvim',
			requires = {{
				'nvim-lua/plenary.nvim'
			}}
		}},
		config = require('setup.telescope')
	}

	use {
		'OmniSharp/omnisharp-vim'
	}

"	use {
		'junegunn/fzf.vim',
		requires = {{
			'junegunn/fzf',
			run = function() vim.fn['fzf#install']() end
		}}
	}
"
	if packer_bootstrap then
		require('packer').sync()
	end
end)
