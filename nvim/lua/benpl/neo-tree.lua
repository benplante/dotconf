return function()
  vim.cmd [[let g:neo_tree_remove_legacy_commands = 1]]

  vim.fn.sign_define("DiagnosticSignError",
    { text = " ", texthl = "DiagnosticSignError" })
  vim.fn.sign_define("DiagnosticSignWarn",
    { text = " ", texthl = "DiagnosticSignWarn" })
  vim.fn.sign_define("DiagnosticSignInfo",
    { text = " ", texthl = "DiagnosticSignInfo" })
  vim.fn.sign_define("DiagnosticSignHint",
    { text = "", texthl = "DiagnosticSignHint" })

  require('neo-tree').setup {
    log_level = "warn",
    log_to_file = true,
    enable_git_status = true,
    enable_diagnostics = true,
    window = {
      position = "float"
    },
    filesystem = {
      window = {
        position = "float"
      },
      netrw_hijack_behavior = 'disable',
      use_libuv_file_watcher = true,
    }
  }

end
