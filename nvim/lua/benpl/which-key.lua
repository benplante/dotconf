return function()
  local builtin = require('telescope.builtin')
  local extensions = require('telescope').extensions
  local telescope_config = require('benpl.telescope')
  local wk = require('which-key')
  wk.setup{}

  wk.register({
    f = {
      name = 'Find',
      f = { builtin.find_files, 'File Names', },
      b = { builtin.buffers, 'Buffer Names', },
      g = { telescope_config.project_files, 'Git Files', },
      d = { extensions.file_browser.file_browser, 'Browser', },
      s = { extensions.file_browser.live_grep, 'Grep', },
    },
    c = {
      name = 'Code',
      r = { builtin.lsp_references, 'References', },
      w = { function() builtin.diagnostics(0) end, 'Buffer Diagnostics', },
      W = { builtin.diagnostics, 'Workspace Diagnostics', },
      d = { builtin.lsp_definitions, 'Definition', },
      t = { builtin.lsp_type_definitions, 'Type Definition', },
      i = { builtin.lsp_implementations, 'Implementations', },
    },
    g = {
      name = 'Git',
      f = { builtin.git_bcommits, 'File Commits', },
      c = { builtin.git_commits, 'Commits', },
      b = { builtin.git_branches, 'Branches', },
      w = { builtin.git_status, 'Local Changes', },
      t = { builtin.git_stash, 'Stashes', }
    },
    j = {
      name = 'Jump',
      j = { builtin.jumplist, 'Jump list' },
      m = { builtin.marks, 'Marks' },
      l = { builtin.loclist, 'Location list' },
      q = { builtin.quickfix, 'Quickfix' },
    },
    s = { builtin.current_buffer_fuzzy_find, 'Fuzzy Find', },
    ['<leader>'] = { extensions.frecency.frecency, 'Frecency' },
  },
  { prefix = '<leader>'})
end
