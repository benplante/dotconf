return {
  {
    'benplante/neo-tree.nvim',
    --dev = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim'
    },
    cmd = "Neotree",
    keys = {
      { '<leader>n',function() require('neo-tree.command').execute({ toggle = true, dir = vim.loop.cwd() }) end, desc = 'NeoTree Files' }
    },
    deactivate = function()
      vim.cmd [[ Neotree close ]]
    end,
    init = function()
      vim.g.neo_tree_remove_legacy_commands = 1
      print(vim.fn.argc())
      if vim.fn.argc() == 1 then
        local stat = vim.loop.fs_stat(vim.fn.argv(0))
        if stat and stat.type == "directory" then
          require("neo-tree")
        end
      end
    end,
    opts = {
      window = {
        position = 'current'
      },
      filesystem = {
        bind_to_cwd = false,
        follow_current_file = true,
        use_libuv_file_watcher = true,
      }
    }
  },


  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope-frecency.nvim',
      'kkharji/sqlite.lua',
      'nvim-telescope/telescope-fzy-native.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
    },
    cmd = 'Telescope',
    keys = {
      { "-", "<CMD>Telescope find_files<CR>", desc = "Find Files" },
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
      telescope.load_extension("ui-select")

      if vim.loop.os_uname().sysname == "Windows_NT" then
        vim.g.sqlite_clib_path = vim.fn.expand("$USERPROFILE") .. "\\.sqlite3\\sqlite3.dll"
      end

      telescope.setup({
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
      })
    end
  },
}
