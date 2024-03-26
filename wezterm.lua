local wezterm = require("wezterm")
local config = {}
-- config.default_prog = { 'pwsh.exe' }
config.font = wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "DemiBold", stretch = "Normal", style = "Normal" }) -- C:\USERS\ANDREW NG\APPDATA\LOCAL\MICROSOFT\WINDOWS\FONTS\JETBRAINSMONONLNERDFONT-REGULAR.TTF, DirectWrite
config.font_size = 12.0
config.line_height = 0.9
config.color_scheme_dirs = { 'colors/tokyonight_night' }
config.color_scheme = 'tokyonight_night'
wezterm.log_info "HIIII"
print("testing")
-- config.window_background_gradient = {
--   colors = {
--     '#900000'
--   }
-- }

config.window_background_image = '$HOME/.config/wezterm/background/Hell\'s_Paradise_Jigokuraku_Sagiri.jpg'
config.window_background_image_hsb = {
  --   -- hue = 1,
  --   -- saturation = 0.8,
}
-- config.source = {
--   color = "blue"
-- }

config.window_frame = {
  font = wezterm.font("Comic Sans MS", { weight = "DemiBold", stretch = "Normal", style = "Normal" }), -- C:\WINDOWS\FONTS\COMIC.TTF, DirectWrite
  font_size = 14.0
}
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
return config
