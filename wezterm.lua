local wezterm = require("wezterm")
local tab_bar = require("tab_bar")
local keymaps = require("keymaps")

-- local config = {}
local config = wezterm.config_builder()
-- local smart_splits = wezterm.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")
--
-- smart_splits.apply_to_config(config, {
-- 	-- the default config is here, if you'd like to use the default keys,
-- 	-- you can omit this configuration table parameter and just use
-- 	-- smart_splits.apply_to_config(config)
--
-- 	-- directional keys to use in order of: left, down, up, right
-- 	direction_keys = { "h", "j", "k", "l" },
-- 	-- modifier keys to combine with direction_keys
-- 	modifiers = {
-- 		move = "CTRL", -- modifier to use for pane movement, e.g. CTRL+h to move left
-- 		resize = "META", -- modifier to use for pane resize, e.g. META+h to resize to the left
-- 	},
-- })

config.color_scheme_dirs = { "colors/tokyonight_night" }
config.color_scheme = "tokyonight_night"
config.colors = tab_bar.colors()

if wezterm.target_triple == "aarch64-apple-darwin" then
	config.font =
		wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "DemiBold", stretch = "Normal", style = "Normal" })
	config.font_size = 13.0
	config.line_height = 0.9

	config.background = {
		{
			-- source = { File = wezterm.config_dir .. "/background/Hell's_Paradise_Jigokuraku_Sagiri.jpg" },
			source = { File = wezterm.config_dir .. "/background/KaoruHanawaRintoSaku/ch19.png" }, -- ch91 ch19 ch29
			repeat_x = "NoRepeat",
			repeat_y = "NoRepeat",
			vertical_align = "Middle",
			horizontal_align = "Center",
			height = "100%",
			width = "100%",
		},
		{
			source = { Color = "#141524" }, -- #191a2e #131624 #1a1b26 (default tokyonight_night background)
			height = "100%",
			width = "100%",
			opacity = 0.98,
		},
	}
elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "pwsh.exe" }
	config.font =
		wezterm.font("JetBrainsMonoNL Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }) -- C:\USERS\ANDREW NG\APPDATA\LOCAL\MICROSOFT\WINDOWS\FONTS\JETBRAINSMONONLNERDFONT-REGULAR.TTF, DirectWrite
	config.font_size = 10.0
	config.line_height = 0.9

	config.background = {
		{
			-- source = { File = wezterm.config_dir .. "/background/Hell's_Paradise_Jigokuraku_Sagiri.jpg" },
			source = { File = wezterm.config_dir .. "/background/KaoruHanawaRintoSaku/ch19.png" }, -- ch91 ch19 ch29
			repeat_x = "NoRepeat",
			repeat_y = "NoRepeat",
			vertical_align = "Middle",
			horizontal_align = "Center",
			height = "100%",
			width = "100%",
		},
		{
			source = { Color = "#141524" }, -- #191a2e #131624 #1a1b26 (default tokyonight_night background)
			height = "100%",
			width = "100%",
			-- opacity = 0.92,
			opacity = 0.992,
		},
	}
else
end

config.leader = {
	key = ";",
	mods = "ALT",
	timeout_miliseconds = 1000,
}

config.disable_default_key_bindings = true
config.keys = keymaps

config.max_fps = 255 -- > 255 max fps returns a table error (at least on windows 11)
-- config.allow_square_glyphs_to_overflow_width = "Always"
config.custom_block_glyphs = false
config.animation_fps = 1

config.tab_bar_style = tab_bar.miscButtons()
config.tab_max_width = 16

-- Minimize, fullscreen, close buttons that are on the tabbar
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_button_style = "Windows"
config.integrated_title_button_color = "red"

config.switch_to_last_active_tab_when_closing_tab = true
config.show_tab_index_in_tab_bar = false
config.tab_bar_at_bottom = true

--FROM OFFICIAL DOCS
-- wezterm.on("update-right-status", function(window, pane)
-- window:set_left_status("[Left Component] ")
-- window:set_left_status(" ")
-- window:set_right_status("[Right Component] ")
-- end)

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

config.command_palette_bg_color = "#24273a"
config.command_palette_fg_color = "#cad3f5"
config.command_palette_font_size = 12
config.command_palette_rows = 14

config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.unicode_version = 14
-- config.term = 'wezterm'

return config
