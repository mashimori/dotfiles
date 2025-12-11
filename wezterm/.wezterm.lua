-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.font_size = 18
config.font = wezterm.font('CaskaydiaCove Nerd Font', { })
config.line_height = 1.1
config.color_scheme = 'Catppuccin Mocha'

config.default_prog = { '/usr/bin/zsh' }
config.window_background_opacity = 0.9
config.text_background_opacity = 1.0
config.kde_window_background_blur = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.show_new_tab_button_in_tab_bar = false
config.enable_tab_bar = false


-- Custom right-click behavior: copy selection if present, else paste
config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action_callback(function(window, pane)
			local has_selection = window:get_selection_text_for_pane(pane) ~= ""
			if has_selection then
				window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
				window:perform_action(act.ClearSelection, pane)
			else
				window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
			end
		end),
	},
}

return config
