
Hooks:PreHook(GamePlayCentralManager,"announcer_say","closedcaptions_gameplaycentralmanager_announcersay",function(self,event)
	ClosedCaptions:log("GameplayCentralManager:announcer_say(" .. tostring(event) .. ")")
end)


Hooks:PreHook(GamePlayCentralManager,"play_impact_sound_and_effects","closedcaptions_gameplaycentralmanager_playimpactsoundandeffects",function(self,params)
--	ClosedCaptions:log("GameplayCentralManager:play_impact_sound_and_effects() sound_switch_name " .. tostring(params and params.sound_switch_name) .. ", effect " .. tostring(params and params.effect) )
--	logall(params)
end)


Hooks:PreHook(GamePlayCentralManager,"_play_sound","closedcaptions_gameplaycentralmanager_playsound",function(self,params)
	ClosedCaptions:log("GameplayCentralManager:_play_sound(" .. tostring(params and params.event) .. ")") 
	--position and sound_switch_name are also available
end)

--[[
Hooks:PostHook(GamePlayCentralManager,"request_play_footstep","closedcaptions_gameplaycentralmanager_requestplayfootstep",function(self,unit,m_pos)
	if unit ~= managers.player:local_player() then 
		ClosedCaptions:log("GameplayCentralManager:request_play_footstep(" .. tostring(unit) .. "," .. tostring(m_pos) .. ")")
	end
end)
--]]