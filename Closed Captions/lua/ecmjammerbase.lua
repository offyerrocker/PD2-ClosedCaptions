Hooks:PostHook(ECMJammerBase,"init","closedcaptions_ecmjammerbase_init",function(self,unit)
	log("0")
	if self._unit:sound_source() then 
		log("1")
		if self._unit:sound_source().hook then 
			log("2")
			self._unit:sound_source():hook("ecm_jammer_" .. tostring(unit:key()),function(...)
				ClosedCaptions:log_debug(table.concat({...},","))
			end)
		end
	end
end)
Hooks:PostHook(ECMJammerBase,"sync_setup","closedcaptions_ecmjammerbase_sync_setup",function(self)
end)
if true then return end


Hooks:PostHook(ECMJammerBase,"setup","closedcaptions_ecmjammerbase_setup",function(self)
	if self._unit then 
		local unit = self._unit
		log("Found unit")
		local soundsource = unit:sound_source() 
		if soundsource then 
			log("Found sound_source()")
			if soundsource.post_event then 
				log("Found sound_source().post_event")
			
				ClosedCaptions:HookSoundSource(soundsource,{
					source = unit,
					source_id = unit:key(),
					variant = "ecm_jammer",
					prefix = nil,
					expire_t = nil,
					position = nil
				})
				return
			end
			log("No postevent!")
		end
		log("No soundsource!")
	end
	log("No unit!")
--[[
	if self._unit then 
		if self._unit:sound_source() then 
			log("Found sound_source()")
			if self._unit:sound_source().post_event then 
				table.insert(ClosedCaptions.blah,unit)
			end
		end
	end
	--]]
end)
