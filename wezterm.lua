-- Catppuccin Macchiato Color Palette:
-- rosewater: &rosewater "#f4dbd6"
-- flamingo: &flamingo "#f0c6c6"
-- pink: &pink "#f5bde6"
-- mauve: &mauve "#c6a0f6"
-- red: &red "#ed8796"
-- maroon: &maroon "#ee99a0"
-- peach: &peach "#f5a97f"
-- yellow: &yellow "#eed49f"
-- green: &green "#a6da95"
-- teal: &teal "#8bd5ca"
-- sky: &sky "#91d7e3"
-- sapphire: &sapphire "#7dc4e4"
-- blue: &blue "#8aadf4"
-- lavender: &lavender "#b7bdf8"
-- text: &text "#cad3f5"
-- subtext1: &subtext1 "#b8c0e0"
-- subtext0: &subtext0 "#a5adcb"
-- overlay2: &overlay2 "#939ab7"
-- overlay1: &overlay1 "#8087a2"
-- overlay0: &overlay0 "#6e738d"
-- surface2: &surface2 "#5b6078"
-- surface1: &surface1 "#494d64"
-- surface0: &surface0 "#363a4f"
-- base: &base "#24273a"
-- mantle: &mantle "#1e2030"
-- crust: &crust "#24283b" #181926"

local wezterm = require("wezterm")
local tab_bar = require("tab_bar")
local catppuccinM = wezterm.get_builtin_color_schemes()["Catppuccin Macchiato"]
-- local config = {}
local config = wezterm.config_builder()
local smart_splits = wezterm.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")

smart_splits.apply_to_config(config, {
	-- the default config is here, if you'd like to use the default keys,
	-- you can omit this configuration table parameter and just use
	-- smart_splits.apply_to_config(config)

	-- directional keys to use in order of: left, down, up, right
	direction_keys = { "h", "j", "k", "l" },
	-- modifier keys to combine with direction_keys
	modifiers = {
		move = "CTRL", -- modifier to use for pane movement, e.g. CTRL+h to move left
		resize = "META", -- modifier to use for pane resize, e.g. META+h to resize to the left
	},
})

config.color_scheme_dirs = { "colors/tokyonight_night" }
config.color_scheme = "tokyonight_night"
config.colors = tab_bar

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

config.max_fps = 255 -- > 255 max fps returns a table error (at least on windows 11)
-- config.allow_square_glyphs_to_overflow_width = "Always"
config.custom_block_glyphs = false
config.animation_fps = 1

config.tab_bar_style = {
	window_hide = wezterm.format({
		{ Background = { Color = "#24273a" } },
		{ Foreground = { Color = "#eed49f" } },
		{ Text = "    " },
	}),
	window_maximize = wezterm.format({
		{ Background = { Color = "#24273a" } },
		{ Foreground = { Color = "#a6da95" } },
		{ Text = "   " },
	}),
	window_close = wezterm.format({
		{ Background = { Color = "#24273a" } },
		{ Foreground = { Color = "#ed8796" } },
		{ Text = "   " },
	}),
	new_tab = wezterm.format({
		{ Text = " 󰐕 " },
	}),
	new_tab_hover = wezterm.format({
		{ Text = " 󰐕 " },
	}),
}

-- Minimize, fullscreen, close buttons that are on the tabbar
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_button_style = "Windows"
config.integrated_title_button_color = "red"

config.switch_to_last_active_tab_when_closing_tab = true
config.show_tab_index_in_tab_bar = false
config.tab_bar_at_bottom = true

--FROM OFFICIAL DOCS
wezterm.on("update-right-status", function(window, pane)
	-- window:set_left_status("[Left Component] ")
	-- window:set_left_status(" ")
	-- window:set_right_status("[Right Component] ")
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
