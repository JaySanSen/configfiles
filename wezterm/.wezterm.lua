local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_prog = { "C:/Program Files/Git/bin/bash.exe", "--login", "-i"}
config.color_scheme = 'Tokyo Night'
config.font = wezterm.font('JetBrains Mono NL', { weight = 'Bold'})
config.font_size = 14

return config
