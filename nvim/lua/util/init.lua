local M = {}

function M.map(mode, map, cmd, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_set_keymap(mode, map, cmd, options)
end

return M
