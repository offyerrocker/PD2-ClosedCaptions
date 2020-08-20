Hooks:PostHook(TripMineBase,"_emit_sensor_sound_and_effect","closedcaptions_tripmine_detectsnd",function(self)
	ClosedCaptions:add_line("trip_mine_sensor_alarm",self._unit,tostring(self._unit:key()),"",nil,nil,nil)
end)

Hooks:PostHook(TripMineBase,"_play_sound_and_effects","closedcaptions_tripmine_explodesnd",function(self)
	ClosedCaptions:add_line("trip_mine_explode",nil,tostring(self._unit:key()),"",nil,nil,self._unit:position()) --unit explodes here, so rely on position instead of unit for directional arrow tracking
end)


Hooks:PreHook(TripMineBase,"_set_armed","closedcaptions_tripmine_arm",function(self,armed)
	if not (self._activate_timer or self._first_armed) then
		ClosedCaptions:add_line("trip_mine_beep_armed",self._unit,tostring(self._unit:key()),"",nil,nil,nil) --first time armed
	else
		ClosedCaptions:add_line(armed and "trip_mine_arm" or "trip_mine_disarm",self._unit,tostring(self._unit:key()),"",nil,nil,nil)
	end
end)

Hooks:PostHook(TripMineBase,"setup","closedcaptions_tripmine_placed",function(self)
	ClosedCaptions:add_line("trip_mine_attach",self._unit,tostring(self._unit:key()),"",nil,nil,nil)
end)

--[[
--i think this is not used?
Hooks:PostHook(TripMineBase,"sync_trip_mine_beep_explode","closedcaptions_tripmine_beepexplode_sync",function(self)
	ClosedCaptions:add_line("trip_mine_beep_explode")
end)
Hooks:PostHook(TripMineBase,"_check","closedcaptions_tripmine_beepexplode",function(self)
	ClosedCaptions:add_line("trip_mine_beep_explode")
end)
--]]
