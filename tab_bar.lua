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

    new_tab_hover ={
      bg_color = "#8bd5ca",
      fg_color = "#363a4f",
      intensity = "Bold",
      underline = "None",
    }
  }
}
