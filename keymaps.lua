local wezterm = require("wezterm")
local action = wezterm.action

return {
	{ key = "1", mods = "LEADER", action = action.ActivateTab(0) },
	{ key = "2", mods = "LEADER", action = action.ActivateTab(1) },
	{ key = "3", mods = "LEADER", action = action.ActivateTab(2) },
	{ key = "4", mods = "LEADER", action = action.ActivateTab(3) },
	{ key = "5", mods = "LEADER", action = action.ActivateTab(4) },
	{ key = "6", mods = "LEADER", action = action.ActivateTab(5) },
	{ key = "7", mods = "LEADER", action = action.ActivateTab(6) },
	{ key = "8", mods = "LEADER", action = action.ActivateTab(7) },
	{ key = "9", mods = "LEADER", action = action.ActivateTab(8) },

	{ key = "Tab", mods = "LEADER", action = action.ActivateLastTab },
	{ key = "b", mods = "SHIFT|ALT", action = action.ActivateTabRelative(-1) },
	{ key = "n", mods = "SHIFT|ALT", action = action.ActivateTabRelative(1) },

	{ key = "h", mods = "CTRL|SHIFT", action = action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "CTRL|SHIFT", action = action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "CTRL|SHIFT", action = action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "CTRL|SHIFT", action = action.ActivatePaneDirection("Right") },

	{
		key = "h",
		mods = "CTRL|SHIFT|ALT",
		action = action.AdjustPaneSize({ "Left", 3 }),
	},

	{
		key = "j",
		mods = "CTRL|SHIFT|ALT",
		action = action.AdjustPaneSize({ "Down", 3 }),
	},

	{
		key = "k",
		mods = "CTRL|SHIFT|ALT",
		action = action.AdjustPaneSize({ "Up", 3 }),
	},

	{
		key = "l",
		mods = "CTRL|SHIFT|ALT",
		action = action.AdjustPaneSize({ "Right", 3 }),
	},

	{
		key = "s",
		mods = "LEADER",
		action = action.PaneSelect({ mode = "SwapWithActive" }),
	},

	{ key = "f", mods = "LEADER", action = action.PaneSelect },

	{ key = "c", mods = "LEADER", action = action.ActivateCopyMode },

	-- { key = "f", mode = "LEADER" , action = action.ShowTabNavigator },

	{
		key = "p",
		mods = "SHIFT|ALT",
		action = action.CloseCurrentPane({ confirm = false }),
	},

	{
		key = "q",
		mods = "LEADER",
		action = action.CloseCurrentTab({ confirm = false }),
	},

	{
		key = "h",
		mods = "LEADER",
		action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "v",
		mods = "LEADER",
		action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	{ key = "p", mods = "LEADER", action = action.ActivateCommandPalette },
	{ key = "l", mods = "LEADER", action = action.ShowLauncher },
	{ key = "n", mods = "LEADER", action = action.SpawnWindow },

	{
		key = "t",
		mods = "CTRL|SHIFT",
		action = action.SpawnTab("CurrentPaneDomain"),
	},

	-- NOTE: is this needed for windows/linux?
	{
		key = "v",
		mods = "CTRL",
		action = action.PasteFrom("Clipboard"),
	},
}
