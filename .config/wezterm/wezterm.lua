-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
if wezterm.config_builder then config = wezterm.config_builder() end
local config = {
    -- Set color scheme and fonts
    color_scheme = 'Tokyo Night',
    color_scheme = 'Cobalt2',
    font = wezterm.font_with_fallback({
        { family = "Iosevka Nerd Font", scale=1.2 },
        { family = "CaskaydiaCove Nerd Font", scale=1.2 },
    }),
    text_background_opacity = 0.4,

    -- Set background image
    window_background_opacity = 0.6,
    --window_background_image = '/home/vimc/Pictures/desktop-backgrounds/tokyo-view.jpg',
    window_background_image_hsb = {
        -- Darken the background image by reducing it to 1/3rd-- Settings
        brightness = 0.1,

        -- You can adjust the hue by scaling its value.
        -- a multiplier of 1.0 leaves the value unchanged.
        hue = 1.0,

        -- You can adjust the saturation also.
        saturation = 1.0,
    },
    window_decorations = "RESIZE", --removes window buttons but with resizing
    window_close_confirmation = "AlwaysPrompt",
    scrollback_lines = 3000,
    -- Retro Tab Bar Appearance
    use_fancy_tab_bar = false, -- style tab bar to retro
    hide_tab_bar_if_only_one_tab = true,
    tab_bar_at_bottom = true,
    colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#10bce3",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#015391",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
        tab_bar = {
                active_tab = {
                    bg_color = '#0734BD',
                    fg_color = '#fff',
                    intensity = 'Half',
                },
            },
    split = '#9ff', --pane separator color
    },
    -- Style Inactive Panes
    inactive_pane_hsb = {
        saturation = 0.7,
        brightness = 0.3,
    },
    -- Panes selection
    pane_select_font_size=36, --Size letter selection

    keys={
      -- Show the selector, using your own alphabet
      {key="p", mods="CTRL",
       action=wezterm.action{PaneSelect={alphabet="hjklñuiop"}}
      },
    },
}

    -- and finally, return the configuration to wezterm
return config
