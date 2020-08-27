Hooks:PostHook(UnitNetworkHandler,"say","closedcaptions_unitnetwork_say",function(self,unit, event_id, sender)
--[[
	local processed_voicelines
	
	local sound_name = processed_voicelines[event_id]
	if sound_name then 
		--
	end


	if not alive(unit) or not self._verify_gamestate(self._gamestate_filter.any_ingame) or not self._verify_sender(sender) then
		return
	end

	if unit:in_slot(managers.slot:get_mask("all_criminals")) and not managers.groupai:state():is_enemy_converted_to_criminal(unit) then
		unit:sound():say(event_id, nil, false)
	else
		unit:sound():say(event_id, nil, true)
	end
	--]]
	
--	ClosedCaptions:log("Sender [" .. tostring(sender) .. "] queued unit " .. tostring(unit) ..  " to play sound [" .. tostring(event_id) .. "] aka [" .. tostring(ClosedCaptions:reverse_lookup_event_id(event_id)) .. "]" )
end)