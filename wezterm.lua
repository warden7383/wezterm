local wezterm = require("wezterm")
local config = {}
config.default_prog = { 'pwsh.exe' }
config.font = wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "Light", stretch = "Normal", style = "Normal" }) -- C:\USERS\ANDREW NG\APPDATA\LOCAL\MICROSOFT\WINDOWS\FONTS\JETBRAINSMONONLNERDFONT-REGULAR.TTF, DirectWrite
config.font_size = 10.0
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
-- config.window_background_image = 'C:/Users/Andrew Ng/.config/wezterm/background/Hell\'s_Paradise_Jigokuraku_Sagiri.jpg'
-- config.window_background_image_hsb = {
--   brightness = 0.4,
--   --   -- hue = 1,
--   --   -- saturation = 0.8,
-- }

-- NOTE: does not work(?)
--
-- config.window_background_opacity = 0.1
-- config.win32_system_backdrop = 'Acrylic'
-- config.window_background_gradient = {
--   -- colors = { '#2F3045', '#0B1F1F' },
--   colors = { '#e0af68', '#c0caf5' },
--   -- Specifices a Linear gradient starting in the top left corner.
--   orientation = { Linear = { angle = -45.0 } },
-- }

config.background = {
  {
    -- source = { File = wezterm.config_dir .. '/backdrops/space.jpg' },
    source = { File = wezterm.config_dir .. '/background/Hell\'s_Paradise_Jigokuraku_Sagiri.jpg' },
  },
  {
    -- source = { Color = '#1a1b26' }, --default tokyonight_night background (black/gray ish)
    -- source = { Color = '#191a2e' }, --
    -- source = { Color = '#131624' }, --
    source = { Color = '#141524' }, --
    height = '100%',
    width = '100%',
    opacity = 0.92,
  },
}

-- config.source = {
--   color = "blue"
-- }

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_button_style = "Windows"
config.integrated_title_button_color = "red"
config.max_fps = 60
-- config.allow_square_glyphs_to_overflow_width = "Always"
config.custom_block_glyphs = false

--Tab bar
config.window_frame = {
  font = wezterm.font("Comic Sans MS", { weight = "DemiBold", stretch = "Normal", style = "Normal" }) -- C:\WINDOWS\FONTS\COMIC.TTF, DirectWrite
}

config.show_tab_index_in_tab_bar = false
config.tab_bar_at_bottom = true
--FROM OFFICIAL DOCS
wezterm.on('update-right-status', function(window, pane)
  window:set_left_status '[Left Component] '
  window:set_right_status '[Right Component] '
end)

config.use_fancy_tab_bar = false
-- config.show_tabs_in_tab_bar = false
-- config.show_new_tab_button_in_tab_bar = false

-- window padding
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.unicode_version = 14
-- config.term = 'wezterm'
return config
