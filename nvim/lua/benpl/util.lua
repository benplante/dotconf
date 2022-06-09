local M = {}

function M.map(mode, map, cmd, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_set_keymap(mode, map, cmd, options)
end

function M.set_options(scope, options)
  for k, v in pairs(options) do
    vim[scope][k] = v
  end
end

return M
