local function f()

local SOUND_DATA_PATH = ClosedCaptions._SOUNDDATA_PATH .. "sound_data.lua"
local L10N_OUT_PATH = ClosedCaptions._MOD_PATH .. "dev/subtitles.json"
local sound_data = blt.vm.dofile(SOUND_DATA_PATH)

local WRITE = false
local GUESS_ORDER = true


local function ordered_iterate(tbl,order,clbk)
	if not clbk then return end
	
	local keys_record = {}
	if order then
		local num_order = #order
		for i,key in ipairs(order) do 
			local value = tbl[key]
			clbk(tbl[key],value,i,num_order)
			keys_record[key] = true
		end
	end
	-- iterate on any remaining 
	local i = 0
	for key,value in pairs(tbl) do
		if not keys_record[key] then
			i = i + 1
			clbk(tbl[key],value,i)
		end
	end
end

local function tbl_to_tsv(tbl,order)
	local s,s2 = "",""
	local clbk = function(key,value)
		log("Value:",key,value)
		s = s .. string.gsub(value,"\n","\\n")  .. "\n"
		s2 = s2 .. string.gsub(key,"\n","\\n")  .. "\n"
	end
	ordered_iterate(tbl,order,clbk)
	
	return s,s2
end

-- intended for conversion to json or single, 1-depth key-pair tables
local function tsv_to_tbl(path,f_verify)
	local file = io.open(path,"r")
	if file then
		local tbl = {}
		local row = 0
		for line in file:lines() do
			row = row + 1
			local a = string.split(line,"\t")
			local key = a[1]
			local value = a[2]
			if value ~= nil then
				if not f_verify or f_verify(row,key,value) then
					tbl[key] = value
				end
			end
		end
		file:close()
		return tbl
	else
		log("FileNotFound!",path)
		return false
	end
end

-- agnostic; CAUTION: different arguments passed to verify
local function tsv_to_tbl2(path,f_verify)
	local file = io.open(path,"r")
	if file then
		local tbl = {}
		local row = 0
		for line in file:lines() do
			row = row + 1
			tbl[row] = {}
			local a = string.split(line,"\t")
			for i,v in ipairs(a) do
				if not f_verify or f_verify(row,i,v) then
					tbl[row][i] = v
				end
			end
		end
		file:close()
		return tbl
	else
		log("FileNotFound!",path)
		return false
	end
end




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

-- only works on tables with a depth of 1
--[[
local function tbl_to_tsv(tbl,order)
	local keys_record = {}
	local s = ""
	local s2 = ""
	if order then
		for i,key in ipairs(order) do 
			local value = tbl[key]
			if value then
				log("Value:",key,value)
				keys_record[key] = true
				s = s .. string.gsub(value,"\n","\\n")  .. "\n"
				s2 = s2 .. string.gsub(key,"\n","\\n")  .. "\n"
				--s = s .. key  .. "\t" .. value .. "\n"
			else
				log("No value:",key)
			end
		end
	end
	for key,value in pairs(tbl) do
		if not keys_record[key] then
			s = s .. string.gsub(value,"\n","\\n") .. "\n"
			s2 = s2 .. string.gsub(key,"\n","\\n")  .. "\n"
			--s = s .. key .. "\t" .. value .. "\n"
		end
	end
	return s,s2
end
--]]


local SPEAKERS_LOOKUP = {
	civilian = "Civilian",
	cop = "Cop",
	security = "Security",
	rb4 = "Dallas",
	rb3 = "Wolf",
	rb1 = "Chains",
	rb2 = "Houston",
	rb6 = "John Wick",
	rb5 = "Hoxton",
	rb7 = "Clover",
	rb8 = "Dragan",
	rb9 = "Jacket",
	rb10 = "Bonnie",
	rb11 = "Sokol",
	rb12 = "Jiro",
	rb13 = "Bodhi",
	rb14 = "Jimmy",
	rb15 = "Sydney",
	rb16 = "Rust",
	rb17 = "Scarface",
	rb18 = "Sangres",
	rb19 = "Joy",
	rb22 = "Duke",
	rb20 = "Ethan",
	rb21 = "Hila"
}


local loc_ids_by_event_id = {}
local voice_ids_by_loc_id = {}
local function register_loc_id(event_id,loc_id,voice_id)
	loc_ids_by_event_id[event_id] = loc_ids_by_event_id[event_id] or {}
	table.insert(loc_ids_by_event_id[event_id],loc_id)
	if voice_id ~= "all" then
		voice_ids_by_loc_id[loc_id] = voice_id
	end
end


local loc_transfers = {}
local CAPTION_LOC_PREFIX = "hud_subtitlemod_"
for event_id,event_data in pairs(sound_data) do 
	if not event_data.disabled and event_data.category ~= "stops" then
		local done_any
		local should_log_desc = true
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
										register_loc_id(event_id,var.loc_id,voice_id)
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
									register_loc_id(event_id,v,voice_id)
									done_any = true
								elseif k == "desc_id" then
									done_any = true
									register_loc_id(event_id,v,voice_id)
								elseif k == "variants" then
									for i,j in pairs(v) do 
										done_any = true
										register_loc_id(event_id,j,voice_id)
										--break
									end
									if #v > 0 then
										should_log_desc = false
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
	if event_data.desc_id and should_log_desc then
		register_loc_id(event_id,event_data.desc_id)
	end
end


--	foo = sound_data
--	do return end


-- only works with pure alphanumeric keys (and underscores)
local function get_json_order(path)
	local file = io.open(path,"r")
	if file then
		local tbl = {}
		for line in file:lines() do
			local key = string.match(line,"\"[%w%_]+\"") -- should allow some punctuation but... meh
			key = key and string.gsub(key,"^\"","")
			key = key and string.gsub(key,"\"$","")
			if key then
				table.insert(tbl,#tbl+1,key)
			end
		end
		file:close()
		return tbl
	else
		log("FileNotFound!",path)
		return
	end
end







-- order only matters for exporting data to the tsv for the translation sheet
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

local function json_to_tsv(path,order)
	local order = {}
	local file = io.open(path,"r")
	if file then
		local data = json.decode(file:read("*all"))
		file:seek("set",0)
		for line in file:lines() do 
			local key = string.match(line,"[%w%_]+")
			--log("Key",line,key)
			if key then
				table.insert(order,#order+1,key)
			end
		end
		file:close()
		return tbl_to_tsv(data,order)
	end
	error("No file! " .. tostring(path))
end


if WRITE then
	local menu_strings_path = ClosedCaptions._MOD_PATH .. "l10n/english/menu_strings.json"
	local order = get_json_order(menu_strings_path)
	local function f_verify(row,k,v)
		if row > 1 then -- ignore first row
			if k ~= "" then -- ignore empty cells
				return true
			end
		end
	end
	
	local tbl = tsv_to_tbl(ClosedCaptions._MOD_PATH .. "dev/menu_strings.tsv",f_verify)
	local json_str = tbl and tbl_to_str(tbl,order)
	
--	foo = tbl
--	foo2 = json_str
	
	--log(json_to_tsv(ClosedCaptions._MOD_PATH .. "l10n/english/menu_strings.json",true))
	--[[
	log(json_to_tsv(ClosedCaptions._MOD_PATH .. "l10n/english/unit_names.json"))
	log(json_to_tsv(ClosedCaptions._MOD_PATH .. "l10n/english/speakers.json"))
	local a = tsv_to_tbl(ClosedCaptions._MOD_PATH .. "dev/speakers.tsv")
	if a then
		local new_speakers = {}
		for row,row_data in ipairs(a) do
			local key = row_data[1]
			local value = row_data[2]
			if key and value then
				new_speakers[key] = value
			end
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
	
--			local single_sound = #loc_map < 2
	--_G.all_loc = {}
	do return end
	local loc_s = "" -- table.concat({"Event ID","Loc ID","EN","Your Language"},"\t")
	-- "ID\ten\tXX\tNotes from localization lead\tNotes from translator" 
	for _,event_id in ipairs(ordered_lines) do 
		local loc_map = loc_ids_by_event_id[event_id]
		if loc_map then
--			loc_s = loc_s .. "\n" .. event_id .. "\t"
			
			table.sort(loc_map)
			for _,loc_id in ipairs(loc_map) do 
				loc_s = loc_s .. "\n" .. event_id .. "\t" .. loc_id
				
				--log("found loc_id",loc_id)
				--all_loc[loc_id] = true
				local speaker_id = voice_ids_by_loc_id[loc_id]
				local speaker_name
				if speaker_id then
					speaker_name = SPEAKERS_LOOKUP[speaker_id]
				end
				speaker_name = speaker_name or ""
				local text = string.gsub(managers.localization:text(loc_id),"\n","") -- line breaks shouldn't occur naturally in any of these lines
				if string.find(text,"$b") then
					-- print out multi line, conversations, or compound strings
					local ss = "\n"
					local subs_data = string.split(text,"$b")
					if string.find(text,"%|") then
						
						-- print compound strings
						for stage_id,subs in ipairs(subs_data) do
							local options = string.split(subs,"|")
							for i,option in ipairs(options) do 
								ss = ss .. "\t\t" .. option .. "\t" .. speaker_name .. "\n"
							end
							if stage_id < #subs_data then
								-- print compound string joiner
								ss = ss .. "\t\t=\"+\"\n"
							end
						end
					else
						-- regular newline
						for i,option in ipairs(subs_data) do
							ss = ss .. "\t\t" .. option .. "\t" .. speaker_name .. "\n"
						end
					end
					loc_s = loc_s .. ss
					
				else
					loc_s = loc_s .. "\t" .. text .. "\t" .. speaker_name
				end
			end
		end
	end
	local file = io.open(ClosedCaptions._MOD_PATH .. "dev/l10n_en.tsv","w+")
	file:write(loc_s)
	file:flush()
	file:close()
	--]]
end


local function split_b(s,c,timeout)
	timeout = timeout or 10
	local tbl = {}
	local t = os.time()
	local next_tab = utf8.find_char(s,c) or 0
	local len = utf8.len(s)
	repeat
		if ( os.time() - t ) > timeout then
			error("Passed time limit")
		end
		local subs = utf8.sub(s,1,next_tab-1)
		s = utf8.sub(s,next_tab+1,-1)
		table.insert(tbl,#tbl+1,subs)
		
		next_tab = utf8.find_char(s,c)
		--log("new",s)
	until not next_tab
	table.insert(tbl,#tbl+1,s)
	
	return tbl
end

local function read_subtitles_tsv(path)
	local file = io.open(path,"r")
	if file then
		local tbl = {}
		local row = 0
		
		local function nil_or_empty(s)
			return s == nil or string.gsub(s,"^%s","") == ""
		end
		
		-- some of these persist for multiple rows
		
		local event_id -- index 1
		local loc_id   -- index 2
		
		--local template_text -- index 3
		--local lead_notes -- index 4
		--local l10n_text  -- index 5
		
		local loc_tbl -- progressive from column 5, string building, becomes loc string
		local is_compound
		local loc_compound_index
		
		for line in file:lines() do
		
			
			row = row + 1
			if row > 1 then
				-- ignore first row
--				if row > 100 then
--					break
--				end
				local a = split_b(line,"\t")
				--local a = string.split(line,"\t")-- needs replacement
				
				for col,v in ipairs(a) do
					if not nil_or_empty(v) then
						if col == 1 then
							event_id = v
						elseif col == 2 then
							if loc_id and loc_id ~= v and not nil_or_empty(v) then
								
								-- terminate previous string
								local loc_str = ""
								if is_compound then
									for i,subtbl in ipairs(loc_tbl) do 
										for j,s in ipairs(subtbl) do
											if j > 1 then
												loc_str = loc_str .. "|" .. s
											else
												loc_str = loc_str .. s
											end
										end
										if i < #loc_tbl then
											loc_str = loc_str .. "$b"
										end
									end
								else
									for i,subtbl in ipairs(loc_tbl) do 
										for j,s in ipairs(subtbl) do
											if j > 1 then
												loc_str = loc_str .. "$b" .. s
											else
												loc_str = loc_str .. s
											end
										end
										if i > 1 then
											error("Somehow multi paragraph loc string? " .. tostring(row) .. ", " .. tostring(event_id))
										end
									end
								end
								
								if not nil_or_empty(loc_str) then
									-- finish this string
									tbl[loc_id] = loc_str
									loc_tbl = nil
									--log("Finished loc string",loc_id,loc_str)
								end
							end
							if not nil_or_empty(v) then
								--log("started string",v)
								loc_compound_index = 1
								loc_id = v
								loc_tbl = {{}}
								is_compound = nil
							end
						elseif col == 3 then
							-- nothing
						elseif col == 4 then
							-- nothing
						elseif col == 5 then
							
							if not nil_or_empty(loc_id) then
								--log("found string",v)
								if v == "$&" then
									is_compound = true
									loc_compound_index = loc_compound_index + 1
									loc_tbl[loc_compound_index] = {}
									--loc_str = loc_str .. "$b" .. v
								else
									table.insert(loc_tbl[loc_compound_index],v)
									--loc_str = loc_str .. "|" .. v
								end
							end
						end
					end
					if i == 1 and not nil_or_empty(v) then
						event_id = i
					end
				end
			end
		end
		
		
		-- finish last string, if present

		-- terminate previous string
		local loc_str = ""
		if loc_tbl and loc_id then
			if is_compound then
				for i,subtbl in ipairs(loc_tbl) do 
					for j,s in ipairs(subtbl) do
						if j > 1 then
							loc_str = loc_str .. "|" .. s
						else
							loc_str = loc_str .. s
						end
					end
					if i < #loc_tbl then
						loc_str = loc_str .. "$b"
					end
				end
			else
				for i,subtbl in ipairs(loc_tbl) do 
					for j,s in ipairs(subtbl) do
						if j > 1 then
							loc_str = loc_str .. "$b" .. s
						else
							loc_str = loc_str .. s
						end
					end
					if i > 1 then
						error("Somehow multi paragraph loc string? " .. tostring(row) .. ", " .. tostring(event_id))
					end
				end
			end
			
			if not nil_or_empty(loc_str) then
				-- finish this string
				tbl[loc_id] = loc_str
				loc_tbl = nil
--				log("Finished loc string",loc_id,loc_str)
			end
		end
		
		
		
		
		
		
		
		
		file:close()
		return tbl
	else
		log("FileNotFound!",path)
		return false
	end
	
	
	
	
	
	
	
	
	
	
	
end

	foo = read_subtitles_tsv("mods/PD2-ClosedCaptions/l10n/english/subtitles.tsv")
end

return blt.pcall(f)