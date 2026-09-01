--[[ converts v2 data to v3

check stops category- some may be valid sounds like camera loop intro
	make it a flag?

scrapedcategories:

[speaker_id] : [true]
[variants] : [true]
[remove_by_source] : [true]
[override_speaker_name] : [true]
[override_name] : [true]
[stops] : [true]
[fallback_speaker_id] : [true]
[is_locationless] : [true]
[priority] : [true]
[stops_line] : [true]
[override_source_id] : [true]
[duration] : [true]
[max_distance] : [true]
[line_variations] : [true]
[text] : [true]
[rb3] : [true]
[override_color] : [true]
[fallback_unitname] : [true]
[override_speaker_id] : [true]
[conversation] : [true]
[category] : [true]
[greedy_match] : [true]
[disabled] : [true]

--]]

local WRITE = true
local SOUND_DATA_PATH = ClosedCaptions._SOUNDDATA_PATH .. "sound_data.lua"
local DATA_OUT_PATH = ClosedCaptions._MOD_PATH .. "dev/sound_data.json"
local L10N_OUT_PATH = ClosedCaptions._MOD_PATH .. "dev/subtitles.json"

-- serialize sounddata v2 to serialized json sounddata v3,
-- ready for use in game or export to google sheets

local VOICE_PREFIXES = {"civilian","cop","security","rb1","rb2","rb3","rb4","rb5","rb6","rb7","rb8","rb9","rb10","rb11","rb12","rb13","rb14","rb15","rb16","rb17","rb18","rb19","rb20","rb21","rb22","rb23"}

local VALID_CATEGORIES = {
	heister_dialogue = true,
	sfx = true,
	ambient = true,
	contractor_vo = true,
	mission_dialogue = true,
	heister_spots = true,
	heister_kills = true,
	enemy_chatter = true,
	enemy_dialogue = true,
	enemy_death = true,
	civilian_dialogue = true,
	stops = true
}

local GEN_VALIDATE_FUNCTIONS = {
	bool = function(value)
		return value and true or false
	end,
	number = function(value)
		assert(type(value)=="number","Value must be a number! (" .. type(value))
		return value
	end,
	int = function(value)
		if value then
			assert(type(value)=="number","Value must be an integer! (" .. type(value))
			return math.floor(value)
		end 
		return value
	end,
	pass = function(...)
		return ...
	end
}
local VALIDATE_FUNCTIONS = {
	category = function(value)
		local valid = VALID_CATEGORIES[value] and value
		if not valid then
			log("INVALID CATEGORY: [" .. tostring(value) .. "]")
		end
		return valid
	end,
	priority = GEN_VALIDATE_FUNCTIONS.int,
	duration = GEN_VALIDATE_FUNCTIONS.int,
	is_locationless = GEN_VALIDATE_FUNCTIONS.bool,
	max_distance = GEN_VALIDATE_FUNCTIONS.number,
	override_color = GEN_VALIDATE_FUNCTIONS.pass,
	override_speaker_id = GEN_VALIDATE_FUNCTIONS.pass,
	fallback_speaker_id = GEN_VALIDATE_FUNCTIONS.pass,
	fallback_unitname = GEN_VALIDATE_FUNCTIONS.pass
}

local STATE_SHORTNAMES = {
	standard_mode = "std",
	assault_mode = "ast",
	whisper_mode = "ste",
	conversation = "con"
}

local function validate_column(column_name,value)
	local f = VALIDATE_FUNCTIONS[column_name]
	return f and f(value) or nil
end
-- do not detect these as sound names when determining file order
local WHITELIST_KEYS = {
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
	override_source_id = false,
	conversation = false, -- for long lines, or multiple lines with multiple speakers packed into one sound file
	convo = false -- the whole conversation as one string, with custom notation for line breaks and speakers
}

local CAPTION_LOC_PREFIX = "hud_subtitlemod_"


-- order only matters for exporting data to the csv for the translation sheet
local ordered_lines = {} -- index:event_id
local lines_order = {} -- event_id:index
do -- guess the order
	local start
	--local open_count = 0
	local file = io.open(SOUND_DATA_PATH,"r")
	if file then
		for raw_line in file:lines() do 
			local line = string.gsub(raw_line,'^%s+%[?%"?',"") -- strip leading tabs, [, and " (the latter two for specifically the 911_call string)
			if not start then
				if string.find(line,"^vo_special") then
					-- don't start
				elseif string.find(line,"^vo") then
					start = true
					--log("Start enabled! line",i)
				end
			elseif start then
				if string.find(line,"^%-%-") then
					-- comment line; ignore
				else
					if string.match(raw_line,"^\t\t[%w%_%[]+") then
						local sound_name = string.match(line,"^[%w%_]+")
						if sound_name and WHITELIST_KEYS[sound_name] == nil then
							--log("Found sound", "[" .. tostring(sound_name) .. "]")
							table.insert(ordered_lines,#ordered_lines+1,sound_name)
						end
					end
					--[[
					local n,_ = string.find(line,"{") 
					if n then
						open_count = open_count + 1
					end
					if string.find(line,"}",n) then
						open_count = open_count - 1
					end
					--]]
				end
			end
		end
	end
	file:close()
	for i,event_id in pairs(ordered_lines) do 
		lines_order[event_id] = i
	end
	
end

local sound_data = blt.vm.dofile(SOUND_DATA_PATH)

local function serialize_compound_variations(data)
	local new_loc_string
	for stage_index,stage_data in ipairs(data) do
		if type(stage_data) == "string" then
			return false
		end
		-- compound/recombinable
		if new_loc_string then
			new_loc_string = new_loc_string .. "$b"
		else
			new_loc_string = ""
		end
--		new_loc_string = new_loc_string .. "{"
		local frag_str
		for _,variant_fragment in ipairs(stage_data) do
			if frag_str then
				frag_str = frag_str .. "|"
			else
				frag_str = ""
			end
			frag_str = frag_str .. variant_fragment 
		end
		
		new_loc_string = new_loc_string .. frag_str  -- .. "}"
	end
	return new_loc_string
end

local new_sound_data = {}
local new_loc_ids = {}
for event_id,data in pairs(sound_data.vo) do 
	if not data.disabled then
		local voices = {}
		local event_data = {
			--desc = data.text, -- this should be descriptive enough for translators to tell what the dialogue is meant to be
			voices = voices, -- voice variant, eg. rb1, rb2, etc
	--		category = validate_column("category",data.category),
	--		priority = validate_column("priority",data.priority),
	--		duration = validate_column("duration",data.duration),
	--		max_distance = validate_column("max_distance",data.duration),
			fungible = data.override_source_id and true or nil
			-- custom field, renamed in 3.0 (not yet implemented)
			-- if enabled, only one of this sound can be DISPLAYED from any source at any time
		}
		if data.text then
			local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_gen"
			event_data.desc_id = loc_id
			new_loc_ids[loc_id] = data.text
		end
		
		for column_name,value in pairs(data) do 
			event_data[column_name] = validate_column(column_name,value)
		end
		if data.stops_line and data.category ~= "stops" then
			log("Converting line",event_id,"from category",data.category,"to stops")
			event_data.category = "stops"
		end
		
		new_sound_data[event_id] = event_data
		
		-- deal with weird fxxx_sin cases
		-- where i put the robber voice variants directly in the event data for some reason?
		-- and didn't encapsulate it within line_variations
		
		for _,voice_id in pairs(VOICE_PREFIXES) do 
			local data_variant = data[voice_id]
			if data_variant then
				log("ERROR ERROR",event_id)
				do return end
				if data_variant.disabled then
					voices[voice_id] = voices[voice_id] or {}
					voices[voice_id].disabled = true
				else
					local state_shortname = STATE_SHORTNAMES.standard_mode
					
					if data_variant.recombinable then
						local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. state_shortname .. "_" .. voice_id .. "_compound"
						local compound_string = serialize_compound_variations(data_variant)
						
						voices[voice_id] = voices[voice_id] or {}
						voices[voice_id][state_shortname] = voices[voice_id][state_shortname] or {}
						voices[voice_id][state_shortname].compound_loc_id = loc_id
						new_loc_ids[loc_id] = compound_string
					else
						voices[voice_id] = voices[voice_id] or {}
						voices[voice_id][state_shortname] = voices[voice_id][state_shortname] or {}
						local variants = {}
						voices[voice_id][state_shortname].variants = variants
						for var_id,var_str in ipairs(data_variant) do 
							local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. state_shortname .. "_" .. voice_id .. "_var" .. tostring(var_id)
							variants[var_id] = loc_id
							new_loc_ids[loc_id] = var_str
						end
					end
					if data_variant.text then
						local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. voice_id
						local loc_text = data_variant.text

						voices[voice_id] = voices[voice_id] or {}
						voices[voice_id][state_shortname] = voices[voice_id][state_shortname] or {}
						voices[voice_id][state_shortname].desc_id = loc_id
						new_loc_ids[loc_id] = loc_text
					end
				end
			end
		end
		
		--]]
		-- variants (different heister voices)
		if data.variants then
			for voice_id,data_variant in pairs(data.variants) do
				local voice_variant
				
				local line_variations
				if voice_id == "line_variations" then
					-- i'll allow it.
					voice_id = "all" -- hope nobody gets a voice variant with this id or that'll collide
					line_variations = data_variant
				else
					line_variations = data_variant.line_variations
					if not table.contains(VOICE_PREFIXES,voice_id) then
						log("Invalid voice: " .. tostring(voice_id) .. " " .. tostring(event_id))
					end
				end
				
				
				voices[voice_id] = voices[voice_id] or {}
				voice_variant = voices[voice_id]
				if data_variant.disabled then
					voice_variant.disabled = true
				else
					local done_any
					if line_variations then
						if line_variations.recombinable then
							for state_name,state_variations in pairs(line_variations) do
								if type(state_variations) == "table" then
									local compound_string = serialize_compound_variations(state_variations)
									if compound_string == false then
										error("SOMETHING " .. event_id)
									end
									local state_shortname = assert(STATE_SHORTNAMES[state_name],"Unknown state1: " .. tostring(state_name))
									local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. voice_id .. "_" .. state_shortname .. "_compound"
									
									voice_variant[state_shortname] = voice_variant[state_shortname] or {}
									voice_variant[state_shortname].compound_loc_id = loc_id
									new_loc_ids[loc_id] = compound_string
									
									--voices[voice_id][state_shortname].duration = 1
									if state_variations.duration then
										error("MAYBE?" .. tostring(event_id))
									end
									done_any = true
								else
									if state_name ~= "recombinable" then
										error("Unknown state name: " .. tostring(event_id) .. " " .. tostring(state_name))
									end
								end
							end
						else
							for state_name,state_variations in pairs(line_variations) do
								local state_shortname = assert(STATE_SHORTNAMES[state_name],"Unknown state1: " .. tostring(state_name))
								voice_variant[state_shortname] = voice_variant[state_shortname] or {}
								voice_variant[state_shortname].variants = voice_variant[state_shortname].variants or {}
								local variants = voice_variant[state_shortname].variants
								for var_id,var_str in ipairs(state_variations) do 
									local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. state_shortname .. "_" .. voice_id .. "_var" .. tostring(var_id)
									variants[var_id] = loc_id
									new_loc_ids[loc_id] = var_str
								end
							end
						end
					end
					
					if data_variant.text then
						local state_shortname = "std"
						local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. voice_id .. "_" .. state_shortname
						local loc_text = data_variant.text
						
						voice_variant[state_shortname] = voice_variant[state_shortname] or {}
						voice_variant[state_shortname].desc_id = loc_id
						new_loc_ids[loc_id] = loc_text
						
						done_any = true
					end
					
					if done_any then
						if data_variant.duration then
							-- since we can't check the actual wwise played variant,
							-- no point in defining different durations for random variants
							voice_variant.duration = data_variant.duration
						end
					end
				end
			end
		end
		
		if data.line_variations then
			local voice_id = "all"
			
			voices[voice_id] = voices[voice_id] or {}
			local voice_variant = voices[voice_id]
			local is_recombinable = data.line_variations.recombinable
			for state_name,state_variations in pairs(data.line_variations) do 
				local regular_variations = {}
				if type(state_variations) == "table" then
					local state_shortname = assert(STATE_SHORTNAMES[state_name],"Unknown state2a: " .. tostring(state_name))
					if state_name == "recombinable" then
						-- do nothing
					elseif state_name == "conversation" then
						local conversation_variants = {variants = {}}
						if state_variations.is_random_conversation then
							for convo_variation_index,convo_data in ipairs(state_variations) do 
								conversation_variants.colors = convo_data.colors -- just copy whichever was last
								conversation_variants.speakers = convo_data.speakers 
								
								local convo_string = convo_data.convo
								local loc_id = CAPTION_LOC_PREFIX .. state_shortname .. "_" .. voice_id .. "_var_" ..  convo_variation_index .. "_" .. event_id
								local out_convo_data = {
									timing = convo_data.timing,
									loc_id = loc_id
								--,desc = event_data.text -- not used
								}
								new_loc_ids[loc_id] = convo_string
								table.insert(conversation_variants.variants,#conversation_variants.variants+1,out_convo_data)
							end
						else
							conversation_variants.colors = convo_data.colors -- just copy whichever was last
							conversation_variants.speakers = convo_data.speakers 
							
							local convo_string = state_variations.convo
							local loc_id = CAPTION_LOC_PREFIX .. state_shortname .. "_" .. voice_id .. "_" .. event_id
							local out_convo_data = {
								timing = convo_data.timing,
								loc_id = loc_id
								--,desc = event_data.text -- not used
							}
							new_loc_ids[loc_id] = convo_string
							table.insert(conversation_variants.variants,#conversation_variants.variants+1,out_convo_data)
						end
						
						voice_variant.con = conversation_variants
						done_any = true
					else
						if is_recombinable then
							local compound_string = serialize_compound_variations(state_variations)
							if compound_string == false then
		--						error("Invalid data for event:" .. tostring(event_id))
							end
							local state_shortname = assert(STATE_SHORTNAMES[state_name],"Unknown state2b: " .. tostring(state_name))
							local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. voice_id .. "_" .. state_shortname .. "_compound"
							
							voice_variant[state_shortname] = voice_variant[state_shortname] or {}
							voice_variant[state_shortname].compound_loc_id = loc_id
							new_loc_ids[loc_id] = compound_string
							
							--voices[voice_id][state_shortname].duration = 1
							done_any = true
						else
							voice_variant[state_shortname] = voice_variant[state_shortname] or {}
							voice_variant[state_shortname].variants = voice_variant[state_shortname].variants or {}
							local variants = voice_variant[state_shortname].variants
							for var_id,var_str in ipairs(state_variations) do 
								local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. state_shortname .. "_" .. voice_id .. "_var" .. tostring(var_id)
								variants[var_id] = loc_id
								new_loc_ids[loc_id] = var_str
							end
							
							done_any = true
						end
						
					end
				else
					if state_name ~= "recombinable" then
						log("event id",event_id,"has no state types set")
						
						state_shortname = "std"
						
						voice_variant[state_shortname] = voice_variant[state_shortname] or {}
						voice_variant[state_shortname].variants = voice_variant[state_shortname].variants or {}
						local variants = voice_variant[state_shortname].variants
						for var_id,var_str in ipairs(data.line_variations) do 
							local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. state_shortname .. "_" .. voice_id .. "_var" .. tostring(var_id)
							variants[var_id] = loc_id
							new_loc_ids[loc_id] = var_str
							done_any = true
						end
						
						break
						--error("Unknown state name2: " .. tostring(event_id) .. " " .. tostring(state_name))
					end
				end
			end
		end
		
				
		if data.conversation then
			local voice_id = "all"
			local state_shortname = STATE_SHORTNAMES.conversation
			local convo_data = data.conversation
			local convo_string = convo_data.convo
			local loc_id = CAPTION_LOC_PREFIX .. state_shortname .. "_" .. voice_id .. "_" .. event_id
			local out_convo_data = {
				timing = convo_data.timing,
				loc_id = loc_id
			}
			new_loc_ids[loc_id] = convo_string
			event_data.voices = event_data.voices or {}
			event_data.voices.all = event_data.voices.all or {}
			event_data.voices.all.con = {
				speakers = convo_data.speakers,
				colors = convo_data.colors,
				variants = {
					out_convo_data
				}
			}
		else
			
			if event_data.category ~= "stops" then
				local has_any
				for k,v in pairs(voices) do 
					has_any = true
					break
				end
				if data.text and not has_any then
					local state_shortname = "std"
					local loc_id = CAPTION_LOC_PREFIX .. state_shortname .. "_" .. event_id
					voices.any = {
						[state_shortname] = {
							loc_id
						}
					}
					new_loc_ids[loc_id] = data.text
				end
			end
			
		end
	else
		-- basically just used when i want to mark an event to fill out or enable again later
		new_sound_data[event_id] = {disabled=true}
	end
	--]]
end

				--for i=1,99,1 in pairs(data[robber_voice]) do 
--serialize_compound_variations
--[[ lua table:
{
	"Hey, Chains!",
	"Chains!"
},
{
	"Come with me!",
	"Come with me! Move it!",
	"Follow me!",
	"Follow my lead!",
	"Follow me quickly!"
}
			-->
string:
"{Hey, Chains!|Chains!},{Come with me!|Come with me! Move it!|Follow me!|Follow my lead!|Follow me quickly!}"
--]]

--[[
-> check assault state
-> check voice type

--]]















local function tbl_to_str(tbl,order)
	local keys_record = {}
	
	local t = os.time()
	log("Starting...")
	local NEWLINE = "\n"
	local TAB_S = "\t"
	local indent_level = 1
	local write_to_string
	write_to_string = function(key,value,skip_key,skip_spacing)
		local _NEWLINE_CHAR,_TAB_CHAR
		if skip_spacing then
			_NEWLINE_CHAR = ""
			_TAB_CHAR = ""
		else
			_NEWLINE_CHAR = NEWLINE
			_TAB_CHAR = "\t"
		end
		local key_str
		if skip_key then
			key_str = ""
		else
			local _key_type = type(key)
			if _key_type == "number" then
				key_str = string.format("[%d] =  ",key)
			elseif (_key_type == "string") then 
				if string.find(key,"^%d") then
					key_str = string.format("[\"%s\"] = ",key)
				else
					key_str = string.format("%s = ",key)
				end
			end
		end
		
		local s = ""
		if type(value) ~= "table" then
			s = s .. _NEWLINE_CHAR .. string.rep(_TAB_CHAR,indent_level)
			if type(value) == "number" then
				s = s .. string.format("%s%s",key_str,tostring(value))
			elseif type(value) == "boolean" then
				s = s .. string.format("%s%s",key_str,tostring(value))
			else
				s = s .. string.format("%s\"%s\"",key_str,tostring(value))
			end
		else -- is table
			s = s .. _NEWLINE_CHAR .. string.rep(_TAB_CHAR,indent_level) .. string.format("%s{",key_str)
			indent_level = indent_level + 1
			
			local _skip_spacing
			
			-- determine if this is an ordered list
			local valid_list_indices = {}
			for i=1,255 do 
				if not value[i] then
					break
				end
				if type(value[i]) == "number" then
					_skip_spacing = true
				end
				
				valid_list_indices[i] = i
				-- amateurish but functional
				-- operates as a lookup table and can get length with #
			end
			local num_indices = #valid_list_indices
			
			local ordered_keys = {}
			-- determine order for remaining non-index keys
			for k,v in pairs(value) do 
				if not valid_list_indices[k] then
					table.insert(ordered_keys,k)
				end
			end
			
			table.sort(ordered_keys)
			local num_keys = #ordered_keys
			
			if num_indices > 0 then
				local _s
				if _skip_spacing then
					s = s .. _NEWLINE_CHAR .. string.rep(_TAB_CHAR,indent_level)
				end
				for index,_ in ipairs(valid_list_indices) do 
					local _value = value[index]
					s = s .. write_to_string(index,_value,true,_skip_spacing)
					if num_keys > 0 or (index < num_indices) then
						s = s .. ","
					end
				end
			end
			
			for i,k in ipairs(ordered_keys) do 
				local v = value[k]
				s = s .. write_to_string(k,v)
				if (i < num_keys) then
					s = s .. ","
				end
			end
			
			
			-- opt. sort keys here
			
			
			
			--for k,v in pairs(value) do 
			--	s = s .. write_to_string(k,v)
			--end
			
			indent_level = indent_level - 1
			s = s .. _NEWLINE_CHAR .. string.rep(_TAB_CHAR,indent_level) .. "}"
		end
		return s
	end


	local out_s = ""
	out_s = out_s .. "{"
	if order then
		for i,k in ipairs(order) do 
			if not keys_record[k] then
				local data = tbl[k]
				out_s = out_s .. write_to_string(k,data)
				if i < #order then
					out_s = out_s .. ","
				end
				keys_record[k] = true
			end
		end
	end
	for k,data in pairs(tbl) do 
		if not keys_record[k] then
			out_s = out_s .. NEWLINE .. write_to_string(k,data)
			keys_record[k] = true
		end
	end
	out_s = out_s .. NEWLINE .. "}"
	
	log("Finished in " .. tostring(os.time() - t) .. " seconds")
	
	return out_s
end

if WRITE then
--[[
	local file = io.open(DATA_OUT_PATH,"w+")
	file:write(json.encode({
		vo = new_sound_data,
		disabled_sounds = sound_data.disabled_sounds,
		vo_special = sound_data.vo_special
	}))
	file:flush()
	file:close()
	--]]
	
	
	-- [[
	local file = io.open(ClosedCaptions._MOD_PATH .. "dev/sound_data.lua","w+")
	file:write("return " .. tbl_to_str(new_sound_data,ordered_lines))
	file:flush()
	file:close()
	--]]
	
	local file = io.open(L10N_OUT_PATH,"w+")
	file:write(json.encode(new_loc_ids))
	file:flush()
	file:close()
end
