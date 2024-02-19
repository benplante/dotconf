return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  lazy = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope-frecency.nvim',
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make"
    },
    --'nvim-telescope/telescope-fzy-native.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
  },
  cmd = 'Telescope',
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup{
      defaults = {
        mappings = {
          n = {
            ["v"] = actions.select_vertical,
            ["s"] = actions.select_horizontal,
            ["q"] = actions.close,
          },
        },
      },
      extensions = {
        -- fzy_native = {
        --   override_generic_sorter = false,
        --   override_file_sorter = true,
        -- },
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case", 
        },
        frecency = {
          workspaces = {
            ["src"] = "/Users/benpl/src",
            ["conf"] = "/Users/benpl/.config"
          }
        }
      }
    }

    telescope.load_extension("fzf")
    telescope.load_extension('frecency')
    telescope.load_extension("ui-select")
  end
}
