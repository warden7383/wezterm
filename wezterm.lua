local wezterm = require("wezterm")
local config = {}

config.color_scheme_dirs = { "colors/tokyonight_night" }
config.color_scheme = "tokyonight_night"

if wezterm.target_triple == "aarch64-apple-darwin" then
	print("im on mac")
	config.font =
		wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "DemiBold", stretch = "Normal", style = "Normal" })
	config.font_size = 13.0
	config.line_height = 0.9
	config.background = {
		{
			source = { File = wezterm.config_dir .. "/background/Hell's_Paradise_Jigokuraku_Sagiri.jpg" },
		},
		{
			source = { Color = "#141524" }, -- #191a2e #131624 #1a1b26 (default tokyonight_night background)
			height = "100%",
			width = "100%",
			opacity = 0.85,
		},
	}
	-- NOTE: might need to move this elsewhere?
	config.window_frame = {
		font_size = 14.0,
	}
elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
	print("im on windows")
	config.default_prog = { "pwsh.exe" }
	config.font =
		wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }) -- C:\USERS\ANDREW NG\APPDATA\LOCAL\MICROSOFT\WINDOWS\FONTS\JETBRAINSMONONLNERDFONT-REGULAR.TTF, DirectWrite
	config.font_size = 10.0
	config.line_height = 0.9
	config.background = {
		{
			source = { File = wezterm.config_dir .. "/background/Hell's_Paradise_Jigokuraku_Sagiri.jpg" },
		},
		{
			source = { Color = "#141524" }, -- #191a2e #131624 #1a1b26 (default tokyonight_night background)
			height = "100%",
			width = "100%",
			opacity = 0.92,
		},
	}
else
	print("im on linux")
	print("wezterm is not configured for linux")
end

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_button_style = "Windows"
config.integrated_title_button_color = "red"
config.max_fps = 255 -- > 255 max fps returns a table error (at least on windows 11)
-- config.allow_square_glyphs_to_overflow_width = "Always"
config.custom_block_glyphs = false
config.animation_fps = 1

--Tab bar
config.window_frame = {
	font = wezterm.font("Comic Sans MS", { weight = "DemiBold", stretch = "Normal", style = "Normal" }), -- C:\WINDOWS\FONTS\COMIC.TTF, DirectWrite
}

config.show_tab_index_in_tab_bar = false
config.tab_bar_at_bottom = true
--FROM OFFICIAL DOCS
wezterm.on("update-right-status", function(window, pane)
	window:set_left_status("[Left Component] ")
	window:set_right_status("[Right Component] ")
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
