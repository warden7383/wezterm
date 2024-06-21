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
-- crust: &crust #181926"

local wezterm = require("wezterm")

local lCircle = " "
local rCircle = ""

wezterm.on("update-right-status", function(window, pane)
	window:set_left_status(wezterm.format({
		{ Background = { Color = "None" } },
		{ Foreground = { Color = "#eed49f" } },
		{ Text = " 󰄛" }, -- 󰮯
	}))
	-- window:set_right_status("[Right Component] ")
end)

-- This function returns the suggested title for a tab.
-- It prefers the title that was set via `tab:set_title()`
-- or `wezterm cli set-tab-title`, but falls back to the
-- title of the active pane in that tab.
function tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local edge_background = "None"
	local edge_foreground = ""
	local background = ""
	local foreground = ""

	local index = tonumber(tab.tab_index) + 1

	if tab.is_active then
		background = "#494d64"
		foreground = "#c6a0f6"
		edge_foreground = "#494d64"
	elseif hover then
		background = "#8bd5ca"
		foreground = "#363a4f"
		edge_foreground = "#8bd5ca"
	else
		edge_foreground = "#1e2030" -- #24273a
		background = "#1e2030" -- #24273a   #181926  #1e2030
		foreground = "#5b6078"
	end

	local title = tab_title(tab)

	-- ensure that the titles fit in the available space,
	-- and that we have room for the edges.
	title = wezterm.truncate_right(title, max_width - 2)

	return {
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = lCircle },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = index .. "•" .. title }, --⋄ ♦ 
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = rCircle },
	}
end)

return {
	tab_bar = {
		background = "NONE",
		active_tab = {
			bg_color = "#181926",
			fg_color = "#c6a0f6",
			intensity = "Bold",
			underline = "None",
			italic = true,
		},

		inactive_tab = {
			bg_color = "#181926",
			fg_color = "#5b6078",
			intensity = "Normal",
			underline = "None",
		},

		inactive_tab_hover = {
			bg_color = "#8bd5ca",
			fg_color = "#363a4f",
			intensity = "Bold",
			underline = "None",
			italic = true,
		},

		-- new tab button
		new_tab = {
			bg_color = "#24273a",
			fg_color = "#b7bdf8",
			intensity = "Bold",
			underline = "None",
			italic = false,
		},

		new_tab_hover = {
			bg_color = "#8bd5ca",
			fg_color = "#363a4f",
			intensity = "Bold",
			underline = "None",
		},
	},
}
