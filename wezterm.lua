local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font('JetBrainsMonoNL Nerd Font')
config.color_scheme_dirs = { '$HOME/.config/wezterm/colors/tokyonight_night'}
config.color_scheme = 'tokyonight_night'


return config
