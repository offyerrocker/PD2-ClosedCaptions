--[[
* todo adjust horizontal position of subtitles
* todo option to align horizontal by left/right/center
* todo option to align vertical by top/bottom/center

* todo aldstone lines

* todo re-make and re-center text (currently left-aligned)
* todo sort voicelines by type (source)
* todo figure out a cloaker static nearby system
* todo filter out voicelines by local-player only (eg. for pickups/uppers ace)?
	* can_say filter per type of character?
	* per faction disabling?
		* cops saying stuff but criminals cannot
* todo layer custom user settings over sound_data
	* todo documented custom template for those things
--]]
--[[
calling out guards, deploying, grenades, calling bots, inspiring downed heisters
guard pager timer having noises
mission dialogue:
	- first world bank insider dialogue
	- heat street dipshit dialogue
	- diamond heist ceo dialogue/ceo son dialogue
	- rats gangster dialogue
	- green bridge prisoner dialogue
	- hell's island bain dialogue/dentist dialogue
	- hoxrev hector dialogue
	
	- undercover taxman dialogue
	- framing frame buyer dialogue
	
	- hotline miami commissar taunts
	- biker heist mechanic?
	- reservoir dogs mr purple dialogue?
	- scarface mansion sosa dialogue
	- breakin' feds garrett dialogue
	
	- beneath the mountain locke dialogue?
	- stealing xmas almir dialogue
	- murky station radio (loop)
	- Car shop chatter
	- goat simulator dialogue
	- border crossing...?
--]]


ClosedCaptions = ClosedCaptions or {
	_ws = nil,
	_panel = nil
}
ClosedCaptions.LOG_ENABLED = true

ClosedCaptions._mod_path = ClosedCaptions._mod_path or ModPath
ClosedCaptions._debug_list_path = SavePath .. "CLOSEDCAPTIONS_FOUND_MISSING_LINES.txt"

ClosedCaptions._sound_data_filename = "sound_data.lua"

ClosedCaptions.sounds = nil --"processed" sounds with appropriate data
ClosedCaptions._sounds = {} --read through separate file for organization, called through LoadSounds()

ClosedCaptions.debug_missing_lines = {}
ClosedCaptions.debug_mission_name = nil --evaluated once per level, for debug tracking reasons

ClosedCaptions.character_prefixes = {
	a = "russian", --dallas 1 / 4
	b = "spanish", --chains 2
	c = "german", --wolf 3
	d = "old_hoxton", --hoxton 4
	l = "american", --houston 5
	m = "jowi", --wick 6
	n = "clover", --clover 7
	o = "dragan", --dragan 8
	p = "jacket", --jacket 9
	q = "bonnie", --bonnie 10
	r = "sokol", --sokol 11
	s = "dragon", --jiro 12
	t = "bodhi", --bodhi 13
	u = "jimmy", --jimmy 14
	v = "sydney", --sydney 15
	w = "wild", --rust 16
	x = "chico", --tony 17
	y = "max", --sangres 18
	z = "joy", --joy 19
	aa = "ecp_male", --ethan 20
	ab = "ecp_female", --hila 21
	ac = "myh" --duke 22
}

--[[
	speech_prefix_p1 
	
	--normal
	cop = "l", --as in lowercase "L"
	swat = "l",
	heavy_swat = "l",
	taser = "tsr",
	cloaker = "clk",
	bulldozer = "bdz",
	medic = "mdc",
	shadow_spooc = "uno_clk",
	mute_security_undominatable = "bb"
	
	--russian region 
	cop = "r",
	swat = "r",
	heavy_swat = "r",
	taser = "rtsr",
	cloaker = "rclk",
	bulldozer = "rbdz",
	medic = "rmdc"
	
	--zombie region 
	cop = "z",
	swat = "z",
	heavy_swat = "z",
	taser = "tsr",
	cloaker = "clk",
	bulldozer = "bdz",
	medic = "mdc"
	
--]]

ClosedCaptions.unit_names = {
	["nil"] = "oopsie woopsie OwO uwu i made a fuckie wuckie~ a widdle fucko boingo!!! ugu~", --i'm sorry
	civilian = "Civilian",
	civilian_female = "Civilian",
	phalanx_minion = "Phalanx Shield",
	phalanx_vip = "Captain Winters",	
	tank = "Bulldozer",
	tank_medic = "Medic Dozer",
	tank_mini = "Minigun Dozer",
	tank_hw = "Headless Dozer",
	shield = "Shield",
	spooc = "Cloaker",
	shadow_spooc = "Shadow Cloaker",
	medic = "Medic",
	taser = "Taser",
	sniper = "Sniper",
	security = "Security",
	security_undominatable = "Garrett", --???
	mute_security_undominatable = "Garrett",
	gensec = "GenSec",
	cop = "Cop",
	cop_scared = "Cop Scared",
	cop_female = "Cop",
	fbi = "FBI",
	swat = "SWAT",
	heavy_swat = "Heavy SWAT",
	heavy_swat_sniper = "Heavy SWAT Sniper",
	fbi_swat = "FBI SWAT",
	fbi_heavy_swat = "FBI Heavy SWAT",
	city_swat = "City SWAT",
	gangster = "Gangster",
	biker = "Biker",
	biker_escape = "Biker2",
	mobster = "Mobster",
	mobster_boss = "Mobster Boss",
	biker_boss = "Biker Boss",
	chavez_boss = "Chavez",
	hector_boss = "Hector",
	hector_boss_no_armor = "Hector", --stealth
	bolivian = "Bolivian Gangster",
	bolivian_indoors = "Bolivian Security",
	drug_lord_boss = "Ernesto Sosa",
	drug_lord_boss_stealth = "Sosa" --stealth
}

ClosedCaptions.color_data = {
	generic = Color(1,1,1),
	criminal1 = Color(0,1,1),
	neutral1 = Color(0,1,0),
	law1 = Color(1,0,0),
	peer1 = Color.green,
	peer2 = Color.blue,
	peer3 = Color.red,
	peer4 = Color(1,1,0)
}

ClosedCaptions.settings = {
	language = 1,
	box_y = 200,
	box_w = 600,
	font_size = 24
}

ClosedCaptions.hud_data = {
}

ClosedCaptions.active_lines = {
	--[[ ex:
	{
		sound_name = "butt",
		event_id = [generally, some inscrutable and very small number],
		source_unit = [Unit],
		start_t = 4,
		lifetime = 10
	}
	
	
	--]]
}

ClosedCaptions.languages = {
	"english"
}

function ClosedCaptions:LoadSounds()	
	if SystemFS:exists( Application:nice_path( SavePath .. self._sound_data_filename, true )) then
		self:log("Closed Captions: Reading " .. self._sound_data_filename .. " override from user save")
		dofile(SavePath .. self._sound_data_filename)
	else
		dofile(self._mod_path .. self._sound_data_filename)
	end
end

function ClosedCaptions:log(...)
	if not self.LOG_ENABLED then 
		return
	end
	if Console then 
		return Console:Log(...)
	else
		return log(...)
	end
end

function ClosedCaptions:init_captions()
	self:process_special_vo()
	self:process_lookup_table()
	
	self._ws = managers.gui_data:create_fullscreen_workspace()
	self._panel = self._ws and self._ws:panel()
	self._panel:set_layer(1000)
	if BeardLib then 
		BeardLib:AddUpdater("ClosedCaptions_update",callback(ClosedCaptions,ClosedCaptions,"Update"))
	end
end

function ClosedCaptions:process_special_vo()
	local sound_table = self:GetSoundTable()
	for sound_name_raw,vo_data in pairs(sound_table.vo_special) do 
		if vo_data.macro == "character_name" then 
			for prefix,char_name in pairs(self.character_prefixes) do 
				local data = table.deep_map_copy(vo_data)
				local character_name = managers.localization:text("menu_" .. char_name)
				if vo_data.caps then 
					character_name = utf8.to_upper(character_name)
				end
				data.text = string.gsub(vo_data.text,"$CHARACTER_NAME",character_name)
				
				sound_table.vo[string.gsub(sound_name_raw,"@",prefix)] = data
	--			self:log("Added item " .. string.gsub(sound_name_raw,"@",prefix) .. " with text " .. tostring(data.text))
			end
		end
	end
	sound_table.vo_special = {}
end

function ClosedCaptions:GetSoundTable()
	if self.sounds then 
		return self.sounds
	else
		self:LoadSounds()
		local lang = self:GetLanguage()
		local all_sounds_data = lang and self._sounds.languages[lang]
		if not all_sounds_data then 
			return
		end
		self.sounds = all_sounds_data
		return all_sounds_data
	end
end

function ClosedCaptions:process_lookup_table(wipe_clean)
	if wipe_clean then 
		self._sounds.event_ids = {}
	end
	
	local sound_table = self:GetSoundTable()
	if sound_table then 
		for sound_id,data in pairs(sound_table or {}) do 
			local event_id = SoundDevice:string_to_id(sound_id)
			if event_id then 
				self._sounds.event_ids[event_id] = sound_id
			end
		end
	else
		self:log("ERROR: process_lookup_table(" .. tostring(wipe_clean) .. "): invalid lang [" .. tostring(lang) .. "]")
	end

end

function ClosedCaptions:reverse_lookup_event_id(event_id)
	return self._sounds.event_ids[event_id]
end

function ClosedCaptions:GetLanguage()
	local langnum = self.settings.language
	return (langnum and self.languages[langnum]) or "english"
end

function ClosedCaptions.angle_from(a,b,c,d) -- converts to angle with ranges (-180 , 180); for result range 0-360, do +180 to result
--mvector3.angle() is a big fat meanie zucchini;
	a = a or "nil"
	b = b or "nil"
	c = c or "nil"
	d = d or "nil"
	local function do_angle(x1,y1,x2,y2)
		local angle = 0
		local x = x2 - x1 --x diff
		local y = y2 - y1 --y diff
		if x ~= 0 then 
			angle = math.atan(y / x) % 180
			if y == 0 then 
				if x > 0 then 
					angle = 180 --right
				else
					angle = 0 --left 
				end
			elseif y > 0 then 
				angle = angle - 180
			end
		else
			if y > 0 then
				angle = 270 --up
			else
				angle = 90 --down
			end
		end
		
		return angle
	end
	local vectype = type(Vector3())
	if (type(a) == vectype) and (type(b) == vectype) then  --vector pos diff
		return do_angle(a.x,a.y,b.x,b.y)
	elseif (type(a) == "number") and (type(b) == "number") and (type(c) == "number") and (type(d) == "number") then --manual x/y pos diff
		return do_angle(a,b,c,d)
	else
		return
	end
end

function ClosedCaptions:ReadFromDebug() --reads existing "missing lines" into memory so that duplicate lines are not created

	local file = io.open(self._debug_list_path,"r")
	if file then
--		for k,line in pairs(file:read("*all")) do 
		for line in file:lines() do
			local sound_name,source_name
			local split_lines = string.split(line," : ") or {}
			sound_name = split_lines[1]
			source_name = split_lines[2]
			if sound_name and source_name then 
				self.debug_missing_lines[sound_name] = {[source_name] = true}
			end
		end
		file:close()
	end
	
end
--local file = io.open(ClosedCaptions._debug_list_path,"a+"); if file then for sound,source in pairs(ClosedCaptions.debug_missing_lines) do file:write(sound .. " : " .. source .. "\n") end end 
--used to convert FOUND_MISSING_LINES from versions 0.1 and earlier, since those versions did not have duplicate line protection
function ClosedCaptions:AddToDebug(sound_name,source_name)
	if not self.debug_mission_name then 
		local level_data = managers.job:current_level_data()
		local level_name = level_data and level_data.name_id
		self.debug_mission_name = level_name and managers.localization:text(level_name)
		
		--write the mission name once in the file, for easier replication later
		if self.debug_mission_name then 
			local file = io.open(self._debug_list_path,"a+")
			if file then
				file:write(tostring(level_name) .. " | " .. tostring(self.debug_mission_name) .. "\n")
				file:close()
			end
		end
	end
	
	sound_name = tostring(sound_name)
	source_name = tostring(source_name)
	if self.debug_missing_lines[sound_name] then 
		if self.debug_missing_lines[sound_name][source_name] then 
			--don't write to file
			return
		else
			self.debug_missing_lines[sound_name][source_name] = true
		end
	else
		self.debug_missing_lines[sound_name] = {
			[source_name] = true
		}
	end
	
	--append to list
	local file = io.open(self._debug_list_path,"a+")
	if file then
		file:write(sound_name .. " : " .. source_name .. "\n")
		file:close()
	end
end

function ClosedCaptions:Update(t,dt)
	local snd_dist_max_sq = 2000 * 2000
	local panel = self._panel
	local angle_threshold = 45
	local y = self.settings.box_y --starting position
	local n = 0
	local MAX_SUBTITLES = 16
	local player = managers.player:local_player()
	local viewport_cam = managers.viewport:get_current_camera()
	local player_aim = viewport_cam and viewport_cam:rotation():yaw() or 0
	local player_pos = viewport_cam and viewport_cam:position() or Vector3()
	local queued_remove = {}
	for i,item in ipairs(self.active_lines) do
		local is_hidden
		if item and item.panel and alive(item.panel) then 
			if n < MAX_SUBTITLES then 
				if t >= item.expire_t then 
					is_hidden = false
					table.insert(queued_remove,i)
--					self:remove_line(i)
				else
				--todo fadeout in x seconds, starting at duration-x seconds
					item.panel:set_alpha(((item.expire_t - t) / (item.expire_t - item.start_t) * 2) + 0.5)
					
					local source_position = (item.source and alive(item.source) and item.source:position()) or item.position
					if item.source ~= player then 
						if source_position then -- source_position and mvector3.distance_sq(player_pos,source_position) < snd_dist_max_sq then 
							local angle_to = ((ClosedCaptions.angle_from(player_pos,source_position) - player_aim + 270) % 360) - 180
							item.panel:child("arrow_left"):set_visible(angle_to > angle_threshold)
							item.panel:child("arrow_right"):set_visible(angle_to < -angle_threshold)
						else
							is_hidden = true
						end
					end
				end
			end
			
			if is_hidden == nil then 
				item.panel:show()
				n = n + 1
				item.panel:set_position((panel:w() - item.panel:w()) / 2,panel:h() - (y + 24))
				y = y + item.panel:h()
				
			elseif is_hidden == false then
			else
				item.panel:hide()
--				self:log("Hiding line " .. tostring(item and item.panel and item.panel:child("subtitle"):text()))
			end
		else
--			self:log("Removing line " .. tostring(item and item.panel and item.panel:child("subtitle"):text()))
			table.insert(queued_remove,i)
--			self:remove_line(i)
		end
	end
	for _,i in pairs(queued_remove) do 
		self:remove_line(i)
	end
end


function ClosedCaptions:GetTextColorByUnit(unit) --todo
	return self.color_data.generic
end

function ClosedCaptions:apply_macro(text,macros)
	local result = text
	for i,macro_data in pairs(macros or {}) do 
		local replacement = macro_data.replacement
		if replacement then 
			if macro_data.caps then 
				replacement = utf8.to_upper(replacement)
			end
			text = string.gsub(text,"@" .. i,replacement)
		end
	end
end

function ClosedCaptions.concat(...)
	local s
	for _,v in pairs({...}) do
		if s then 
			s = s .. ", " .. tostring(v)
		else
			s = tostring(v)
		end
	end
	return tostring(s or "")
end

function ClosedCaptions:LocalizeSourceName(source_name) --not used
	return source_name
end

function ClosedCaptions:add_line(sound_id,source,source_id,variant,prefix,expire_t)
	if expire_t == 0 or expire_t <= Application:time() then 
		expire_t = nil
	end
	if type(sound_id) == "number" then 
		sound_id = self:reverse_lookup_event_id(sound_id)
	end
	
	local text_color = Color.white
	local is_whisper_mode = managers.groupai:state():whisper_mode()
	local all_sounds_data = self:GetSoundTable()
	
	local source_name = tostring(variant)
	if variant == "criminal" then
		local color_id = managers.criminals:character_color_id_by_unit(source)
		text_color = (color_id and tweak_data.chat_colors[color_id]) or text_color
		local char_name = managers.criminals:character_name_by_unit(source)
		source_name = (char_name and managers.localization:text("menu_" .. tostring(char_name))) or source_name
	else
		if variant == "cop" then 
			source_name = self.unit_names[source:base()._tweak_table] or variant
--			source_name = source:base()._tweak_table
			text_color = Color(0.3,0.5,1)
		elseif variant == "civilian" then 
			source_name = self.unit_names[variant] or variant
			text_color = Color(0.3,1,0.3)
		elseif variant == "sfx" then 
		end
	end
	
	local text
	local subvariant_data
	local variations
	
	local sound_data = all_sounds_data.vo[sound_id]
	if not sound_data then 
		self:log(tostring(source_name) .. " said [" .. tostring(sound_id) .. "] - unknown sound_id in Closed Captions:add_line()",{color=Color.yellow})
		self:AddToDebug(sound_id,source_name)
		return
	else
		if sound_data.variants then 
			if sound_data.variants[variant] then 
				sound_data = sound_data.variants[variant]
				
				if sound_data.subvariants then 
					subvariant_data = sound_data.subvariants[prefix]
				end
				
			elseif not sound_data.text then
				--variants exist, but none for this unit's variant, so do nothing
				return
			end
		end
		
		
		local function get_random_variation(variations_tbl,is_recombinable)
			if is_recombinable then
				local variation_text
				for _,combinable_parts in pairs(variations_tbl) do 
					local new_text = combinable_parts[math.random(#combinable_parts)]
					if new_text ~= "" then 
						if variation_text then
							variation_text = variation_text .. " "
						else
							variation_text = ""
						end
						variation_text = variation_text .. new_text
					end
				end
				return variation_text
			else
				local num_variants = #variations_tbl
				if num_variants > 0 then 
					return variations_tbl[math.random(num_variants)]
				end
			end
		end
		
		subvariant_data = subvariant_data or sound_data
		
		variations = subvariant_data.line_variations or sound_data.line_variations
		if variations then 
			local is_recombinable = variations.recombinable
			
			if is_whisper_mode and variations.whisper_mode then --whisper_mode indicates the requirement that the heist is currently in stealth mode
				text = get_random_variation(variations.whisper_mode,is_recombinable)
			elseif not is_whisper_mode and variations.assault_mode then --assault_mode indicates the requirement that an assault is present
				text = get_random_variation(variations.assault_mode,is_recombinable)
			elseif variations.standard_mode then --no assault
				text = get_random_variation(variations.standard_mode,is_recombinable)
			elseif variations.any_mode then --no conditional requirements for these lines
				text = get_random_variation(variations.any_mode,is_recombinable)
			end
		end
		text = text or subvariant_data.text or sound_data.text
		
		if subvariant_data.disabled == true then 
			return
		elseif subvariant_data.disabled == "whisper_mode" then 
			if not is_whisper_mode then
				return
			end
		elseif subvariant_data.disabled == "local_player" then --todo split into separate filter
			if not (alive(source) and (source == managers.player:local_player()) ) then 
				return
			end
		end
	end
	
	source_name = sound_data.override_name or source_name
	
	local panel_text = tostring(source_name) .. ": " .. tostring(text)
	--if source type is unit, use unit key
	
	
	
	if not text then 
		self:log("Error: No valid text in add_line(): Unit " .. tostring(prefix) .. " [" .. tostring(variant) .. "] played " .. tostring(sound_id) .. " (" .. tostring(panel_text) .. ") - id is " .. tostring(source_id) .. ", expire_t is " .. tostring(expire_t),{color=Color.red})
	else
		self:log("add_line(): Unit " .. tostring(prefix) .. " [" .. tostring(variant) .. "] played " .. tostring(sound_id) .. " (" .. tostring(panel_text) .. ") - id is " .. tostring(source_id) .. ", expire_t is " .. tostring(expire_t),{color=text_color})
	end
	
	local priority = subvariant_data.priority or sound_data.priority or 1
	
	
	
	local t = Application:time()
	local panel,already_exists = self:_create_line(panel_text,tostring(source_id),text_color,source == managers.player:local_player())
	
	if panel and not already_exists then 
		local data = {
			source = source,
			sound_id = sound_id,
			priority = priority,
			panel = panel,
			start_t = t,
			expire_t = (subvariant_data.duration and (subvariant_data.duration + t)) or expire_t or (t + 3)
		}
		table.insert(self.active_lines,data)
	elseif not panel then 
		self:log("ERROR: ClosedCaptions:add_line(" .. ClosedCaptions.concat(sound_id,source,source_name) .. ") Could not create subtitle panel")
	elseif already_exists then 
		self:log("Panel: " .. tostring(panel_text) .. " Already exists")
	end
end

function ClosedCaptions:_create_line(text,panel_name,text_color,is_locationless)
	local panel = self._panel
	local item_panel = panel:child(panel_name)
	if item_panel and alive(item_panel) then 
		panel:remove(item_panel)
--		return item_panel,true
	end
	local hor_text_margin = 8 + self.settings.font_size
	local ver_text_margin = 8
	local w = self.settings.box_w
	local h = 100  --default
	item_panel = self._panel:panel({
		name = panel_name,
		y = panel:h(),
		w = w,
		h = 100,
		visible = true
	})
	local subtitle = item_panel:text({
		name = "subtitle",
		text = text,
		x = hor_text_margin / 2,
		y = ver_text_margin / 2,
--		w = item_panel:w(),
--		align = "center", --todo
		font = tweak_data.hud_players.ammo_font,
		font_size = self.settings.font_size,
		color = text_color,
		layer = 2,
		visible = true
	})

	local function check_text_spillover()
	--returns true if it is too large
		local s_x,s_y,s_w,s_h = subtitle:text_rect()
		return s_w >= (self.settings.box_w)--horizontal margin
	end

	--this multi-line spillover capability does not cover cases where a single word (where a "word" is any string of characters delimited by a single space character " ")
	--so uh. todo
	if check_text_spillover() then 
		local words = string.split(text," ")
		if #words > 0 then 
			local new_text
			for i = 1,#words,1 do 
				if words[i] and words[i] ~= "" then
	--			for i = #words,1,-1 do 
					if new_text then 
						new_text = new_text .. " "
					else
						new_text = ""
					end
					subtitle:set_text(new_text .. words[i])
					if check_text_spillover() then 
						new_text = new_text .. "\n"
					end
					new_text = new_text .. words[i]
				end
			end
		else
			--todo that thing i just said
		end		
	end
	
	
	local s_x,s_y,s_w,s_h = subtitle:text_rect()
	subtitle:set_w(s_w)
	subtitle:set_h(s_h)
	
	item_panel:set_size(s_w + hor_text_margin,s_h + ver_text_margin)

	local arrow_left = item_panel:text({
		name = "arrow_left",
		text = is_locationless and "" or "<",
		visible = is_locationless,
		x = 0,
		y = 0,
		align = "left",
		vertical = "center",
		font = tweak_data.hud_players.ammo_font,
		font_size = self.settings.font_size,
		color = text_color,
		layer = 2
	})
	
	local arrow_right = item_panel:text({
		name = "arrow_right",
		text = is_locationless and "" or ">",
		visible = is_locationless,
		x = 0,
		y = 0,
		align = "right",
		vertical = "center",
		font = tweak_data.hud_players.ammo_font,
		font_size = self.settings.font_size,
		color = text_color,
		layer = 2
	})
	
	local bg = item_panel:bitmap({
		name = "bg",
		layer = 1,
		texture = "guis/textures/pd2/hud_tabs",
		texture_rect = {84,0,44,32},
		w = item_panel:w(),
		h = item_panel:h(),
		alpha = 0.75
	})
	return item_panel
end

function ClosedCaptions:remove_line(i)
	local item = table.remove(self.active_lines,i)
	if item and item.panel and alive(item.panel) then 
		item.panel:parent():remove(item.panel)
	end
end

function ClosedCaptions:_remove_line(id,source) --unused; intended for a by-source reference/called from outside of direct reference 
end

--todo check menu options
if ClosedCaptions.LOG_ENABLED then 
	ClosedCaptions:ReadFromDebug()
end
ClosedCaptions:LoadSounds()

Hooks:Add("BaseNetworkSessionOnLoadComplete","ClosedCaptions_OnLoadComplete",callback(ClosedCaptions,ClosedCaptions,"init_captions"))
