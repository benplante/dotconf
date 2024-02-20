return {
  'nvim-neo-tree/neo-tree.nvim',
  enabled = false,
  tag = '3.16',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim'
  },
  cmd = "Neotree",
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
      position = "current"
    },
    filesystem = {
      bind_to_cwd = false,
      hide_by_name = { "node_modules" },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true
      },
      use_libuv_file_watcher = true,
    }
  }
}
