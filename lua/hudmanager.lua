Hooks:PostHook(HUDManager,"set_disabled","hudmanager_closedcaptions_hidecaptions",function(self)
	if ClosedCaptions.settings.use_hide_hud_keybind then
		ClosedCaptions:HideCaptionsPanel()
	end
end)

Hooks:PostHook(HUDManager,"set_enabled","hudmanager_closedcaptions_showcaptions",function(self)
	if ClosedCaptions.settings.use_hide_hud_keybind then
		ClosedCaptions:ShowCaptionsPanel()
	end
end)