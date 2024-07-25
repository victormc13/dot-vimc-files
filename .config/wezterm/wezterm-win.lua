-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- This will hold the configuration.
if wezterm.config_builder then config = wezterm.config_builder() end

local config = {
    -- Spawn a fish shell in login mode
    default_prog = { 'wsl.exe', '-d', 'Debian', '--cd', '/home/vimcwsl' },
    --Set color scheme and fonts
    color_scheme = 'Tokyo Night',
    font = wezterm.font_with_fallback({
        { family = "Iosevka Nerd Font", scale=1.2, weight='Medium' },
        { family = "CaskaydiaCove Nerd Font", scale=1.0 },
    }),
    text_background_opacity = 0.9,

    --Set background image
    window_background_image = 'C:/Users/vimcwin/.config/wezterm/MyBackgrounds/tokyo-road.jpg',
    window_background_image_hsb = {
        -- Darken the background image by reducing it to 1/3rd
        brightness = 0.09,

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
        tab_bar = {
                active_tab = {
                    bg_color = '#0734BD',
                    fg_color = '#fff',
                    intensity = 'Half',
                },
            },
    },
    --Style Inactive Panes
    inactive_pane_hsb = {
        saturation = 0.7,
        brightness = 0.3,
    },
}

    -- and finally, return the configuration to wezterm
return config
