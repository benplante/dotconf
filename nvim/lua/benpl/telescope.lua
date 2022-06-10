local M = {}

M.setup = function()
  local telescope = require('telescope')

  --telescope.load_extension('file_browser')
  telescope.load_extension('fzy_native')

  telescope.setup {
    defaults = {
      mappings = {
        n = {
          ["cd"] = function(prompt_bufnr)
            local selection = require('telescope.actions.state').get_selected_entry()
            local dir = vim.fn.fnamemodify(selection.path, ':p:h')
            require('telescope.actions').close(prompt_bufnr)

            vim.cmd(string.format('silent tcd %s', dir))
          end
        }
      }
    },

    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      }
    }
  }
end

M.project_files = function()
  local ok = pcall(require'telescope.builtin'.git_files)

  if not ok then require'telescope.builtin'.find_files() end
end

return M
