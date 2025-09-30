-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox Dark (Gogh)'

config.front_end = "OpenGL"
config.max_fps = 144
config.animation_fps = 1
config.cursor_blink_rate = 500
config.term = "xterm-256color" -- Set the terminal type

config.cell_width = 0.9
config.prefer_egl = true
config.font_size = 14.0

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.window_decorations = "NONE | RESIZE"
config.default_prog = { "pwsh.exe", "-NoLogo" }
config.initial_cols = 80

-- and finally, return the configuration to wezterm
return config
