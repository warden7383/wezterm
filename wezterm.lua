local wezterm = require("wezterm")
local config = {}
config.default_prog = { 'pwsh.exe'  }
config.font = wezterm.font 'JetBrainsMonoNL Nerd Font'
config.color_scheme_dirs = { 'colors/tokyonight_night'}
config.color_scheme = 'tokyonight_night'

wezterm.log_info "HIIII"
print("testing")
-- config.window_background_gradient = {
--   colors = {
--     '#900000'
--   }
-- }

config.window_background_image = 'C:/Users/Andrew Ng/.config/wezterm/background/Hell\'s_Paradise_Jigokuraku_Sagiri.jpg'
config.window_background_image_hsb = {
  brightness = 0.4,
--   -- hue = 1,
--   -- saturation = 0.8,
}
-- config.source = {
--   color = "blue"
-- }

return config
