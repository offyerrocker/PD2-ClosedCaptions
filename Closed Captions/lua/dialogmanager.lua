Hooks:PreHook(DialogManager,"_call_done_callback","closedcaptions_dialogmanager_donedialog",function(self,done_cbk,reason)
	ClosedCaptions:log("Done cb " .. tostring(done_cbk) .. " for " .. tostring(reason),{color=Color.green})
end)

Hooks:PreHook(DialogManager,"_stop_dialog","closedcaptions_dialogmanager_stopdialog",function(self)
	if self._current_dialog and self._current_dialog.unit then 
		ClosedCaptions:end_line({source = self._current_dialog.unit})
	end
end)
Hooks:PreHook(DialogManager,"_play_dialog","closedcaptions_dialogmanager_startdialog",function(self,dialog, params, line)
	if dialog then 
	--[[
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
		--]]
		ClosedCaptions:log("DialogManager:_play_dialog() sound " .. tostring(dialog.sound) .. ", string_id " .. tostring(dialog.string_id),{color=Color.yellow})
		
		if dialog.sound then 
			local all_sounds_data = ClosedCaptions:GetSoundTable()
			
			if all_sounds_data.vo[dialog.sound] or ClosedCaptions:IsLoggingEnabled() then 
				local unit = params.on_unit or params.override_characters and managers.player:player_unit()
				local position
				--add line here
							
				if not alive(unit) then
					if dialog.character then
						unit = managers.criminals:character_unit_by_name(dialog.character)
					else
						position = params.position --can be nil
					end
				end

				local source_id = tostring(self._source)
				local source = nil -- = self._source --not used for this; we want to use a custom position instead
				local variant = "element" --indicates that the sound is playing from an element
				local prefix = ""
				local expire_t = nil --Application:time() + 60 --this sound does not give expire_t or duration naturally; instead, it supplies a callback for when the sound ends, so let's rely on that. or not.
				
				
				if alive(unit) then
					if dialog.string_id then
	--					unit:drama():play_subtitle(dialog.string_id)
						ClosedCaptions:log("PLAYED SOUND SOURCE 3 " .. tostring(dialog.string_id))
					end

					if dialog.sound then
--						unit:drama():play_sound(dialog.sound, dialog.sound_source)
						ClosedCaptions:log("PLAYED SOUND SOURCE 4 " .. tostring(dialog.sound) .. " " .. tostring(dialog.sound_source))
					elseif dialog.sounds and #dialog.sounds > 0 then
						ClosedCaptions:log("PLAYED SOUND SOURCE 5 " .. tostring(dialog.sounds[self._current_dialog.line]) .. " " .. tostring(dialog.sound_source))
--						self._current_dialog.line = line or 1
--						unit:drama():play_sound(dialog.sounds[self._current_dialog.line], dialog.sound_source)
					end
					
					ClosedCaptions:add_line(dialog.sound,unit,source_id,variant,prefix,expire_t,position)
				else
					if position then 
						ClosedCaptions:add_line(dialog.sound,nil,source_id,variant,prefix,expire_t,position)
					else --use player?
						ClosedCaptions:log("Played 6 ig")
						ClosedCaptions:add_line(dialog.sound,unit,source_id,variant,prefix,expire_t)
					end
				end
				
			else
				--if log mode then
				
			end
		end
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