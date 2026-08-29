core:module("CoreSubtitleManager")

Hooks:OverrideFunction(SubtitleManager,"show_subtitle",function(self, string_id, duration, macros)

	if _G.ClosedCaptions:ShouldInterceptVanillaSubtitles() then
		_G.ClosedCaptions:start_contractor_subtitle(string_id,duration,macros)
	else
		self:show_subtitle_localized(managers.localization:text(string_id, macros), duration)
	end	
end)