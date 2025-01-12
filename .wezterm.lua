-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.automatically_reload_config = true
config.check_for_updates = false
config.window_frame = {
	font = wezterm.font("JetBrainsMono Nerd Font"),
}
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 18
config.command_palette_font_size = 18
--config.line_height = 1.0
config.color_scheme = 'Catppuccin Macchiato' -- Catppuccin Macchiato, Tokyo Night
config.enable_tab_bar = false
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_and_split_indices_are_zero_based = false
config.initial_cols = 170
config.initial_rows = 44
config.default_cursor_style = 'BlinkingBar'
config.audible_bell = "SystemBeep"
config.adjust_window_size_when_changing_font_size = true
config.hide_tab_bar_if_only_one_tab = true
config.notification_handling = "AlwaysShow"
config.show_update_window = false
config.term = "xterm-256color"
config.window_decorations = "RESIZE" -- RESIZE, INTEGRATED_BUTTONS|RESIZE, TITLE, NONE
config.window_background_opacity = 0.60
config.macos_window_background_blur = 60

-- Customize the command palette font size and appearance
config.command_palette_font_size = 12
config.command_palette_fg_color = "#ffffff" -- Customize foreground color
config.command_palette_bg_color = "#44475a" -- Customize background color
config.font_shaper = "Harfbuzz"
config.harfbuzz_features = { 'zero' }

config.window_padding = {
    left = '0.8cell',
    right = '0.8cell',
    top = '0.4cell',
    bottom = '0.4cell',
}

-- Define the colors based on your preference
config.colors = {
    --  foreground = "#c6d0f5",
    --  background = "#2e2e2e",
    cursor_bg = "#ffe4b5",     -- Set cursor background color
    cursor_fg = "#3a3a3a",     -- Set cursor foreground color (text)
    cursor_border = "#ffe4b5", -- Set cursor border color
    selection_bg = "#414868",
    selection_fg = "#c6d0f5",
    scrollbar_thumb = "#414868",
    split = "#414868",
}

-- Keybinds
config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 2000 }
config.keys = {
    {
        mods = "LEADER",
        key = "c",
        action = wezterm.action.SpawnTab "CurrentPaneDomain",
    },
    {
        mods = "LEADER",
        key = "x",
        action = wezterm.action.CloseCurrentPane { confirm = true }
    },
    {
        mods = "LEADER",
        key = "b",
        action = wezterm.action.ActivateTabRelative(-1)
    },
    {
        mods = "LEADER",
        key = "n",
        action = wezterm.action.ActivateTabRelative(1)
    },
    {
        mods = "LEADER",
        key = "|",
        action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
    },
    {
        mods = "LEADER",
        key = "_",
        action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
    },
    {
        mods = "LEADER",
        key = "h",
        action = wezterm.action.ActivatePaneDirection "Left"
    },
    {
        mods = "LEADER",
        key = "j",
        action = wezterm.action.ActivatePaneDirection "Down"
    },
    {
        mods = "LEADER",
        key = "k",
        action = wezterm.action.ActivatePaneDirection "Up"
    },
    {
        mods = "LEADER",
        key = "l",
        action = wezterm.action.ActivatePaneDirection "Right"
    },
    {
        mods = 'LEADER',
        key = "z",
        action = wezterm.action.TogglePaneZoomState,
    },
    {
        mods = "LEADER",
        key = "LeftArrow",
        action = wezterm.action.AdjustPaneSize { "Left", 5 }
    },
    {
        mods = "LEADER",
        key = "RightArrow",
        action = wezterm.action.AdjustPaneSize { "Right", 5 }
    },
    {
        mods = "LEADER",
        key = "DownArrow",
        action = wezterm.action.AdjustPaneSize { "Down", 5 }
    },
    {
        mods = "LEADER",
        key = "UpArrow",
        action = wezterm.action.AdjustPaneSize { "Up", 5 }
    },
}

for i = 1, 9 do
    -- leader + number to activate that tab
    table.insert(config.keys, {
        key = tostring(i),
        mods = "LEADER",
        action = wezterm.action.ActivateTab(i),
    })
end

-- tmux status
wezterm.on("update-right-status", function(window, _)
    local SOLID_LEFT_ARROW = ""
    local ARROW_FOREGROUND = { Foreground = { Color = "#c6a0f6" } }
    local prefix = ""

    if window:leader_is_active() then
        prefix = " " .. utf8.char(0x1F34E) -- icon
        SOLID_LEFT_ARROW = utf8.char(0xe0b2)
    end

    if window:active_tab():tab_id() ~= 0 then
        ARROW_FOREGROUND = { Foreground = { Color = "#1e2030" } }
    end -- arrow color based on if tab is first pane

    window:set_left_status(wezterm.format {
        { Background = { Color = "#b7bdf8" } },
        { Text = prefix },
        ARROW_FOREGROUND,
        { Text = SOLID_LEFT_ARROW }
    })
end)

return config
