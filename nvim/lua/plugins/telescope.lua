return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope-frecency.nvim',
      'kkharji/sqlite.lua',
      'nvim-telescope/telescope-fzy-native.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
    },
    cmd = 'Telescope',
    keys = {
      { '<leader><leader>', '<CMD>Telescope frecency<CR>', desc = 'Frecency' },
      { '<leader>/', '<CMD>Telescope live_grep<CR>', desc = 'Grep' },
      { '<leader>f', require('telescope.builtin').find_files, desc = 'Grep' },
    },
    config = function()
      local telescope = require('telescope')

      telescope.load_extension('file_browser')
      telescope.load_extension('fzy_native')
      telescope.load_extension('frecency')

      telescope.setup {
        extensions = {
          fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
          }
        }
      }
    end
  },
}
