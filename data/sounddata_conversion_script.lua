--[[
blt.vm.dofile("mods/PD2-ClosedCaptions/data/sounddata_conversion_script.lua")
--]]

do
	local REPLACEMENT_OVERRIDE_NAMES = {
		["Bain"] = "hud_subtitlemod_speaker_bain",
		["Witch"] = "hud_subtitlemod_speaker_l4dwitch",
--		["SFX"] = "hud_subtitlemod_speaker_sfx",
		["ambient"] = "hud_subtitlemod_speaker_ambient",
		["Locke"] = "hud_subtitlemod_speaker_locke",
		["Police Negotiator"] = "hud_subtitlemod_speaker_megaphone",
		["Captain Winters"] = "hud_subtitlemod_speaker_winters",
		["Bill"] = "hud_subtitlemod_speaker_l4dbill",
		["Dr. Schneider"] = "hud_subtitlemod_speaker_hos_docs",
		["Doctor"] = "hud_subtitlemod_speaker_hos_docg",
		["Gangster"] = "hud_subtitlemod_speaker_gangster",
		["The Dentist"] = "hud_subtitlemod_speaker_dentist",
		["Sunbathing Party Guest"] = "hud_subtitlemod_speaker_pal_sunb",
		["Party 'Guest'"] = "hud_subtitlemod_speaker_pal_guest",
		["Mitchell"] = "hud_subtitlemod_speaker_pal_mitchell",
		["Mitchell's friend"] = "hud_subtitlemod_speaker_pal_friend",
		["Taxman"] = "hud_subtitlemod_speaker_taxman",
		["The Rat"] = "hud_subtitlemod_speaker_rat",
		["Tape Recording"] = "hud_subtitlemod_speaker_taperecording",
		["Insider"] = "hud_subtitlemod_speaker_insider",
		["Bank Manager"] = "hud_subtitlemod_speaker_bankmanager",
		["Bank Customer"] = "hud_subtitlemod_speaker_bankcustomer",
		["Bank Teller"] = "hud_subtitlemod_speaker_bankteller",
		["Phone Call"] = "hud_subtitlemod_speaker_telephone",
		["Art Buyer"] = "hud_subtitlemod_speaker_artdealer",
		["Hoxton"] = "hud_subtitlemod_speaker_hoxpris",
		["Twitch"] = "hud_subtitlemod_speaker_twitch",
		["Matt Roscoe"] = "hud_subtitlemod_speaker_mattroscoe",
		["Murkywater Intercom"] = "hud_subtitlemod_speaker_murkyintercom",
		["Customer on phone"] = "hud_subtitlemod_speaker_phone_customer",
		["NecroCloaker"] = "hud_subtitlemod_speaker_necrocloaker",
		["FBI Agent"] = "hud_subtitlemod_speaker_fbi",
		["Mr. Blue"] = "hud_subtitlemod_speaker_rvd_blue",
		["Mr. Purple"] = "hud_subtitlemod_speaker_rvd_purple",
		["Policeman"] = "hud_subtitlemod_speaker_police",
		["Kazuo"] = "hud_subtitlemod_speaker_kazuo",
		["[INTRO]"] = "hud_subtitlemod_speaker_heistintro",
		["Drunk Pilot"] = "hud_subtitlemod_speaker_drunkpilot",
		["Commissar"] = "hud_subtitlemod_speaker_commissar",
		["Crew Member"] = "hud_subtitlemod_speaker_wwh_crew",
		["Captain"] = "hud_subtitlemod_speaker_wwh_captain"
	}

	local REPLACEMENT_VARIATION_NAMES = {
		standard_mode = "gen",
		assault_mode = "ass",
		whisper_mode = "ste"
	}
	
	local sound_data_path = "mods/PD2-ClosedCaptions/data/sound_data.lua"
--[[
	local file = io.open(sound_data_path,"r+")
	local b = file:read("*all")
	local c = json.decode(b)
--]]

	local c = blt.vm.dofile(sound_data_path)
	local sound_data = {}
	local loc_data = {}
	for event_id,data in pairs(c.vo) do 
		
		local loc = {}
		local line_data = table.deep_map_copy(data)
		
		if line_data.override_name then
			if line_data.override_name == "SFX" then
				line_data.override_name = nil
			elseif REPLACEMENT_OVERRIDE_NAMES[line_data.override_name] then
				line_data.override_name = REPLACEMENT_OVERRIDE_NAMES[line_data.override_name]
			else
				ClosedCaptions:Print("Unknown override name:",event_id,"|",line_data.override_name)
				line_data.override_name = nil
			end
		end
		
		do 
			local loc_id = "hud_subtitlemod_" .. event_id
			line_data.text = loc_id
			loc[loc_id] = data.text
		end
		
		line_data.remove_by_source = nil
		line_data.override_source_id = nil
		line_data.variants = nil
		line_data.line_variations = nil
		--line_data.loop_data = nil
		
		local function process_variations(prefix,_data,_line_data)
			local _event_id
			if prefix then
				_event_id = "hud_subtitlemod_" .. event_id .. "_voice_" .. prefix
			else
				_event_id = "hud_subtitlemod_" .. event_id
			end
			
			if _data.line_variations then
				if _data.line_variations.recombinable then
					_data.line_variations.recombinable = nil -- remove so it doesn't interfere with iteration later
					_line_data.recombinable = true
					
					for var_type,var_data in pairs(_data.line_variations) do 
						local var_id = REPLACEMENT_VARIATION_NAMES[var_type]
						if var_id then
							_line_data[var_id] = {}
							
							for stage_index,stage_data in pairs(var_data) do 
								_line_data[var_id][stage_index] = {}
								for variation_index,variation_text in pairs(stage_data) do 
									-- eg v10_var_gen_1_5
									local loc_id = _event_id .. "_state_" .. var_id .. "_part_" .. stage_index .. "_var_" .. variation_index
									_line_data[var_id][stage_index][variation_index] = loc_id
									loc[loc_id] = variation_text
								end
							end
						else
							ClosedCaptions:Print("1unknown var:",_event_id,var_type)
						end
					end
				else
					for var_type,var_data in pairs(_data.line_variations) do 
						if type(var_data) == "string" then
							-- simple variations
							local var_index = var_type
							
							local loc_id = _event_id .. "_state_" .. var_index
							_line_data[var_index] = loc_id
							loc[loc_id] = variation_text
							
						elseif type(var_data) == "table" then
							local var_id = REPLACEMENT_VARIATION_NAMES[var_type]
							if var_id then
								_line_data[var_id] = {}
								
								for variation_index,variation_text in pairs(var_data) do 
									-- eg v10_var_gen_1_5
									local loc_id = _event_id .. "_state_" .. var_id .. "_var_" .. variation_index
									_line_data[var_id][variation_index] = loc_id
									loc[loc_id] = variation_text
								end
							else
								ClosedCaptions:Print("2unknown var:",_event_id,var_type)
							end
						end
					end
				end
			end
		end
		
		if data.line_variations then
			line_data.line_variations = {}
			process_variations(nil,data,line_data.line_variations)
		elseif data.variants then
			line_data.line_variations = {}
			if data.variants.line_variations then
				process_variations(nil,data.variants,line_data.line_variations)
			else
				for voice_prefix,voice_variant in pairs(data.variants) do 
					if voice_variant.line_variations then
						line_data.line_variations[voice_prefix] = {}
						process_variations(voice_prefix,voice_variant.line_variations,line_data.line_variations[voice_prefix])
					else
						local _voice_variant = table.deep_map_copy(voice_variant)
						
						if voice_variant.text then
							local loc_id = "hud_subtitlemod_" .. event_id .. "_voice_" .. voice_prefix
							loc_data[loc_id] = voice_variant.text
							_voice_variant.text = loc_id
						end
						
						line_data.line_variations[voice_prefix] = _voice_variant
					end
				end
			end
		end
		
		loc_data[event_id] = loc  -- standard fallbacks
		sound_data[event_id] = line_data
	end
--	file:close()
--	file = nil

	for name,id in pairs(REPLACEMENT_OVERRIDE_NAMES) do
		loc_data[id] = name
	end
	
	do
		local file = io.open(SavePath .. "cc_test_output_sound_data.json","w+")
		file:write(json.encode(sound_data))
		file:flush()
		file:close()
	end
	do
		local file = io.open(SavePath .. "cc_test_output_locen_data.json","w+")
		file:write(json.encode(loc_data))
		file:flush()
		file:close()
	end
end
