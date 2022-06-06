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
    config = { "\27LJ\2\2Ô\3\0\0\3\0\16\0#6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\r\0'\1\14\0B\0\2\0029\0\15\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rneo-tree\frequire\1\0\2\ttext\bï ´\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tïš \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tï± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tï— \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn.let g:neo_tree_remove_legacy_commands = 1\bcmd\bvim\0" },
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
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2c\0\2\6\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\3\1\0'\4\3\0'\5\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim°\5\1\0\n\0*\1F6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0029\3\6\0009\3\a\0039\3\b\0035\4\f\0006\5\t\0009\5\n\5'\6\v\0B\5\2\2>\5\1\4B\3\2\0029\4\r\0015\5\26\0005\6\16\0009\a\14\0019\a\15\aB\a\1\2=\a\17\0069\a\14\0019\a\18\aB\a\1\2=\a\19\0069\a\14\0019\a\20\a5\b\23\0009\t\21\0019\t\22\t=\t\24\bB\a\2\2=\a\25\6=\6\14\0054\6\3\0005\a\27\0>\a\1\6=\6\28\5B\4\2\0019\4\29\0009\4\r\0045\5#\0006\6\0\0'\a\30\0B\6\2\0029\6\31\0066\a\3\0009\a \a9\a!\a9\a\"\aB\a\1\0A\6\0\2=\6$\0053\6%\0=\6&\0055\6'\0>\3\1\0066\a(\0\18\b\2\0B\a\2\0?\a\0\0=\6)\5B\4\2\1K\0\1\0\bcmd\rtostring\1\4\0\0\0\21--languageserver\14--hostPID\14on_attach\0\17capabilities\1\0\0\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\14omnisharp\fsources\1\0\1\tname\rnvim_lsp\1\0\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\f<S-Tab>\21select_prev_item\n<Tab>\1\0\0\21select_next_item\fmapping\nsetup\1\3\0\0\0\25.local/omnisharp/run\tHOME\vgetenv\aos\tjoin\tpath\tutil\vgetpid\afn\bvim\bcmp\14lspconfig\frequire\t€€À™\4\0" },
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
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
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope*" },
    config = { "\27LJ\2\2Í\1\0\0\5\0\n\0\0176\0\0\0'\1\1\0B\0\2\0029\1\2\0'\2\3\0B\1\2\0019\1\2\0'\2\4\0B\1\2\0019\1\5\0005\2\b\0005\3\a\0005\4\6\0=\4\4\3=\3\t\2B\1\2\1K\0\1\0\15extensions\1\0\0\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\nsetup\15fzy_native\17file_browser\19load_extension\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2º\1\0\0\5\0\t\0\0156\0\0\0'\1\1\0B\0\2\0029\1\2\0004\2\0\0B\1\2\0019\1\3\0005\2\a\0005\3\4\0005\4\5\0=\4\6\3=\3\6\0025\3\b\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\1\0\0\6f\1\3\0\0\"<CMD>Telescope find_files<CR>\14Find File\1\0\1\tname\14Telescope\rregister\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\2Ô\3\0\0\3\0\16\0#6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\r\0'\1\14\0B\0\2\0029\0\15\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rneo-tree\frequire\1\0\2\ttext\bï ´\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tïš \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tï± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tï— \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn.let g:neo_tree_remove_legacy_commands = 1\bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2c\0\2\6\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\3\1\0'\4\3\0'\5\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim°\5\1\0\n\0*\1F6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0029\3\6\0009\3\a\0039\3\b\0035\4\f\0006\5\t\0009\5\n\5'\6\v\0B\5\2\2>\5\1\4B\3\2\0029\4\r\0015\5\26\0005\6\16\0009\a\14\0019\a\15\aB\a\1\2=\a\17\0069\a\14\0019\a\18\aB\a\1\2=\a\19\0069\a\14\0019\a\20\a5\b\23\0009\t\21\0019\t\22\t=\t\24\bB\a\2\2=\a\25\6=\6\14\0054\6\3\0005\a\27\0>\a\1\6=\6\28\5B\4\2\0019\4\29\0009\4\r\0045\5#\0006\6\0\0'\a\30\0B\6\2\0029\6\31\0066\a\3\0009\a \a9\a!\a9\a\"\aB\a\1\0A\6\0\2=\6$\0053\6%\0=\6&\0055\6'\0>\3\1\0066\a(\0\18\b\2\0B\a\2\0?\a\0\0=\6)\5B\4\2\1K\0\1\0\bcmd\rtostring\1\4\0\0\0\21--languageserver\14--hostPID\14on_attach\0\17capabilities\1\0\0\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\14omnisharp\fsources\1\0\1\tname\rnvim_lsp\1\0\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\f<S-Tab>\21select_prev_item\n<Tab>\1\0\0\21select_next_item\fmapping\nsetup\1\3\0\0\0\25.local/omnisharp/run\tHOME\vgetenv\aos\tjoin\tpath\tutil\vgetpid\afn\bvim\bcmp\14lspconfig\frequire\t€€À™\4\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2º\1\0\0\5\0\t\0\0156\0\0\0'\1\1\0B\0\2\0029\1\2\0004\2\0\0B\1\2\0019\1\3\0005\2\a\0005\3\4\0005\4\5\0=\4\6\3=\3\6\0025\3\b\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\1\0\0\6f\1\3\0\0\"<CMD>Telescope find_files<CR>\14Find File\1\0\1\tname\14Telescope\rregister\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[au CmdUndefined Telescope* ++once lua require"packer.load"({'telescope.nvim'}, {}, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
