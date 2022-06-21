-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/bplante/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/bplante/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/bplante/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/bplante/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/bplante/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\2À\4\0\0\4\0\21\0'6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\r\0'\1\14\0B\0\2\0029\0\15\0005\1\19\0005\2\17\0005\3\16\0=\3\18\2=\2\20\1B\0\2\1K\0\1\0\15filesystem\1\0\0\vwindow\1\0\2\27use_libuv_file_watcher\2\26netrw_hijack_behavior\17open_current\1\0\1\rposition\fcurrent\nsetup\rneo-tree\frequire\1\0\2\ttext\bÔ†¥\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tÔÅö \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tÔÅ± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔÅó \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn.let g:neo_tree_remove_legacy_commands = 1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    after = { "nvim-lspconfig" },
    loaded = true,
    only_config = true
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2≥\4\0\2\b\0\26\0W6\2\0\0009\2\1\0029\2\2\2\18\3\1\0'\4\3\0'\5\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\n\0006\6\0\0009\6\v\0069\6\f\0069\6\r\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\14\0006\6\0\0009\6\v\0069\6\f\0069\6\15\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\16\0006\6\0\0009\6\v\0069\6\f\0069\6\17\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\18\0006\6\0\0009\6\v\0069\6\f\0069\6\19\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\20\0006\6\0\0009\6\v\0069\6\f\0069\6\21\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\22\0006\6\0\0009\6\v\0069\6\f\0069\6\23\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\24\0006\6\0\0009\6\v\0069\6\f\0069\6\25\6\18\a\2\0B\3\5\1K\0\1\0\vrename\acr\19signature_help\n<A-;>\nhover\6;\15references\agr\19implementation\agI\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim√\4\1\0\r\0!\0:6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\16\0005\4\6\0009\5\4\0009\5\5\5B\5\1\2=\5\a\0049\5\4\0009\5\b\5B\5\1\2=\5\t\0049\5\4\0009\5\n\0055\6\r\0009\a\v\0009\a\f\a=\a\14\6B\5\2\2=\5\15\4=\4\4\0034\4\3\0005\5\17\0>\5\1\4=\4\18\3B\2\2\0013\2\19\0005\3\20\0006\4\21\0\18\5\3\0B\4\2\4H\a\18Ä8\t\b\0019\t\3\t5\n\28\0006\v\0\0'\f\22\0B\v\2\0029\v\23\v6\f\24\0009\f\25\f9\f\26\f9\f\27\fB\f\1\0A\v\0\2=\v\29\n=\2\30\n5\v\31\0=\v \nB\t\2\1F\a\3\3R\aÏ\127K\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\14on_attach\17capabilities\1\0\0\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\npairs\1\3\0\0\14omnisharp\16sumneko_lua\0\fsources\1\0\1\tname\rnvim_lsp\1\0\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\f<S-Tab>\21select_prev_item\n<Tab>\1\0\0\21select_next_item\fmapping\nsetup\14lspconfig\bcmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2ñ\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\a\0\0\fc_sharp\blua\15javascript\tjson\njson5\15typescript\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2˜\1\0\1\a\0\14\0\0266\1\0\0'\2\1\0B\1\2\0029\1\2\1B\1\1\0026\2\3\0009\2\4\0029\2\5\0029\3\6\1'\4\a\0B\2\3\0026\3\0\0'\4\b\0B\3\2\0029\3\t\3\18\4\0\0B\3\2\0016\3\3\0009\3\n\0036\4\v\0009\4\f\4'\5\r\0\18\6\2\0B\4\3\0A\3\0\1K\0\1\0\18silent tcd %s\vformat\vstring\bcmd\nclose\22telescope.actions\t:p:h\tpath\16fnamemodify\afn\bvim\23get_selected_entry\28telescope.actions.state\frequireı\1\1\0\a\0\17\0\0226\0\0\0'\1\1\0B\0\2\0029\1\2\0'\2\3\0B\1\2\0019\1\4\0005\2\f\0005\3\n\0005\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\4=\4\v\3=\3\r\0025\3\15\0005\4\14\0=\4\3\3=\3\16\2B\1\2\1K\0\1\0\15extensions\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\rdefaults\1\0\0\rmappings\1\0\0\6n\1\0\0\acd\1\0\0\0\nsetup\15fzy_native\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2)\0\0\2\1\1\0\5-\0\0\0009\0\0\0)\1\0\0B\0\2\1K\0\1\0\0¿\16diagnostics©\n\1\0\t\0J\0y6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0016\2\0\0'\3\4\0B\2\2\0026\3\0\0'\4\5\0B\3\2\0029\4\6\0034\5\0\0B\4\2\0019\4\a\0035\5\24\0005\6\b\0005\a\n\0009\b\t\0>\b\1\a=\a\v\0065\a\r\0009\b\f\0>\b\1\a=\a\14\0065\a\16\0009\b\15\2>\b\1\a=\a\17\0065\a\19\0009\b\18\0019\b\18\b>\b\1\a=\a\20\0065\a\22\0009\b\18\0019\b\21\b>\b\1\a=\a\23\6=\6\v\0055\6\25\0005\a\27\0009\b\26\0>\b\1\a=\a\28\0065\a\30\0003\b\29\0>\b\1\a=\a\31\0065\a!\0009\b \0>\b\1\a=\a\"\0065\a$\0009\b#\0>\b\1\a=\a\20\0065\a&\0009\b%\0>\b\1\a=\a'\0065\a)\0009\b(\0>\b\1\a=\a*\6=\6+\0055\6,\0005\a.\0009\b-\0>\b\1\a=\a\v\0065\a0\0009\b/\0>\b\1\a=\a+\0065\a2\0009\b1\0>\b\1\a=\a\14\0065\a4\0009\b3\0>\b\1\a=\a\31\0065\a6\0009\b5\0>\b\1\a=\a'\6=\6\17\0055\0067\0005\a9\0009\b8\0>\b\1\a=\a:\0065\a<\0009\b;\0>\b\1\a=\a=\0065\a?\0009\b>\0>\b\1\a=\a@\0065\aB\0009\bA\0>\b\1\a=\aC\6=\6:\0055\6E\0009\aD\0>\a\1\6=\6\23\0055\6G\0009\aF\0019\aF\a>\a\1\6=\6H\0055\6I\0B\4\3\0012\0\0ÄK\0\1\0\1\0\1\vprefix\r<leader>\r<leader>\1\3\0\0\0\rFrecency\rfrecency\1\3\0\0\0\15Fuzzy Find\30current_buffer_fuzzy_find\6q\1\3\0\0\0\rQuickfix\rquickfix\6l\1\3\0\0\0\18Location list\floclist\6m\1\3\0\0\0\nMarks\nmarks\6j\1\3\0\0\0\14Jump list\rjumplist\1\0\1\tname\tJump\1\3\0\0\0\fStashes\14git_stash\1\3\0\0\0\18Local Changes\15git_status\1\3\0\0\0\rBranches\17git_branches\1\3\0\0\0\fCommits\16git_commits\1\3\0\0\0\17File Commits\17git_bcommits\1\0\1\tname\bGit\6c\6i\1\3\0\0\0\20Implementations\24lsp_implementations\6t\1\3\0\0\0\20Type Definition\25lsp_type_definitions\1\3\0\0\0\15Definition\20lsp_definitions\6W\1\3\0\0\0\26Workspace Diagnostics\16diagnostics\6w\1\3\0\0\0\23Buffer Diagnostics\0\6r\1\3\0\0\0\15References\19lsp_references\1\0\1\tname\tCode\1\0\0\6s\1\3\0\0\0\tGrep\14live_grep\6d\1\3\0\0\0\fBrowser\17file_browser\6g\1\3\0\0\0\14Git Files\18project_files\6b\1\3\0\0\0\17Buffer Names\fbuffers\6f\1\3\0\0\0\15File Names\15find_files\1\0\1\tname\tFind\rregister\nsetup\14which-key\20benpl.telescope\15extensions\14telescope\22telescope.builtin\frequire\0" },
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\2À\4\0\0\4\0\21\0'6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\r\0'\1\14\0B\0\2\0029\0\15\0005\1\19\0005\2\17\0005\3\16\0=\3\18\2=\2\20\1B\0\2\1K\0\1\0\15filesystem\1\0\0\vwindow\1\0\2\27use_libuv_file_watcher\2\26netrw_hijack_behavior\17open_current\1\0\1\rposition\fcurrent\nsetup\rneo-tree\frequire\1\0\2\ttext\bÔ†¥\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tÔÅö \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tÔÅ± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔÅó \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn.let g:neo_tree_remove_legacy_commands = 1\bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2ñ\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\a\0\0\fc_sharp\blua\15javascript\tjson\njson5\15typescript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2)\0\0\2\1\1\0\5-\0\0\0009\0\0\0)\1\0\0B\0\2\1K\0\1\0\0¿\16diagnostics©\n\1\0\t\0J\0y6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0016\2\0\0'\3\4\0B\2\2\0026\3\0\0'\4\5\0B\3\2\0029\4\6\0034\5\0\0B\4\2\0019\4\a\0035\5\24\0005\6\b\0005\a\n\0009\b\t\0>\b\1\a=\a\v\0065\a\r\0009\b\f\0>\b\1\a=\a\14\0065\a\16\0009\b\15\2>\b\1\a=\a\17\0065\a\19\0009\b\18\0019\b\18\b>\b\1\a=\a\20\0065\a\22\0009\b\18\0019\b\21\b>\b\1\a=\a\23\6=\6\v\0055\6\25\0005\a\27\0009\b\26\0>\b\1\a=\a\28\0065\a\30\0003\b\29\0>\b\1\a=\a\31\0065\a!\0009\b \0>\b\1\a=\a\"\0065\a$\0009\b#\0>\b\1\a=\a\20\0065\a&\0009\b%\0>\b\1\a=\a'\0065\a)\0009\b(\0>\b\1\a=\a*\6=\6+\0055\6,\0005\a.\0009\b-\0>\b\1\a=\a\v\0065\a0\0009\b/\0>\b\1\a=\a+\0065\a2\0009\b1\0>\b\1\a=\a\14\0065\a4\0009\b3\0>\b\1\a=\a\31\0065\a6\0009\b5\0>\b\1\a=\a'\6=\6\17\0055\0067\0005\a9\0009\b8\0>\b\1\a=\a:\0065\a<\0009\b;\0>\b\1\a=\a=\0065\a?\0009\b>\0>\b\1\a=\a@\0065\aB\0009\bA\0>\b\1\a=\aC\6=\6:\0055\6E\0009\aD\0>\a\1\6=\6\23\0055\6G\0009\aF\0019\aF\a>\a\1\6=\6H\0055\6I\0B\4\3\0012\0\0ÄK\0\1\0\1\0\1\vprefix\r<leader>\r<leader>\1\3\0\0\0\rFrecency\rfrecency\1\3\0\0\0\15Fuzzy Find\30current_buffer_fuzzy_find\6q\1\3\0\0\0\rQuickfix\rquickfix\6l\1\3\0\0\0\18Location list\floclist\6m\1\3\0\0\0\nMarks\nmarks\6j\1\3\0\0\0\14Jump list\rjumplist\1\0\1\tname\tJump\1\3\0\0\0\fStashes\14git_stash\1\3\0\0\0\18Local Changes\15git_status\1\3\0\0\0\rBranches\17git_branches\1\3\0\0\0\fCommits\16git_commits\1\3\0\0\0\17File Commits\17git_bcommits\1\0\1\tname\bGit\6c\6i\1\3\0\0\0\20Implementations\24lsp_implementations\6t\1\3\0\0\0\20Type Definition\25lsp_type_definitions\1\3\0\0\0\15Definition\20lsp_definitions\6W\1\3\0\0\0\26Workspace Diagnostics\16diagnostics\6w\1\3\0\0\0\23Buffer Diagnostics\0\6r\1\3\0\0\0\15References\19lsp_references\1\0\1\tname\tCode\1\0\0\6s\1\3\0\0\0\tGrep\14live_grep\6d\1\3\0\0\0\fBrowser\17file_browser\6g\1\3\0\0\0\14Git Files\18project_files\6b\1\3\0\0\0\17Buffer Names\fbuffers\6f\1\3\0\0\0\15File Names\15find_files\1\0\1\tname\tFind\rregister\nsetup\14which-key\20benpl.telescope\15extensions\14telescope\22telescope.builtin\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\2_\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\27automatic_installation\2\nsetup\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2˜\1\0\1\a\0\14\0\0266\1\0\0'\2\1\0B\1\2\0029\1\2\1B\1\1\0026\2\3\0009\2\4\0029\2\5\0029\3\6\1'\4\a\0B\2\3\0026\3\0\0'\4\b\0B\3\2\0029\3\t\3\18\4\0\0B\3\2\0016\3\3\0009\3\n\0036\4\v\0009\4\f\4'\5\r\0\18\6\2\0B\4\3\0A\3\0\1K\0\1\0\18silent tcd %s\vformat\vstring\bcmd\nclose\22telescope.actions\t:p:h\tpath\16fnamemodify\afn\bvim\23get_selected_entry\28telescope.actions.state\frequireı\1\1\0\a\0\17\0\0226\0\0\0'\1\1\0B\0\2\0029\1\2\0'\2\3\0B\1\2\0019\1\4\0005\2\f\0005\3\n\0005\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\4=\4\v\3=\3\r\0025\3\15\0005\4\14\0=\4\3\3=\3\16\2B\1\2\1K\0\1\0\15extensions\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\rdefaults\1\0\0\rmappings\1\0\0\6n\1\0\0\acd\1\0\0\0\nsetup\15fzy_native\19load_extension\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\2≥\4\0\2\b\0\26\0W6\2\0\0009\2\1\0029\2\2\2\18\3\1\0'\4\3\0'\5\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\n\0006\6\0\0009\6\v\0069\6\f\0069\6\r\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\14\0006\6\0\0009\6\v\0069\6\f\0069\6\15\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\16\0006\6\0\0009\6\v\0069\6\f\0069\6\17\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\18\0006\6\0\0009\6\v\0069\6\f\0069\6\19\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\20\0006\6\0\0009\6\v\0069\6\f\0069\6\21\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\22\0006\6\0\0009\6\v\0069\6\f\0069\6\23\6\18\a\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\4\t\0'\5\24\0006\6\0\0009\6\v\0069\6\f\0069\6\25\6\18\a\2\0B\3\5\1K\0\1\0\vrename\acr\19signature_help\n<A-;>\nhover\6;\15references\agr\19implementation\agI\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim√\4\1\0\r\0!\0:6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\3\16\0005\4\6\0009\5\4\0009\5\5\5B\5\1\2=\5\a\0049\5\4\0009\5\b\5B\5\1\2=\5\t\0049\5\4\0009\5\n\0055\6\r\0009\a\v\0009\a\f\a=\a\14\6B\5\2\2=\5\15\4=\4\4\0034\4\3\0005\5\17\0>\5\1\4=\4\18\3B\2\2\0013\2\19\0005\3\20\0006\4\21\0\18\5\3\0B\4\2\4H\a\18Ä8\t\b\0019\t\3\t5\n\28\0006\v\0\0'\f\22\0B\v\2\0029\v\23\v6\f\24\0009\f\25\f9\f\26\f9\f\27\fB\f\1\0A\v\0\2=\v\29\n=\2\30\n5\v\31\0=\v \nB\t\2\1F\a\3\3R\aÏ\127K\0\1\0\nflags\1\0\1\26debounce_text_changes\3ñ\1\14on_attach\17capabilities\1\0\0\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\npairs\1\3\0\0\14omnisharp\16sumneko_lua\0\fsources\1\0\1\tname\rnvim_lsp\1\0\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\f<S-Tab>\21select_prev_item\n<Tab>\1\0\0\21select_next_item\fmapping\nsetup\14lspconfig\bcmp\frequire\0", "config", "nvim-lspconfig")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
