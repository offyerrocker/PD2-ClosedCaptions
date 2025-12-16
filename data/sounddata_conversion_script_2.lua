--[[


blt.vm.dofile("mods/PD2-ClosedCaptions/data/sounddata_conversion_script_2.lua")
--]]
local WRITE = true
local FLATTEN_RECOMBINATIONS = false

local SOUND_DATA_PATH = ClosedCaptions._SOUNDDATA_PATH .. "sound_data.lua"
local DATA_OUT_PATH = ClosedCaptions._SOUNDDATA_PATH .. "sound_data.json"
local L10N_OUT_PATH = ClosedCaptions._SOUNDDATA_PATH .. "test_l10n.json"
local sound_data = blt.vm.dofile(SOUND_DATA_PATH)

local ALLOWED_FIELDS = { -- if true, the field will be copied from the original data
	text = false, -- handled manually for localization
	disabled = true,
	category = true,
	max_distance = true,
	duration = true,
	priority = true,
	loop_data = true,
	override_color = true,
	override_name = true,
	fallback_name = true,
	is_locationless = true,
	greedy_match = false,
	remove_by_source = false,
	stops_line = false,
	override_source_id = false
}

local REPLACEMENT_OVERRIDE_NAMES = {
	["Bain"] = "hud_subtitlemod_speaker_bain",
	["Witch"] = "hud_subtitlemod_speaker_l4dwitch",
--		["SFX"] = "hud_subtitlemod_speaker_sfx",
	["Goat"] = "hud_subtitlemod_speaker_goat",
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


local new_loc_data = {}
local new_sound_data = {}
for event_id,data in pairs(sound_data.vo) do 
	local new_data = {}
	
	if data.override_name and data.override_name ~= "SFX" then
		new_data.override_name = REPLACEMENT_OVERRIDE_NAMES[data.override_name]
		if not new_data.override_name then
			ClosedCaptions:Print("Unknown override name",event_id,data.override_name)
		end
	end
	
	-- default, single subtitle string (no variation)
	if data.text then
		new_loc_data[event_id] = data.text
		new_data.text = event_id
	end
	
	local process_line_variations
	process_line_variations = function(prefix,_data)
		local new_line_variations = {}
		
		local _event_id
		if prefix then
			_event_id = "hud_subtitlemod_" .. event_id .. "_voice_" .. prefix
		else
			_event_id = "hud_subtitlemod_" .. event_id
		end
		
		if _data.line_variations then
			if _data.line_variations.recombinable then
				_data.line_variations.recombinable = nil -- remove so it doesn't interfere with iteration later
				-- collapse recombinations
				for var_type,var_data in pairs(_data.line_variations) do 
					local var_id = REPLACEMENT_VARIATION_NAMES[var_type]
					if var_id then
						if not FLATTEN_RECOMBINATIONS then
							new_line_variations[var_id] = {
								recombinable = true
							}
						end
						-- so the flattening system works great,
						-- but l2n_b24 has four stages of 8 * 8 * 9 * 4 = 2304 total variants.
						-- so let's maybe not do that
						
						local recombos = {}
						for stage_index,stage_data in ipairs(var_data) do 
							
							if FLATTEN_RECOMBINATIONS then
								recombos[stage_index] = {}
							else
								new_line_variations[var_id][stage_index] = {}
							end
							
							for variation_index,variation_text in ipairs(stage_data) do
								if FLATTEN_RECOMBINATIONS then
									if stage_index == 1 then
										table.insert(recombos[stage_index],#recombos[stage_index]+1,variation_text)
									else
										for _,var_text in pairs(recombos[stage_index-1]) do 
											table.insert(recombos[stage_index],var_text .. " " .. variation_text)
										end
									end
								else
									-- eg v10_var_gen_1_5
									local loc_id = _event_id .. "_state_" .. var_id .. "_part_" .. stage_index .. "_var_" .. variation_index
									new_line_variations[var_id][stage_index][variation_index] = loc_id
									new_loc_data[loc_id] = variation_text
								end
								
							end
						end
						
						if FLATTEN_RECOMBINATIONS then
							for i,combined_variation_text in pairs(recombos[#recombos]) do 
								local loc_id = _event_id .. "_state_" .. var_id .. "_var_" .. i
								new_loc_data[loc_id] = combined_variation_text
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
						new_line_variations[var_index] = loc_id
						new_loc_data[loc_id] = variation_text
						
					elseif type(var_data) == "table" then
						local var_id = REPLACEMENT_VARIATION_NAMES[var_type]
						if var_id then
							new_line_variations[var_id] = {}
							
							for variation_index,variation_text in pairs(var_data) do 
								-- eg v10_var_gen_1_5
								local loc_id = _event_id .. "_state_" .. var_id .. "_var_" .. variation_index
								new_line_variations[var_id][variation_index] = loc_id
								new_loc_data[loc_id] = variation_text
							end
						else
							-- only catches disabled groups at this point
							--ClosedCaptions:Print("2unknown var:",_event_id,var_type)
						end
					end
				end
			end
		else
			for k,v in pairs(_data) do
				-- regular override for standard definitions (text,priority,category,max_distance,duration)
				new_line_variations[k] = v
			end
		end
		return new_line_variations
	end
	
	
	-- voice variants- important in cases like p01,
	-- which is "the robbers have hostages!" for cops, but "alright let's do this" for heisters
	if data.variants then
		if data.variants.line_variations then
			-- no actual voice variants;
			-- regular randomized line_variations
			new_data.line_variations = process_line_variations(nil,data.variants)
			--[[
			for mode,mode_data in pairs(data.variants) do 
				-- regular assault/whisper variants
				new_data.line_variations[mode] = process_line_variations(nil,mode_data)
			end
			--]]
		else
			-- voice variations
			new_data.voice_variations = {}
			for k,variant_data in pairs(data.variants) do
				new_data.voice_variations[k] = process_line_variations(nil,variant_data)
			end
		end
	elseif data.line_variations then
		new_data.line_variations = process_line_variations(nil,data)
	else
--		Print("None of the above",event_id)
		for k,enabled in pairs(ALLOWED_FIELDS) do 
			if enabled then
				new_data[k] = data[k]
			end
		end
	end
	
	new_sound_data[event_id] = new_data
end

if WRITE then
	local file = io.open(DATA_OUT_PATH,"w+")
	file:write(json.encode(new_sound_data))
	file:flush()
	file:close()
	
	
	
	local file = io.open(L10N_OUT_PATH,"w+")
	file:write(json.encode(new_loc_data))
	file:flush()
	file:close()
end