
Hooks:PostHook(PlayerSound,"play","closedcaptions_player_play",function(self,sound_name, source_name, sync)
--"throwing a grenade" lines use this instead of say for some reason

--	ClosedCaptions:log("Player [" .. tostring(source_name) .. "] played " .. tostring(sound_name) .. " (sync is " .. (sync and "enabled" or "disabled") .. ")")
	if sync then 
		local unit = self._unit
		if unit and alive(unit) then			
			ClosedCaptions:add_line(sound_name,unit,tostring(unit:key()),"criminal",self._prefix_raw,tonumber(self._speak_expire_t) or (Application:time() + 5))
		end
	end
end)

--[[
heist characters have their lines for calling out guards, deploying, grenades, calling bots, inspiring downed heisters
guard pager timer having noises
cloakers has noise
bain counting down on No Mercy

--]]


Hooks:PostHook(PlayerSound,"say","closedcaptions_player_say",function(self,sound_name, sync, important_say, ignore_prefix, callback)
	local unit = self._unit
	if unit and alive(unit) then 
	
--		local peer_name = ""
--		local peer_name = managers.criminals:character_peer_id_by_unit(unit)
--		ClosedCaptions:log("Player [" .. tostring(peer_name) .. "] played " .. tostring(sound_name))
		
		ClosedCaptions:add_line(sound_name,unit,tostring(unit:key()),"criminal",self._prefix_raw,tonumber(self._speak_expire_t) or (Application:time() + 5))
	end
end)


Hooks:PostHook(PlayerSound,"set_voice","closedcaptions_player_set_voice",function(self,voice)
	self._prefix_raw = voice
end)