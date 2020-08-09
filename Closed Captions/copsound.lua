
Hooks:PostHook(CopSound,"set_voice_prefix","closedcaptions_set_voice_prefix",function(self,index)
	local char_tweak = tweak_data.character[self._unit:base()._tweak_table]
	local nr_variations = char_tweak.speech_prefix_count

	self._prefix_raw = (char_tweak.speech_prefix_p1 or "") .. (nr_variations and tostring(index or math.random(nr_variations)) or "") .. (char_tweak.speech_prefix_p2 or "")
end)

Hooks:PostHook(CopSound,"play","closedcaptions_cop_play",function(self,sound_name, source_name, sync)
	local unit = self._unit
	if unit and alive(unit) then 
		local variant = "cop"
		if managers.enemy:is_civilian(unit) then 
			variant = "civilian"
			--if special then 
		end
--		Log("play(): Cop with prefix [" .. tostring(self._prefix_raw) .. "], unit type [" .. tostring(unit:base()._tweak_table) .. "] played " .. tostring(sound_name),{color=Color(0.5,1,0.5)})
		ClosedCaptions:add_line(sound_name,unit,tostring(unit:key()),variant,self._prefix_raw,tonumber(self._speak_expire_t) or (Application:time() + 5))
	end
end)


Hooks:PostHook(CopSound,"say","closedcaptions_cop_say",function(self,sound_name,sync,skip_prefix,important,callback)
	local unit = self._unit
	if unit and alive(unit) then 
		local variant = "cop"
		if managers.enemy:is_civilian(unit) then 
			variant = "civilian"
			--if special then 
		end
		ClosedCaptions:add_line(sound_name,unit,tostring(unit:key()),variant,self._prefix_raw,tonumber(self._speak_expire_t) or (Application:time() + 5))
--		Log("say(): Cop with prefix [" .. tostring(self._prefix_raw) .. "], unit type [" .. tostring(unit:base()._tweak_table) .. "] played " .. tostring(sound_name),{color=Color(0.5,0.5,1)})
	end
end)