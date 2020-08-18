Hooks:PostHook(DialogManager,"_play_dialog","closedcaptions_dialogmonitor",function(self,dialog, params, line)
	if dialog then 
		local paramstolog = {
			"string_id",
			"sound",
			"sound_source",
			"character",
			"sounds"
		}
		local s = ""
		for _,a in pairs(paramstolog) do 
			if type(dialog[a]) == "table" then 
				s = s .. table.concat(dialog[a],",","|")
			else
				s = s .. a .. " = " .. tostring(dialog[a]) .. " "
			end
		end
		
		Log(s)
	end
--[[
	local unit = params.on_unit or params.override_characters and managers.player:player_unit()

	if not alive(unit) then
		if dialog.character then
			unit = managers.criminals:character_unit_by_name(dialog.character)
		else
			unit = managers.dialog._bain_unit

			if params.position then
				unit:set_position(params.position)
			end
		end
	end

	self._current_dialog.unit = unit

	if not alive(unit) then
		Application:error("The dialog script tries to access a unit named '" .. tostring(dialog.character) .. "', which doesn't seem to exist. Line will be skipped.")
	end

	if alive(unit) then
		if dialog.string_id then
			unit:drama():play_subtitle(dialog.string_id)
		end

		if dialog.sound then
			unit:drama():play_sound(dialog.sound, dialog.sound_source)
		elseif dialog.sounds and #dialog.sounds > 0 then
			self._current_dialog.line = line or 1

			unit:drama():play_sound(dialog.sounds[self._current_dialog.line], dialog.sound_source)
		end
	end
	--]]
end)