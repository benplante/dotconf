local config = {}
local wezterm = require 'wezterm'

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  config.default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' }
  config.font_size = 12.0
end

config.window_background_opacity = 0.8

return config;
