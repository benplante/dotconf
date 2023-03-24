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
    },
    cmd = 'Telescope',
    keys = {
      { "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Find Files" },
      { "<leader>f/", "<CMD>Telescope live_grep<CR>", desc = "Grep in Files" },
      { "<leader>fr", "<CMD>Telescope frecency<CR>", desc = "Frecent Files" },
      { "<leader>fo", "<CMD>Telescope buffers show_all_buffers=true<CR>", desc = "Switch Buffers" },
      { "<leader>fg", "<CMD>Telescope git_files<CR>", desc = "Repository Files" },
      { "<leader>//", "<CMD>Telescope grep_string<CR>", desc = "Find string in Files" },
      { "<leader>/z", "<CMD>Telescope fuzzy_find<CR>", desc = "Fuzzy Find in Buffer" },
      { "<leader>gc", "<CMD>Telescope git_commits<CR>", desc = "Commit History" },
      { "<leader>gs", "<CMD>Telescope git_status<CR>", desc = "Local Changes" },
      { "<leader>gf", "<CMD>Telescope git_bcommits<CR>", desc = "File Commits"},
      { "<leader>jj", "<CMD>Telescope jumplist<CR>", desc = "Jumps" },
      { "<leader>j'", "<CMD>Telescope marks<CR>", desc = "Marks" },
    },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')

      telescope.load_extension('fzy_native')
      telescope.load_extension('frecency')

      if vim.loop.os_uname().sysname == "Windows_NT" then
        vim.g.sqlite_clib_path = vim.fn.expand("$USERPROFILE") .. "\\.sqlite3\\sqlite3.dll"
      end

      telescope.setup {
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
          fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
          }
        }
      }
    end
  },
}
