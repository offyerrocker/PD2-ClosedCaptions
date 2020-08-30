--[[
BEFORE FIRST PUBLIC RELEASE:
* test mp
* test ecm from other players


* fix priority
	

OTHER STUFF WHICH IS IMPORTANT TOO, I GUESS:
* go over priority values in sound_data

* get murkywater name via unit key comparison to lookup table

* todo conditional check for existing vanilla subtitles when logging from DialogManager (if i can even... do that)

* fallback values as well as override values
* stop_lines should probably remove from soundsource instead of unit

* better multiline support (see hoxton revenge tapes)

* todo option to align vertical from top or from bottom?
* todo option for lifetime multiplier for captions

* ambient sfx category

* smooth movement for caption lines filling in unused space

* todo layer custom user settings over sound_data
	* todo documented custom template for those things
		
ISSUES
	* "element" may appear as the source name, since some lines do not/should not have override_names "element: whistle"
	* teammate ai have no identifying characteristics/data except for criminal variant, so they can't use voiceline variants
	
	using a SoundSource object as a source_id may go wrong and fail to remove any other captions played from that sound source if the soundsource ever moves, because tostring includes its vector position. use soundsource:key() instead
	cloaker static MIGHT be interrupted by any other cloaker line, and is not always interrupted by death
	(test fix for below)
	Taxman lines may cut off prematurely (reason unknown)
--]]

--[[ priority data cheat sheet:
	priorities are roughly divided into tiers of 10,
	so that lines can be consistently ranked separately 
	between similar lines 
	
		--mission dialogue is priority 1-10 so that any longer text isn't constantly moving around the screen
		--vo is also usually around this range, depending
		
		- moment-to-moment important information like Inspire being used, Cloaker Charge, etc. are priority 11-20

		
		- most standard sfx are anywhere priority 21-40,
			but may vary widely since that's a broad category
			mission relevant sfx are usually around 37
			mission-VITAL sfx are obviously higher
			ammo pickups are 50-60ish
		- heister callouts are 40-50
			-"i need a medic bag" and similar are higher priority, 11-20
		- special kills and special spotting is 50-60
		- enemy callouts are 60-70
			cloaker spawn/idle are 40
			healed cop is 50
			surrender/converted cop is 40
		- enemy chatter is 90-100
		
--]]

--note: custom colors from settings MUST LOAD BEFORE LoadSounds() !!!

ClosedCaptions = ClosedCaptions or {
	_ws = nil,
	_panel = nil
}

ClosedCaptions._mod_path = ClosedCaptions._mod_path or ModPath
ClosedCaptions._save_path = ClosedCaptions._save_path or SavePath .. "closedcaptions_settings.txt"
ClosedCaptions._debug_list_path = SavePath .. "CLOSEDCAPTIONS_FOUND_MISSING_LINES.txt"

ClosedCaptions._sound_data_filename = "sound_data.lua"

ClosedCaptions.sounds = nil --"processed" sounds with appropriate data
ClosedCaptions._sounds = {} --these are later read through separate file for organization, called through LoadSounds()

ClosedCaptions.blah = {}

ClosedCaptions.debug_missing_lines = {}
ClosedCaptions.debug_mission_name = nil --evaluated once per level, for debug tracking reasons

ClosedCaptions.character_prefixes = {
	a = "russian", --dallas 4
	b = "spanish", --chains 1
	c = "german", --wolf 3
	d = "old_hoxton", --hoxton 5
	l = "american", --houston 2
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

--[[ speech_prefix_p1 data:
	
	--normal
	cop = "l", --as in lowercase "L"
	swat = "l", --same
	heavy_swat = "l", --same
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
	biker_escape = "Biker",
	mobster = "Mobster",
	mobster_boss = "Mobster Boss",
	biker_boss = "Biker Boss",
	chavez_boss = "Chavez",
	hector_boss = "Hector",
	hector_boss_no_armor = "Hector", --stealth
	bolivian = "Bolivian Gangster",
	bolivian_indoors = "Bolivian Security",
	drug_lord_boss = "Ernesto Sosa",
	drug_lord_boss_stealth = "Ernesto Sosa", --stealth
	ecm_jammer = "ECM" --not used since all ecm sounds have an override_name
}

ClosedCaptions.num_unnamed_caption = 0 --used for incrementing/generated non-conflicting panel ids if no name is provided

ClosedCaptions.color_data = {
	generic = Color(1,1,1),
	bain = Color(0.1,0.6,0.9),
	locke = Color(0.2,0.9,0.1),
	criminal1 = Color(0,1,1),
	neutral1 = Color(0,1,0),
	law1 = Color(1,0.8,0),
	mobster1 = Color(1,0.5,0),
	boss = Color(0.9,0.1,0),
	peer1 = Color.green,
	peer2 = Color.blue,
	peer3 = Color.red,
	peer4 = Color(1,1,0),
	contractor_vo = Color.white,
	l4d_bill = Color("1a821a"),
	l4d_witch = Color("df9ee3"),
	mrpurple = Color(0.1,0.3,1),
	mrblue = Color(0.6,0.1,1)
}

ClosedCaptions.category_names_to_setting_names = {
	mission_dialogue = "category_mission_dialogue",
	contractor_vo = "category_contractor_vo",
	sfx = "category_sfx",
	heister_dialogue = "category_heister_dialogue",
	heister_spots = "category_heister_spots",
	heister_kills = "category_heister_kills",
	civilian_dialogue = "category_civilian_dialogue",
	enemy_dialogue = "category_enemy_dialogue",
	enemy_chatter = "category_enemy_chatter",
	enemy_death = "category_enemy_death",
--	specialenemy_dialogue = "category_specialenemy_dialogue",
	specialenemy_chatter = "category_specialenemy_chatter",
	specialenemy_death = "category_specialenemy_death"
}

ClosedCaptions.caption_distance_presets = { --unused
	dialogue = 4500
}

ClosedCaptions.settings = { --default preset for settings; overridden by json mod save file
	master_enabled = true,
	logging_enabled = false,
	log_missing = false,
	log_ids = false,
	log_debug = false,
	log_bainunit_vo = false, --no menu option (intentional)
	language = 1,
	caption_x = 0,
	caption_y = 128,
	caption_w = 800,
	caption_margin_v = 8,
	captions_max_count = 5,
	caption_fadeout_time = 0.5, -- at this number of seconds remaining in the caption's lifetime, it fades out to alpha 0
	caption_font_size = 20,
	caption_allcaps_names = true,
	caption_variation_mode = 1,
	caption_priority_enabled = true,
	caption_empty_voicelines = true, -- show the caption if the line does not have an actual sound file recorded for it
	category_mission_dialogue = true,
	category_contractor_vo = true,
	category_sfx = true,
	category_heister_dialogue = true,
	category_heister_spots = true,
	category_heister_kills = true,
	category_civilian_dialogue = 2,
	category_enemy_dialogue = 1,
	category_enemy_chatter = 2,
	category_enemy_death = 2,
	category_specialenemy_chatter = true,
	category_specialenemy_death = true,
	DEFAULT_LINE_DURATION = 3 -- only applies to lines that don't have an expire_t or duration override specified
}

ClosedCaptions.hud_data = {
	--haha, you thought there would be data here, BUT IT WAS ME, DIO
}

ClosedCaptions.active_lines = { --tracks currently active captions
}

ClosedCaptions.languages = {
	"english"
}


function ClosedCaptions:log(...)
	if Console then 
		return Console:Log(...)
	else
		return log(...)
	end
end

function ClosedCaptions:log_line(sound_id,args)
	if not self:IsLoggingEnabled() then 
		return
	end
	if self:ShouldLogIDs() then 
		if Console then 
			self:log("Played sound [" .. tostring(sound_id) .. "] " .. ((type(args) == "table") and ClosedCaptions.concat(args) or ""),{color=args and args.color or Color("31cbff")})
		else
			self:log("Played sound [" .. tostring(sound_id) .. "] " .. ((type(args) == "table") and ClosedCaptions.concat(args) or ""))
		end
	end
end

function ClosedCaptions:log_debug(msg,color)
	if not self:IsLoggingEnabled() then 
		return
	end
	if self:ShouldLogDebug() then
		if Console then 
			self:log(msg,{color=color or Color.yellow})
		else
			self:log(msg)
		end
	end
end

function ClosedCaptions.angle_from(a,b,c,d) -- converts to angle with ranges (-180 , 180); for result range 0-360, do +180 to result, or modulo 360
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

function ClosedCaptions:IsEnabled()
	return self.settings.master_enabled
end

function ClosedCaptions:IsLoggingEnabled()
	return self.settings.logging_enabled
end

function ClosedCaptions:ShouldLogMissing()
	return self.settings.log_missing
end

function ClosedCaptions:ShouldLogBainUnitVO() --hidden option; dev only basically. i don't want people to report sounds that have subtitles, and bain's lines generally do.
	return self.settings.log_bainunit_vo
end

function ClosedCaptions:ShouldLogIDs()
	return self.settings.log_ids
end

function ClosedCaptions:ShouldLogDebug()
	return self.settings.log_debug
end

function ClosedCaptions:IsCaptionCategoryEnabled(category,is_special_enemy)
--since sometimes enemies and special enemies share death lines), this is written in this function instead of the sound_data, in the event that:
--    a) overkill adds a new special enemy (though unlikely) and i'm not around to adjust the sound_data;
-- or b) modders add a new special enemy (they already exist)
	if category == "enemy_death" then 
		if is_special_enemy then 
			category = "specialenemy_death"
		end
	elseif category == "enemy_chatter" then 
		if is_special_enemy then 
			category = "specialenemy_chatter"
		end
	end
	
	if category and self.category_names_to_setting_names[category] then 
		return self.settings[self.category_names_to_setting_names[category]]
	elseif category == "UNKNOWN" then
		return self:ShouldLogMissing()
	else
		self:log_debug("IsCaptionCategoryEnabled() Unknown category " .. tostring(category),{color=Color.yellow})
		return nil
	end
end

function ClosedCaptions:IsPriorityEnabled() 
	return self.settings.caption_priority_enabled
end

function ClosedCaptions:IsLineRandomizationEnabled()
	return self.settings.caption_variation_mode == 1
end

function ClosedCaptions:AllowEmptyVoicelines() 
	return self.settings.caption_empty_voicelines
end

function ClosedCaptions:UseCapitalNames()
	return self.settings.caption_allcaps_names
end

function ClosedCaptions:LoadSounds(skip_processing)
	if SystemFS:exists( Application:nice_path( SavePath .. self._sound_data_filename, true )) then
		self:log_debug("Closed Captions: Reading " .. self._sound_data_filename .. " override from user save")
		dofile(SavePath .. self._sound_data_filename)
	else
		dofile(self._mod_path .. "lua/" .. self._sound_data_filename)
	end	
	if not skip_processing then 
		self:process_special_vo()
		self:process_lookup_table()
	end
end

function ClosedCaptions:GetSoundTable()
	if self.sounds then 
		return self.sounds
	else
		self:LoadSounds(true)
		local lang = self:GetLanguage()
		local all_sounds_data = lang and self._sounds.languages[lang]
		if not all_sounds_data then 
			return
		end
		self.sounds = all_sounds_data
		return all_sounds_data
	end
end

function ClosedCaptions:process_special_vo()
	local sound_table = self:GetSoundTable()
	for sound_name_raw,vo_data in pairs(sound_table.vo_special) do 
		if vo_data.macro == "character_name" then 
			for prefix,char_name in pairs(self.character_prefixes) do 
				local data = table.deep_map_copy(vo_data)
				local character_name = managers.localization:text("menu_" .. char_name)

				data.text = string.gsub(vo_data.text,"$CHARACTER_NAME",utf8.to_upper(character_name))
				data.text = string.gsub(vo_data.text,"$character_name",character_name)
				--todo variations
				
				sound_table.vo[string.gsub(sound_name_raw,"@",prefix)] = data
	--			self:log_debug("Added item " .. string.gsub(sound_name_raw,"@",prefix) .. " with text " .. tostring(data.text))
			end
		end
	end
	sound_table.vo_special = {}
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
		self:log_debug("ERROR: process_lookup_table(" .. tostring(wipe_clean) .. "): invalid lang [" .. tostring(lang) .. "]")
	end

end

function ClosedCaptions:reverse_lookup_event_id(event_id)
	return self._sounds.event_ids[event_id]
end

function ClosedCaptions:apply_macro(text,macros) -- not used
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

function ClosedCaptions:GetLanguage()
	local langnum = self.settings.language
	return (langnum and self.languages[langnum]) or "english"
end

function ClosedCaptions:SetPanelX(x)
	if alive(self._panel) then 
		self._panel:set_x(x)
	end
end

function ClosedCaptions:HookSoundSource(soundsource,params) --not used
	local orig_post_event = soundsource.post_event
	if type(orig_post_event) == "function" then 
	
		function soundsource:post_event(sound_id,...)
			ClosedCaptions:add_line(sound_id,unpack(params))
			return orig_post_event(soundsource,sound_id,...)
		end
		--[[
		soundsource.post_event = function(sound_id,...)
			ClosedCaptions:add_line(sound_id,unpack(params))
			return orig_post_event(soundsource,sound_id,...)
		end
		--]]
	else
		self:log_debug("Error hooking SoundSource " .. tostring(soundsource) .. ": no valid source",{color=Color.red})
	end
end

function ClosedCaptions:UsePlayerName()
	return false
end

--caution: here be dragons; lines related to creation or management of active displayed captions 

function ClosedCaptions:init_captions()
	self:LoadSounds()
	self._ws = managers.gui_data:create_saferect_workspace() --managers.gui_data:create_fullscreen_workspace()
	self._panel = self._ws and self._ws:panel()
	self._panel:set_layer(1000)

	self:SetPanelX(self.settings.caption_x)
	if BeardLib then 
		BeardLib:AddUpdater("ClosedCaptions_update",callback(ClosedCaptions,ClosedCaptions,"Update"))
	elseif managers.hud then 
		managers.hud:add_updator("ClosedCaptions_update",callback(ClosedCaptions,ClosedCaptions,"Update"))
	end
end

function ClosedCaptions:Update(t,dt)
	local panel = self._panel
	local angle_threshold = 45
	local y = self.settings.caption_y --starting position
	local n = 0
	local MAX_SUBTITLES = self.settings.captions_max_count
	local player = managers.player:local_player()
	local viewport_cam = managers.viewport:get_current_camera()
	local player_aim = viewport_cam and viewport_cam:rotation():yaw() or 0
	local player_pos = viewport_cam and viewport_cam:position() or Vector3()
	local queued_remove = {}
	--todo sort by priority
	for i,item in ipairs(self.active_lines) do
		local is_hidden
		if item and item.panel and alive(item.panel) then 
			local source_position = (item.unit and alive(item.unit) and item.unit:position()) or item.position
			if n < MAX_SUBTITLES then 
				if not item.loop_data and (t >= item.expire_t) then 
					--out of time
					is_hidden = false
					table.insert(queued_remove,i)
				else --not yet out of time
					if not item.loop_data then 
						--out of time 
						if item.expire_t <= t then 
							is_hidden = true
						end
--						if item.expire_t - t <= self.settings.caption_fadeout_time then 
--							item.panel:set_alpha(math.min(1,(item.expire_t - t) / self.settings.caption_fadeout_time))
--						else
--							item.panel:set_alpha(math.min(item.pan,(item.expire_t - t) / self.settings.caption_fadeout_time))
--						end
					end
					
					if not is_hidden and item.max_distance then 
						if not alive(player) or (source_position and (mvector3.distance_sq(player_pos,source_position) >= math.pow(item.max_distance,2))) then 
							is_hidden = true
						end
					end
					
					if not is_hidden and item.loop_data and item.loop_data.loop_interval then 
						if item.loop_data.loop_interval == -1 then 
							--always visible (within the correct distance)
--							is_hidden = math.sin((10 * (t - item.start_t)) / (math.pi * item.loop_data.loop_interval)) > 0
							--todo reset start_t?
						else
							if t >= item.expire_t then
								item.loop_visible = not item.loop_visible
								if item.loop_data.use_random_loop_interval then 
									item.expire_t = t + (item.duration or 5) + (item.loop_data.loop_interval_min or 0) + math.random(item.loop_data.loop_interval)
								else
									item.expire_t = t + (item.duration or 5) + (item.loop_visible and item.loop_data.loop_interval or 0)
								end
							end
							is_hidden = is_hidden or not item.loop_visible
							--[[
							if not item.loop_visible then 
								if item.panel:visible() then 
									--do fadeout
								elseif item.panel:visible() and item.panel:alpha() <= 0 then  
									--
									if item.loop_data.use_random_variations then 
										--recreate panel with new text
										local panel_name = item.panel:name()
									
									end
								end
							end
							--]]
						end
					end

				end
			else
				--no space visually, so hide it
				item.panel:set_alpha(0)
				is_hidden = true
			end
			if not is_hidden then
				item.panel:show()
--			elseif is_hidden == false then
--				item.panel:show()
				if item.panel:alpha() < 1 then
					item.panel:set_alpha(math.min(item.panel:alpha() + (dt / self.settings.caption_fadeout_time),1))
				end
			elseif item.panel:visible() then 
				if item.panel:alpha() > 0 then  
					item.panel:set_alpha(math.max(item.panel:alpha() - (dt / self.settings.caption_fadeout_time),0))
					if item.panel:alpha() <= 0 then 
						if item.loop_data and item.loop_data.use_random_variations and item.variation_data then 
							local caption_name = item.panel:name()
							local caption_color = item.color
							local caption_text = item.name .. ": " ..  self:get_random_variation(item.variation_data,item.is_recombinable)
							self:log_debug(item.sound_id .. " caption text " .. caption_text)
							item.panel:parent():remove(item.panel)
							--if not  option fadein then panel set alpha 0
							item.panel = self:_create_caption_text(caption_text,caption_name,caption_color,item.is_recombinable)
--							self:log_debug("var data " .. tostring(item.sound_id) .. " : " .. tostring(item.variation_data))
						end
						item.panel:hide()
					end
				else
					item.panel:hide()
				end
			end
			
			if item.panel:visible() then  
				n = n + 1
				y = y + item.panel:h() + self.settings.caption_margin_v
				item.panel:set_position((panel:w() - item.panel:w()) / 2,panel:h() - (y))
				
				if not item.is_locationless then 
					if source_position then
						local angle_to = ((ClosedCaptions.angle_from(player_pos,source_position) - player_aim + 270) % 360) - 180
						item.panel:child("arrow_left"):set_visible(angle_to > angle_threshold)
						item.panel:child("arrow_right"):set_visible(angle_to < -angle_threshold)
					end
				end
			end			
		else
			--remove if no valid panel
			table.insert(queued_remove,i)
		end
		--
		
	end
	for _,i in pairs(queued_remove) do 
		self:_remove_line(i)
	end
end

function ClosedCaptions:get_random_variation(variations_tbl,is_recombinable)
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


function ClosedCaptions:_create_caption_text(text,panel_name,text_color,is_locationless)
	local panel = self._panel
	if not alive(panel) then
		self:log_debug("ERROR in _create_caption_text(): no self._panel!",Color.red)
		return
	end
	local item_panel = panel:child(panel_name)
	if item_panel and alive(item_panel) then 
		self:find_line({panel = item_panel},nil,"_remove_line")
--		panel:remove(item_panel)
	end
	local hor_text_margin = 8 + self.settings.caption_font_size
	local ver_text_margin = 8
	local w = self.settings.caption_w
	local h = 100  --default
	item_panel = panel:panel({
		name = panel_name,
		y = panel:h(),
		w = w,
		h = 100,
---		alpha = 0, --fades in;  TODO option for this
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
		font_size = self.settings.caption_font_size,
		color = text_color,
		layer = 2,
		alpha = 1,
		visible = true
	})

	local function check_text_spillover()
	--returns true if it is too large
		local s_x,s_y,s_w,s_h = subtitle:text_rect()
		return s_w >= (self.settings.caption_w)--horizontal margin
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
		font_size = self.settings.caption_font_size,
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
		font_size = self.settings.caption_font_size,
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

function ClosedCaptions:find_line(params,greedy_match,f)
--greedy_match requires all params to match instead of just one
	for i,data in pairs(self.active_lines) do 
		local is_it
		for j,k in pairs(params) do 
			if data[j] == k then 
				is_it = true
				if not greedy_match then 
					break
				end
			elseif data[j] and data[j] ~= k then 
				is_it = false
				break
			end
		end
		if is_it then 
			if f and (type(f) == "function") then 
				return i,f(i)
			elseif f and (type(ClosedCaptions[f]) == "function") then 
				return i,ClosedCaptions[f](self,i)
			else
				return i
			end
		end
	end
end

--[[
Given input parameters from playing a sound, finds the correct caption (if any) and creates a caption hud/text object to display, and adds it to the queue to update.
If no caption data exists for the given sound_id, logs it to a file (if logging is enabled) for later cataloguing.

sound_id: [string] event identifier
source: [Unit] unit whose sound() extension is responsible for playing the sound. Used to determine position for directional arrows.
source_id: [string] unique identifier used for the caption instance's panel. If left blank, is auto-generated with a numerical identifier.
variant: [string] used to identify the variant of unit saying the line, and thereby find the correct version of the caption to show.
prefix: [string] used to identify the subvariant of unit saying the line (eg. different heisters) and thereby find the correct version of the caption to show.
expire_t: [number] the time at which the caption will expire and disappear. usually returned by the sound() extension, but sometimes this number is not consistent with the audio file's actual duration, so it may be overridden on a per-line basis by the duration field in sound_data.
position: [Vector3] the location in 3d space in the world to play the line from. Used to determine position for directional arrows, in case there is no unit specified for this purpose (eg sound played from elements).
--]]

function ClosedCaptions:add_line(sound_id,unit,sound_source,position) --gets relevant data from the unit, or if there is no linked unit, from the sound_data of the specified sound_id
	if not self:IsEnabled() then 
		return
	end
	
	
	if not sound_id then 
		return
	end
	
	self:log_debug("Playing " .. tostring(sound_id) .. " from unit " .. tostring(unit) .. " with source " .. tostring(sound_source) .. " at position " .. tostring(position))
	
	local sound_table = self:GetSoundTable()
	
	if sound_table.disabled_sounds[sound_id] then
	
		return
	end
	
	local name,variant,text,color,is_locationless,is_recombinable
	
	local is_whisper_mode,is_assault_mode,is_special_enemy
	local tweak_table
	
	local source_id = tostring(sound_source:key())

--determine text color from unit (if supplied)
	if alive(unit) then 
		name = managers.criminals:character_name_by_unit(unit)
		if unit == managers.dialog._bain_unit then
			--is from vo
			if managers.dialog._narrator_prefix == "Play_ban_" then 
				name = "Bain"
				color = self.color_data.bain
			elseif managers.dialog._narrator_prefix == "Play_loc_" then 
				name = "Locke"
				color = self.color_data.locke
			end
			variant = "narrator"
		elseif name then --is criminal
			local switch = sound_source:get_switch()
			if switch and switch.robber then 
				variant = switch.robber
				if switch.int_ext == "first" then
					is_locationless = true
				end
			end
			name = managers.localization:text("menu_" .. tostring(name))
			local color_id = managers.criminals:character_color_id_by_unit(unit)
			color = (color_id and tweak_data.chat_colors[color_id]) --should this use cc's peer colors?
			local peer_id = managers.criminals:character_peer_id_by_unit(unit) 
			if peer_id then 
				if self:UsePlayerName() then 
					local peer = managers.network:session():peer(peer_id)
					name = peer and peer:name() or name
				end
			end
		elseif managers.enemy:is_enemy(unit) then 
			tweak_table = unit:base()._tweak_table
			if unit:sound() then 
				variant = unit:sound()._prefix
			end
			color = self.color_data.law1
			variant = variant or tweak_table
			name = tweak_table and self.unit_names[tweak_table]
			is_special_enemy = managers.groupai:state():is_enemy_special(unit)
			--should bosses be considered special enemies for the purposes of category checks?
			--(vanilla game does not consider hector/sosa to be special enemies)
		elseif managers.enemy:is_civilian(unit) then 
			if unit:sound() then 
				variant = unit:sound()._prefix
			end
			color = self.color_data.neutral1

			tweak_table = unit:base()._tweak_table
			name = tweak_table and self.unit_names[tweak_table]
			variant = variant or tweak_table
		end
	end



--determine sound_data variant to use from sound_id
	local function stop_line(_sound_data,f)
		if _sound_data.remove_by_source and _sound_data.stops_line then 
			self:find_line({sound_source = sound_source, unit = unit,sound_id = _sound_data.stops_line},_sound_data.greedy_match,f)
		elseif _sound_data.remove_by_source then 
			self:find_line({sound_source = sound_source, unit = unit},_sound_data.greedy_match,f)
		elseif _sound_data.stops_line then 
			self:find_line({sound_id = _sound_data.stops_line},_sound_data.greedy_match,f)
		end
	end	
	
	if managers.groupai and managers.groupai:state() then 
		is_whisper_mode = managers.groupai:state():whisper_mode()
		is_assault_mode = managers.groupai:state():get_assault_mode()
	end
	
	local sound_data = sound_table.vo[sound_id]
	local variant_data = sound_data
	if not sound_data then 
		if (variant ~= "narrator") or (self:ShouldLogBainUnitVO()) then 
			self:log_line(sound_id,{variant=variant,unit=unit,sound_source=sound_source,position=position})
			self:AddToDebug(tostring(variant) .. " : " .. sound_id)
		end
		sound_table.vo[sound_id] = {disabled = true} --temporarily set this sound_data so that the error will only appear once 
		return
	elseif sound_data.disabled then
		return
	end
	
	if variant and sound_data.variants and sound_data.variants[variant] then 
		variant_data = sound_data.variants[variant]
	elseif sound_data.text then 
		text = sound_data.text
	else
		self:log_debug("Error- sound " .. tostring(sound_id) .. " has no associated text for variant " .. tostring(variant) .. "!")
		return
	end
	
	local variations = variant_data.line_variations or sound_data.line_variations
	if variations and self:IsLineRandomizationEnabled() then 
		
		is_recombinable = variations.recombinable
		
		if is_whisper_mode and variations.whisper_mode then --whisper_mode indicates the requirement that the heist is currently in stealth mode
			variation_data = variations.whisper_mode
			text = self:get_random_variation(variations.whisper_mode,is_recombinable)
			
		elseif is_assault_mode and variations.assault_mode then --assault_mode indicates the requirement that an assault is present
			variation_data = variations.assault_mode
			text = self:get_random_variation(variations.assault_mode,is_recombinable)
			
		elseif not is_whisper_mode and variations.assault_break_mode then --if otherwise loud
			variation_data = variations.assault_break_mode
			text = self:get_random_variation(variations.assault_break_mode,is_recombinable)
			
		elseif variations.standard_mode then --no requirements
			variation_data = variations.standard_mode
			text = self:get_random_variation(variations.standard_mode,is_recombinable)
		end
	end
			
	if variant_data.disabled == "missing" then
		if not self:AllowEmptyVoicelines() then 
			return 
		end
	elseif variant_data.disabled == true then 
		return
	end

	--text = text or variant_data.text or sound_data.text

	local category = variant_data.category or sound_data.category	
	if category == "stops" then 
		--exempt from category check since it assumes that the line it's stopping is of the same category... duh
		stop_line(sound_data,"_remove_line")
	else
		local category_allowed = self:IsCaptionCategoryEnabled(category,is_special_enemy)
		
		if category_allowed == false then 
--			self:log_debug("Category is not allowed! (id " .. tostring(sound_id) .. ", category " .. tostring(sound_data.category) .. ")")
			return
		elseif category_allowed == nil then 
			--if unknown or undefined category then log the sound (if logging is enabled)
			if not self:ShouldLogMissing() then 
				return
			end
			self:log_debug("Category is not set for this line! (id " .. tostring(sound_id) .. ", category " .. tostring(sound_data.category) .. ")")
		else
			if category_allowed == 1 then --always enabled
			elseif category_allowed == 2 then --stealth-only
				if not is_whisper_mode then 
					return
				end
			elseif category_allowed == 3 then --loud-only
				if is_whisper_mode then 
					return
				end
			elseif category_allowed == 4 then --never allowed
				return
			end
		end
	end

	if variant_data.override_source_id then 
		if variant_data.override_source_id == true then 
			source_id = nil
		else
			source_id = variant_data.override_source_id
		end
	end
	
	if not text then 
		stop_line(sound_data,"_remove_line")
		--no text for this variant
		return
	else
		stop_line(sound_data,"_end_line")
	end
	
	
	name = variant_data.override_name or name or variant_data.fallback_name
	
	if self:UseCapitalNames() then 
		name = utf8.to_upper(name)
	end
	
	local t = Application:time()
	
	color = variant_data.override_color or color or variant_data.fallback_color
	
	local data = {
		name = name,
		text_color = color,
		position = position,
		unit = unit,
		sound_source = sound_source,
		loop_data = sound_data.loop_data,
		loop_visible = true, --only used if loop_data is present
		sound_id = sound_id,
		priority = variant_data.priority or sound_data.priority or 1,
		max_distance = variant_data.max_distance or sound_data.max_distance,
		variation_data = variation_data,
		is_recombinable = is_recombinable,
		start_t = t,
		is_locationless = is_locationless or variant_data.is_locationless or sound_data.is_locationless,
		expire_t = t + (variant_data.duration or self.settings.DEFAULT_LINE_DURATION)
	}
	
	self:_add_line(utf8.to_upper(name) .. ": " .. text,source_id,color,data)
end

function ClosedCaptions:_add_line(panel_text,source_id,text_color,data) --creates panel from data, adds line's data to data structure
	if not panel_text then 
		self:log_debug("Error: No valid text in _add_line()")
		return
	end
	if not source_id then --used as panel_id
		source_id = "UNNAMED_PANEL_" .. tostring(self.num_unnamed_caption)
	end

	
	data = data or {}
	local t = Application:time()
	data.start_t = data.start_t or t
	data.expire_t = data.expire_t or (t + 3)
	data.priority = data.priority or 1000
	if not (data.position or data.source) then 
		data.is_locationless = true
	end
	text_color = text_color or self.color_data.generic
	
	local panel = self:_create_caption_text(panel_text,source_id,text_color,data.is_locationless)
	if panel then 
		data.panel = panel
		--priority check
		if data.priority and self:IsPriorityEnabled() then 
			for i,active_data in ipairs(self.active_lines) do
			--lower number is more important
				if not active_data.priority or (active_data.priority >= data.priority) then
					table.insert(self.active_lines,i,data)
					return
				end
			end
			table.insert(self.active_lines,data) -- at #self.active_lines ?
		else
			table.insert(self.active_lines,data)
		end
	elseif not panel then 
		self:log_debug("ERROR: ClosedCaptions:_add_line(" .. ClosedCaptions.concat(sound_id,source,source_name) .. ") Could not create caption panel. SoundSource event was likely called before BaseNetworkSessionOnLoadComplete event CC initialization")
	end
end

function ClosedCaptions:remove_line(params,greedy_match)
	self:find_line(params,greedy_match,"_remove_line")
end
--table.remove(ClosedCaptions.active_lines,1)
function ClosedCaptions:_remove_line(i) --intended for a by-source reference/called from outside of direct reference 
	local item = table.remove(self.active_lines,i)
	if item and item.panel and alive(item.panel) then 
		item.panel:parent():remove(item.panel)
	end
	return item
end

function ClosedCaptions:end_line(params,greedy_match) --fades the line out
	self:find_line(params,greedy_match,function(i) self:_end_line(i) end)
end

function ClosedCaptions:_end_line(i) --fades the line out
	self.active_lines[i].expire_t = Application:time() + self.settings.caption_fadeout_time
	self.active_lines[i].loop_data = nil
end


--debug/logging missing lines functions here

function ClosedCaptions:ReadFromDebug() --reads existing "missing lines" into memory so that duplicate lines are not created

	local file = io.open(self._debug_list_path,"r")
	if file then
--		for k,line in pairs(file:read("*all")) do 
		for line in file:lines() do
			if string.find(line," : ") then 
				local spl = string.split(line," : ") or {}
				local source = spl[1]
				local sound_name = spl[2]
				if sound_name then 
					self.debug_missing_lines[sound_name] = true
				end
			end
		end
		file:close()
	end
	
end

--local file = io.open(ClosedCaptions._debug_list_path,"a+"); if file then for sound,source in pairs(ClosedCaptions.debug_missing_lines) do file:write(sound .. " : " .. source .. "\n") end end 
--used to convert FOUND_MISSING_LINES from versions 0.1 and earlier, since those versions did not have duplicate line protection

function ClosedCaptions:AddToDebug(sound_name)
	if managers.job and not self.debug_mission_name then 
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
	self.debug_missing_lines[sound_name] = true
	
	--append to list
	local file = io.open(self._debug_list_path,"a+")
	if file then
		file:write(sound_name .. "\n")
		file:close()
	end
end





function ClosedCaptions:Load()
	local file = io.open(self._save_path, "r")
	if file then
		for k, v in pairs(json.decode(file:read("*all"))) do
			self.settings[k] = v
		end
	else
		self:Save()
	end
end

function ClosedCaptions:Save()
	local file = io.open(self._save_path,"w+")
	if file then
		file:write(json.encode(self.settings))
		file:close()
	end
end

ClosedCaptions:ReadFromDebug()

Hooks:Add("BaseNetworkSessionOnLoadComplete","ClosedCaptions_OnLoadComplete",callback(ClosedCaptions,ClosedCaptions,"init_captions"))

Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_closedcaptions", function( loc )
	local language_num = ClosedCaptions.settings.language
	local language_name = ClosedCaptions.languages[language_num]
	if language_name then 
		if SystemFS:exists(Application:nice_path(ClosedCaptions._mod_path .. "localization/" .. tostring(language_name) .. ".txt",true)) then 
			loc:load_localization_file(ClosedCaptions._mod_path .. "localization/" .. tostring(language_name) .. ".txt")
			return
		end
	else
		ClosedCaptions:log_debug("Language by index " .. tostring(language_num) .. " does not exist. Defaulting to English")
	end
	
	loc:load_localization_file( ClosedCaptions._mod_path .. "localization/english.txt")
end)

Hooks:Add( "MenuManagerInitialize", "MenuManagerInitialize_closedcaptions", function(menu_manager)

	MenuCallbackHandler.callback_closedcaptions_master_enable = function(self,item)
		ClosedCaptions.settings.master_enabled = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_y = function(self,item)
		ClosedCaptions.settings.caption_y = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_clear_queue = function(self,item)
		for i,data in pairs(ClosedCaptions.active_lines) do 
			ClosedCaptions:_remove_line(i)
		end
		if alive(ClosedCaptions._panel) then 
			for _,child in pairs(ClosedCaptions._panel:children()) do 
				ClosedCaptions._panel:remove(child)
			end
		end
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_w = function(self,item)
		ClosedCaptions.settings.caption_w = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_x = function(self,item)
		local x = tonumber(item:value())
		ClosedCaptions.settings.caption_x = x
		ClosedCaptions:SetPanelX(x)
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_max = function(self,item)
		ClosedCaptions.settings.captions_max_count = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_vmargin = function(self,item)
		ClosedCaptions.settings.caption_margin_v = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_fadeout_time = function(self,item)
		ClosedCaptions.settings.caption_fadeout_time = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_font_size = function(self,item)
		ClosedCaptions.settings.caption_font_size = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_caption_order = function(self,item)
		ClosedCaptions.settings.caption_order = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_mission_dialogue = function(self,item)
		ClosedCaptions.settings.category_mission_dialogue = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_caption_variation_mode = function(self,item)
		ClosedCaptions.settings.caption_variation_mode = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_contractor_vo = function(self,item)
		ClosedCaptions.settings.category_contractor_vo = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_sfx = function(self,item)
		ClosedCaptions.settings.category_sfx = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_heister_dialogue = function(self,item)
		ClosedCaptions.settings.category_heister_dialogue = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_heister_spots = function(self,item)
		ClosedCaptions.settings.category_heister_spots = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_heister_kills = function(self,item)
		ClosedCaptions.settings.category_heister_kills = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_civilian_dialogue = function(self,item)
		ClosedCaptions.settings.category_civilian_dialogue = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_enemy_dialogue = function(self,item)
		ClosedCaptions.settings.category_enemy_dialogue = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_enemy_chatter = function(self,item)
		ClosedCaptions.settings.category_enemy_chatter = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_enemy_death = function(self,item)
		ClosedCaptions.settings.category_enemy_death = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_specialenemy_chatter = function(self,item)
		ClosedCaptions.settings.category_specialenemy_chatter = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_category_specialenemy_death = function(self,item)
		ClosedCaptions.settings.category_specialenemy_death = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_language = function(self,item)
		local lang_num = tonumber(item:value())
		
		local lang_id = ClosedCaptions.languages[lang_num]
		if lang_id then --check valid language before saving just any ol' int in there
			ClosedCaptions.settings.language = lang_num
		else
			ClosedCaptions:log_debug("Error choosing language index: [" .. tostring(lang_num) .. "]; setting has not been changed",{color=Color.red})
		end
	end
	
	MenuCallbackHandler.callback_closedcaptions_enable_logging_master = function(self,item)
		ClosedCaptions.settings.logging_enabled = item:value() == "on"
	end
	MenuCallbackHandler.callback_closedcaptions_enable_logging_missing = function(self,item)
		ClosedCaptions.settings.log_missing = item:value() == "on"
	end
	MenuCallbackHandler.callback_closedcaptions_enable_logging_ids = function(self,item)
		ClosedCaptions.settings.log_ids = item:value() == "on"
	end
	MenuCallbackHandler.callback_closedcaptions_enable_logging_debug = function(self,item)
		ClosedCaptions.settings.log_debug = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_close = function(this)
		--todo confirm save prompt
		ClosedCaptions:Save()
	end
	ClosedCaptions:Load()
	MenuHelper:LoadFromJsonFile(ClosedCaptions._mod_path .. "menu/options.txt", ClosedCaptions, ClosedCaptions.settings)
	
end)

if SoundSource then 

	Hooks:PostHook(SoundSource, "stop", "closedcaptions_soundsource_stop", function(self)
		ClosedCaptions:find_line({sound_source = self},"_end_line")
	end)
	
	Hooks:PostHook(SoundSource,"post_event","closedcaptions_soundsource_postevent",function(self,event,clbk,cookie,marker,event_type)
--		local linked_unit 
--		if SoundSource.get_link then 
--			linked_unit = SoundSource.get_link(self)
--			ClosedCaptions:log_debug("DEBUG PLAYED " .. tostring(event) .. " by soundsource " .. tostring(self) .. ", unit " .. tostring(linked_unit) .. ", event type " .. tostring(event_type))
--		end
		ClosedCaptions:add_line(event,SoundSource.get_link and SoundSource.get_link(self),self,SoundSource.get_position and SoundSource.get_position(self))
--[[	
		if not self._ccm_hook_data then 
			
		end
	
		
	function SoundSource:add_ccm_hook()
		self._ccm_hook_data = {}
	end
--]]
	end)
end