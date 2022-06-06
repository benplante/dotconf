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
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2‡\1\0\0\2\1\5\0\0146\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\2\15\0\1\0X\2\3€9\1\3\0B\1\1\1X\1\3€-\1\0\0009\1\4\1B\1\1\1K\0\1\0\0À\"open_replacing_current_buffer\nclose\15is_visible\19nvim-tree.view\frequire\4\1\0\t\0\27\0*6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0019\2\4\0005\3\5\0005\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0005\5\14\0004\6\3\0005\a\f\0005\b\v\0=\b\r\a>\a\1\6=\6\15\5=\5\16\4=\4\17\3B\2\2\0016\2\18\0004\3\0\0=\3\19\0026\2\19\0003\3\21\0=\3\20\2\18\2\1\0'\3\22\0'\4\23\0'\5\24\0B\2\4\1\18\2\1\0'\3\22\0'\4\25\0'\5\26\0B\2\4\0012\0\0€K\0\1\0\28<CMD>NvimTreeToggle<CR>\15<LEADER>nt1<CMD>lua NvimTreeConfig.toggle_replace()<CR>\6-\6n\0\19toggle_replace\19NvimTreeConfig\a_G\tview\rmappings\tlist\1\0\0\bkey\1\0\1\vaction\18edit_in_place\1\3\0\0\6o\t<CR>\1\0\2\nwidth\0032\tside\nright\bgit\1\0\1\venable\2\23hijack_directories\1\0\1\venable\2\1\0\4\18disable_netrw\1\15update_cwd\2\17hijack_netrw\2\18hijack_cursor\2\nsetup\bmap\tutil\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
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
  ["omnisharp-vim"] = {
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim",
    url = "https://github.com/OmniSharp/omnisharp-vim"
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
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/bplante/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2‡\1\0\0\2\1\5\0\0146\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\2\15\0\1\0X\2\3€9\1\3\0B\1\1\1X\1\3€-\1\0\0009\1\4\1B\1\1\1K\0\1\0\0À\"open_replacing_current_buffer\nclose\15is_visible\19nvim-tree.view\frequire\4\1\0\t\0\27\0*6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\0019\2\4\0005\3\5\0005\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0005\5\14\0004\6\3\0005\a\f\0005\b\v\0=\b\r\a>\a\1\6=\6\15\5=\5\16\4=\4\17\3B\2\2\0016\2\18\0004\3\0\0=\3\19\0026\2\19\0003\3\21\0=\3\20\2\18\2\1\0'\3\22\0'\4\23\0'\5\24\0B\2\4\1\18\2\1\0'\3\22\0'\4\25\0'\5\26\0B\2\4\0012\0\0€K\0\1\0\28<CMD>NvimTreeToggle<CR>\15<LEADER>nt1<CMD>lua NvimTreeConfig.toggle_replace()<CR>\6-\6n\0\19toggle_replace\19NvimTreeConfig\a_G\tview\rmappings\tlist\1\0\0\bkey\1\0\1\vaction\18edit_in_place\1\3\0\0\6o\t<CR>\1\0\2\nwidth\0032\tside\nright\bgit\1\0\1\venable\2\23hijack_directories\1\0\1\venable\2\1\0\4\18disable_netrw\1\15update_cwd\2\17hijack_netrw\2\18hijack_cursor\2\nsetup\bmap\tutil\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[au CmdUndefined Telescope* ++once lua require"packer.load"({'telescope.nvim'}, {}, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType csproj ++once lua require("packer.load")({'omnisharp-vim'}, { ft = "csproj" }, _G.packer_plugins)]]
vim.cmd [[au FileType sln ++once lua require("packer.load")({'omnisharp-vim'}, { ft = "sln" }, _G.packer_plugins)]]
vim.cmd [[au FileType cs ++once lua require("packer.load")({'omnisharp-vim'}, { ft = "cs" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/cake.vim]], true)
vim.cmd [[source /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/cake.vim]]
time([[Sourcing ftdetect script at: /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/cake.vim]], false)
time([[Sourcing ftdetect script at: /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/csx.vim]], true)
vim.cmd [[source /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/csx.vim]]
time([[Sourcing ftdetect script at: /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/csx.vim]], false)
time([[Sourcing ftdetect script at: /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/omnisharplog.vim]], true)
vim.cmd [[source /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/omnisharplog.vim]]
time([[Sourcing ftdetect script at: /home/bplante/.local/share/nvim/site/pack/packer/opt/omnisharp-vim/ftdetect/omnisharplog.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
