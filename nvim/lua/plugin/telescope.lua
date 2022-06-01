return function()
  local telescope = require('telescope')
  local map = require('util').map

  telescope.load_extension('file_browser')
  telescope.load_extension('fzy_native')

  telescope.setup {
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      }
    }
  }


  map('n', '<leader>ff', '<CMD>Telescope find_files<CR>')
  map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>')
  map('n', '<leader>fb', '<CMD>Telescope buffers<CR>')
  map('n', '<leader>fh', '<CMD>Telescope help_tags<CR>')
  map('n', '<leader>fd', '<CMD>Telescope file_browser<CR>')
end
