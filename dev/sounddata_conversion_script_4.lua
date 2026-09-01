local SOUND_DATA_PATH = ClosedCaptions._SOUNDDATA_PATH .. "sound_data.lua"
local L10N_OUT_PATH = ClosedCaptions._MOD_PATH .. "dev/subtitles.json"
local sound_data = blt.vm.dofile(SOUND_DATA_PATH)

local WRITE = true
local GUESS_ORDER = true

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


local loc_ids_by_event_id = {}
local function register_loc_id(event_id,loc_id)
	loc_ids_by_event_id[event_id] = loc_ids_by_event_id[event_id] or {}
	table.insert(loc_ids_by_event_id[event_id],loc_id)
end


local loc_transfers = {}
local CAPTION_LOC_PREFIX = "hud_subtitlemod_"
for event_id,event_data in pairs(sound_data) do 
	if not event_data.disabled and event_data.category ~= "stops" then
		local done_any
		if event_data.voices then
			for voice_id,voice_data in pairs(event_data.voices) do
				if type(voice_data) ~= "table" then
					log("ERROR Wrong voice_data type",event_id,voice_id,type(voice_data))
					return
				end
				if not voice_data.disabled then
					--[[
					local duration
					if voice_data.duration then
						duration = voice_data.duration
						voice_data.duration = nil
					end
					--]]
					for state_name,state_data in pairs(voice_data) do
						if state_name == "duration" then
							log("event has uncatgeorized duration",event_id,voice_id,duration)
						elseif state_name == "con" then
							if state_data.variants then
								for i,var in pairs(state_data.variants) do 
									if var.loc_id then
										done_any = true
										--break
										register_loc_id(event_id,var.loc_id)
									else
										log("Conversation variant has no loc_id",event_id,voice_id,state_name,i)
									end
								end
							else
								log("Conversation has no variants",event_id)
							end
						else
							if type(state_data) ~= "table" then
								log("ERROR Wrong state_data type",event_id,voice_id,type(state_data))
								return
							end
							
							--state_data.duration = duration
							for k,v in pairs(state_data) do
								if k == "compound_loc_id" then
									register_loc_id(event_id,v)
									done_any = true
								elseif k == "desc_id" then
									done_any = true
									register_loc_id(event_id,v)
								elseif k == "variants" then
									for i,j in pairs(v) do 
										done_any = true
										register_loc_id(event_id,j)
										--break
									end
									if not done_any then
										log("No variants",event_id)
									end
								elseif k == "duration" then
									-- nothing
								else
									if type(k) ~= "string" and type(v) == "string" then
										log("Bad key",event_id,k,v)
										--[[
										if not state_data.compound_loc_id or state_data.desc_id or state_data.variants then
											state_data.variants = state_data.variants or {}
											table.insert(state_data.variants,#state_data.variants+1,v)
											
											local loc_id = CAPTION_LOC_PREFIX .. event_id .. "_" .. state_name .. "_" .. voice_id .. "_var" .. tostring(k)
											loc_transfers[v] = loc_id
											state_data[k] = nil
										end
										--]]
									elseif type(k) == "string" and k ~= "variants" then
										log("Unknown key",event_id,k)
									end
								end
							end
							
							
							if not (state_data.variants or state_data.compound_loc_id or state_data.desc_id) then
								log("No valid data for ",event_id)
							else
								done_any = true
							end
							
						end
					end
				end
			end
			
			
		end
		
		if not (done_any or event_data.desc_id) then
			log("No desc id",event_id)
			return
		end
		
		
	end
	if event_data.desc_id then
		register_loc_id(event_id,event_data.desc_id)
	end
end


--	foo = sound_data
--	do return end












-- order only matters for exporting data to the csv for the translation sheet
local ordered_lines = {} -- index:event_id
local lines_order = {} -- event_id:index
if GUESS_ORDER then -- guess the order
	local start = true
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
					if string.match(raw_line,"^\t[%w%_%[]+") then
						local sound_name = string.match(line,"^[%w%_]+")
						if sound_name then
							table.insert(ordered_lines,#ordered_lines+1,sound_name)
						end
					end
				end
			end
		end
	end
	file:close()
	for i,event_id in pairs(ordered_lines) do 
		lines_order[event_id] = i
	end
	
end


if WRITE then

	local count = 0
	local file = io.open(ClosedCaptions._LOCALIZATION_DIRECTORY_PATH .. "english/subtitles.json","r")
	local old_loc = json.decode(file:read("*all"))
	file:close()
	
	local hits = {}
	for _,event_id in ipairs(ordered_lines) do 
		local loc_map = loc_ids_by_event_id[event_id]
		if loc_map then
			table.sort(loc_map)
			for _,loc_id in ipairs(loc_map) do
				if old_loc[loc_id] then
					count = count + 1
					old_loc[loc_id] = nil
				else
					if true then
						log("Missing loc",event_id,loc_id)
						return 
					elseif type(old_loc[loc_id]) ~= "string" then
						log("Invalid type",loc_id)
					end
				end
			--[[
				if not managers.localization._custom_localizations[loc_id] then
					self:log("Unknown loc",loc_id)
					return
				end
				local text = managers.localization:text(loc_id)
				text = string.gsub(text,"\n","")
				loc_s = loc_s .. loc_id .. "\t" .. text
				--]]
			end
		end
	end
	Print("Hits",count)
	foor = old_loc
--[[
	local file = io.open(ClosedCaptions._LOCALIZATION_DIRECTORY_PATH .. "english/subtitles.json","r")
	local old_loc = json.decode(file:read("*all"))
	for old, new in pairs(loc_transfers) do 
		if old_loc[old] then
			local text = old_loc[old]
			old_loc[old] = nil
			old_loc[new] = text
		else
			file:close()
			log("No loc found:",old,new)
			return
		end
	end
	--]]




	--[[
	local file = io.open(L10N_OUT_PATH,"w+")
	file:write(json.encode(new_loc_ids))
	file:flush()
	file:close()
	--]]
	
	--[[
	local path = ClosedCaptions._MOD_PATH .. "dev/test_sounddata.lua"
	local file = io.open(path,"w+")
	file:write("return " .. tbl_to_str(sound_data,ordered_lines))
	file:flush()
	file:close()
	--]]
	--hud_subtitlemod_f11e_plu_std_rb3_var1 
	-- f11e_plu
	
	do return end
	
	
	
	_G.all_loc = {}
	
	local loc_s = "ID\ten\tXX\tNotes from localization lead\tNotes from translator" 
	for _,event_id in ipairs(ordered_lines) do 
		local loc_map = loc_ids_by_event_id[event_id]
		if loc_map then
			loc_s = loc_s .. "\n" .. event_id .. "\t"
			
			table.sort(loc_map)
			for _,loc_id in ipairs(loc_map) do 
				--log("found loc_id",loc_id)
				all_loc[loc_id] = true
			--[[
				if not managers.localization._custom_localizations[loc_id] then
					self:log("Unknown loc",loc_id)
					return
				end
				local text = managers.localization:text(loc_id)
				text = string.gsub(text,"\n","")
				loc_s = loc_s .. loc_id .. "\t" .. text
				--]]
			end
		end
	end
	
	local file = io.open(ClosedCaptions._MOD_PATH .. "dev/l10n_en.csv","w+")
	file:write(loc_s)
	file:flush()
	file:close()
	--]]
end

