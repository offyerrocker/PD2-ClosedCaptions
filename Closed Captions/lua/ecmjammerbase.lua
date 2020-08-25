Hooks:PostHook(ECMJammerBase,"a_init","closedcaptions_ecmjammerbase_init",function(self,unit)
	local soundsource = unit:sound_source() 
	if soundsource then 
		ClosedCaptions:HookSoundSource(soundsource,{
			source = unit,
			source_id = unit:key(),
			variant = "ecm_jammer",
			prefix = nil,
			expire_t = nil,
			position = nil
		})
	end
end)
