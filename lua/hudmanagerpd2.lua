Hooks:PostHook(HUDManager,"hide_local_player_gear","hudmanager_closedcaptions_hidecaptions",function(self)
	if ClosedCaptions.settings.use_hide_hud_keybind then
		ClosedCaptions:HideCaptionsPanel()
	end
end)

Hooks:PostHook(HUDManager,"show_local_player_gear","hudmanager_closedcaptions_showcaptions",function(self)
	if ClosedCaptions.settings.use_hide_hud_keybind then
		ClosedCaptions:ShowCaptionsPanel()
	end
end)