local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font('JetBrainsMonoNL Nerd Font')
config.color_scheme_dirs = { 'colors/tokyonight_night'}
config.color_scheme = 'tokyonight_night'

-- config.window_background_gradient = {
--   colors = {
--     '#900000'
--   }
-- }

config.window_background_image = 'C:/Users/Andrew Ng/.config/wezterm/background/Hell\'s_Paradise_Jigokuraku_Sagiri.jpg'
config.window_background_image_hsb = {
  brightness = 0.1,
  hue = 1.0,
  saturation = 1.0,
}
return config
