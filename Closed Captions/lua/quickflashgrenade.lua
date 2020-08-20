Hooks:PostHook(QuickFlashGrenade,"_beep","closedcaption_grenadebeep",function(self)
	local unit = self._unit
	if unit and alive(unit) then 
		ClosedCaptions:add_line("flashbang_beep",unit,tostring(unit:key()),"sfx","",self._beep_t)
	end
end)