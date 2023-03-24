return {
  {
    'nvim-neo-tree/neo-tree.nvim',
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
      vim.cmd [[ Neotree close]]
    end,
    init = function()
      vim.g.neo_tree_remove_legacy_commands = 1
      if vim.fn.argc() == 1 then
        local stat = vim.loop.fs_stat(vim.fn.argv(0))
        if stat and stat.type == "directory" then
          require("neo-tree")
        end
      end
    end,
    opts = {
      window = {
        position = 'float'
      },
      filesystem = {
        bind_to_cwd = false,
        follow_current_file = true,
        use_libuv_file_watcher = false,
        hijack_netrw_behaviour = 'open_current'
      }
    }
  }
}
