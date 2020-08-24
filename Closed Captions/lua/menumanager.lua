--[[
BEFORE FIRST PUBLIC RELEASE:
	* (FINISH AND TEST) system for persistent looped sounds (eg. fwb bank manager) 
	* (TEST) system for sounds which act as "stop" flags for other sounds
		* juke box and other sounds shoud not be locationless
	* todo test in multiplayer
	
	* todo separate IsLoggingEnabled() check into "is logging missing lines enabled" and "is logging errors enabled"
	* todo conditional check for existing vanilla subtitles when logging from DialogManager (if i can even... do that)

OTHER STUFF WHICH IS IMPORTANT TOO, I GUESS:

* review "stops" category; otherwise, i guess i'd assume that since it's the same category as the sound it's stopping, it's allowed

* todo adjust horizontal position of subtitles
* todo option to align horizontal by left/right/center
* todo option to align vertical by top/bottom/center
* todo option for lifetime multiplier for captions

* additional category for nonspecial unit deaths
* ambient sfx category

* enable/disable priority system

* smooth movement for caption lines filling in unused space

* update process_special_vo() for line variations
	* implement apply_macro() as iterable functor 
	* todo generic text descriptions for each line
	* todo layer custom user settings over sound_data
		* todo documented custom template for those things
	* subtitles play during heist planning screen
		
ISSUES
	* "element" may appear as the source name, since some lines do not/should not have override_names "element: whistle"
	* teammate ai have no identifying characteristics/data except for criminal variant, so they can't use voiceline variants
	* hoxton lines do not play in hoxbreak once he's inside the car; todo figure out where they're playing from 
	* goat sfx do not play in goat sim day 1; todo figure out where they're playing from
	
	
	using a SoundSource object as a source_id may go wrong and fail to remove any other captions played from that sound source if the soundsource ever moves, because tostring includes its vector position
	cloaker static persists for 1000 seconds only, and MIGHT be interrupted by any other cloaker line, and is not interrupted by death
	some captions for sounds that are played via mission core ElementPlaySound may cut off prematurely
	Taxman lines may cut off prematurely (reason unknown)
--]]
--[[


mission dialogue to check/enter:
	- GO Bank phone calls?  especially the blackmailer fucker
	
	- diamond heist ceo dialogue/ceo son dialogue
	- rats day 3 c4 sound? rats d2 doublecross dialogue?
	- green bridge prisoner dialogue
	- hell's island bain dialogue/dentist dialogue
	- hoxton breakout hoxton dialogue? (DAY 2)
	
	- hotline miami commissar taunts
	- biker heist mechanic?
	- reservoir dogs mr purple dialogue?
	- scarface mansion sosa dialogue
	- breakin' feds garrett dialogue
	
	- meltdown sfx geiger counter click
	
	- brooklyn 10/10 charon?
	- Goat simulator d2 doctor?
	- necrocloaker dialogue on cursed kill room/prison nightmare?
	- beneath the mountain locke dialogue?
	- stealing xmas almir dialogue
	- Car shop manager chatter
	- border crossing...?
* aldstone lines?
* ecm sounds
* cam loop/ cam loop about to end
* breaking glass
--]]
--[[ Style guidelines:

[square brackets] convey a tone or action
(parentheses) aim to convey the meaning or description of the phrase foremost, not necessarily the exact wording

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
		
 logall(ClosedCaptions.active_lines[2])
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

ClosedCaptions.debug_missing_lines = {}
ClosedCaptions.debug_mission_name = nil --evaluated once per level, for debug tracking reasons

ClosedCaptions.character_prefixes = {
	a = "russian", --dallas 1 / 4
	b = "spanish", --chains 2
	c = "german", --wolf 3
	d = "old_hoxton", --hoxton 4 / 5
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
	city_swat = "Murkywater",
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
	drug_lord_boss_stealth = "Sosa" --stealth
}

ClosedCaptions.num_unnamed_caption = 0 --used for incrementing/generated non-conflicting panel ids if no name is provided

ClosedCaptions.color_data = {
	generic = Color(1,1,1),
	criminal1 = Color(0,1,1),
	neutral1 = Color(0,1,0),
	law1 = Color(1,0.8,0),
	mobster1 = Color(1,0.5,0),
	boss = Color(0.9,0.1,0),
	peer1 = Color.green,
	peer2 = Color.blue,
	peer3 = Color.red,
	peer4 = Color(1,1,0),
	l4d_bill = Color("1a821a"),
	l4d_witch = Color("df9ee3")
}

ClosedCaptions.settings = {
	master_enabled = true,
	logging_enabled = true,
	language = 1,
	caption_x = 0,
	caption_y = 200,
	caption_w = 600,
	captions_max_count = 5,
	caption_fadeout_time = 0.5, -- at this number of seconds remaining in the caption's lifetime, it fades out to alpha 0
	caption_font_size = 20,
	caption_randomization = true,
	caption_priority_enabled = true,
	category_heister_callouts = true,
	category_mission_dialogue = true,
	category_sfx = true,
	category_contractor_vo = true,
	category_enemy_callouts = 3,
	category_enemy_chatter = 2,
	category_enemy_taunts = true,
	category_spotted_enemy = true,
	category_killed_enemy = true,
	category_civilian_callouts = 3,
	DEFAULT_LINE_DURATION = 3 --only applies to lines that don't have an expire_t or duration override specified
}

ClosedCaptions.hud_data = {
}

ClosedCaptions.active_lines = { --tracks currently active captions
	--[[ ex: (out of date example)
	{
		sound_id = "butt",
		event_id = [generally, some inscrutable and very small number],
		source_unit = [Unit],
		start_t = 4
	}
	
	
	--]]
}

ClosedCaptions.languages = {
	"english"
}


function ClosedCaptions:log(...)
	if not self:IsLoggingEnabled() then 
		return
	end
	if Console then 
		return Console:Log(...)
	else
		return log(...)
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

function ClosedCaptions:IsCaptionCategoryEnabled(category)
	local category_names = {
		heister_callouts = "category_heister_callouts",
		mission_dialogue = "category_mission_dialogue",
		sfx = "category_sfx",
		contractor_vo = "category_contractor_vo",
		enemy_callouts = "category_enemy_callouts",
		enemy_chatter = "category_enemy_chatter",
		enemy_taunts = "category_enemy_taunts",
		spotted_enemy = "category_spotted_enemy",
		killed_enemy = "category_killed_enemy",
		civilian_callouts = "category_civilian_callouts"
	}
	if category_names[category] then 
		return self.settings[category_names[category]]
	elseif category and category ~= "UNKNOWN" then
		self:log("IsCaptionCategoryEnabled() Unknown category " .. tostring(category),{color=Color.yellow})
		return nil
	end
end

function ClosedCaptions:IsPriorityEnabled() 
	return self.settings.caption_priority_enabled
end

function ClosedCaptions:IsLineRandomizationEnabled()
	return self.settings.caption_randomization
end

function ClosedCaptions:LoadSounds(skip_processing)
	if SystemFS:exists( Application:nice_path( SavePath .. self._sound_data_filename, true )) then
		self:log("Closed Captions: Reading " .. self._sound_data_filename .. " override from user save")
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




--caution: here be dragons; lines related to creation or management of active displayed captions 

function ClosedCaptions:init_captions()
	self:LoadSounds()
	self._ws = managers.gui_data:create_fullscreen_workspace()
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
			if n < MAX_SUBTITLES then 
				if not item.loop_data and (t >= item.expire_t) then 
					--out of time
					is_hidden = false
					table.insert(queued_remove,i)
				else --not yet out of time
					if not item.loop_data then 
						--out of time 
						item.panel:set_alpha(math.min(1,(item.expire_t - t) / self.settings.caption_fadeout_time))
					end
					local source_position = (item.source and alive(item.source) and item.source:position()) or item.position
					
					if item.max_distance then 
						if mvector3.distance_sq(player_pos,source_position) >= math.pow(item.max_distance,2) then 
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
								is_hidden = not item.loop_visible
								item.expire_t = t + (item.duration or 5) + (item.loop_visible and item.loop_data.loop_interval or 0)
								--todo soft alpha fade for out of range
							end
						end
					end

					if not is_hidden then 
						if not item.is_locationless then 
							if source_position then
								local angle_to = ((ClosedCaptions.angle_from(player_pos,source_position) - player_aim + 270) % 360) - 180
								item.panel:child("arrow_left"):set_visible(angle_to > angle_threshold)
								item.panel:child("arrow_right"):set_visible(angle_to < -angle_threshold)
							else
								is_hidden = true
							end
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
				item.panel:show()
			else
				item.panel:hide()
			end
		else
			table.insert(queued_remove,i)
		end
	end
	for _,i in pairs(queued_remove) do 
		self:_remove_line(i)
	end
end


function ClosedCaptions:_create_caption_text(text,panel_name,text_color,is_locationless)
	local panel = self._panel
	if not alive(panel) then
		self:log("ERROR: no self._panel! THIS IS ACTUALLY VERY BAD",{color=Color.red})
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
function ClosedCaptions:add_line(sound_id,source,source_id,variant,prefix,expire_t,position) --evaluates line's data
	if not self:IsEnabled() then 
		return
	end
	if expire_t and (expire_t == 0 or expire_t <= Application:time()) then 
		expire_t = nil
	end
	if type(sound_id) == "number" then 
		sound_id = self:reverse_lookup_event_id(sound_id)
		if not sound_id then 
			self:log("No sound id found for number lookup!" .. tostring(sound_id),{color=Color.red})
		end
	end
	if not sound_id then 
		--invalid sound_id
		return
	end

	local text_color = Color.white
	local is_whisper_mode = managers.groupai:state():whisper_mode()
	local is_assault_mode = managers.groupai:state():get_assault_mode()
	
	local all_sounds_data = self:GetSoundTable()
	local subvariant
	local source_name = tostring(variant)
	
	if variant == "criminal" then
		subvariant = prefix
		local color_id = source and managers.criminals:character_color_id_by_unit(source)
		text_color = (color_id and tweak_data.chat_colors[color_id]) or text_color
		local char_name = source and managers.criminals:character_name_by_unit(source)
		source_name = (char_name and managers.localization:text("menu_" .. tostring(char_name))) or source_name
	else
		if variant == "cop" then 
			subvariant = source and source:base()._tweak_table
			source_name = subvariant and self.unit_names[subvariant] or variant
			
--			managers.groupai:state():is_enemy_special(source) then --do category filter here
			
--			source_name = source:base()._tweak_table
			text_color = self.color_data.law1 -- Color(0.3,0.5,1)
		elseif variant == "civilian" then 
			source_name = self.unit_names[variant] or variant
			text_color = self.color_data.neutral1 --Color(0.3,1,0.3)
		elseif variant == "gangster" then
			text_color = self.color_data.mobster1
		end
	end
	
	local text
	local subvariant_data
	local sound_data = all_sounds_data.vo[sound_id]
	if not sound_data then 
		self:log(tostring(source_name) .. " said [" .. tostring(sound_id) .. "] - unknown sound_id in Closed Captions:add_line()",{color=Color.yellow})
		self:AddToDebug(sound_id,source_name)
		return
	else
		if sound_data.variants then 
			if sound_data.variants[variant] then 
				sound_data = sound_data.variants[variant]
				if subvariant and sound_data.subvariants then 
					subvariant_data = sound_data.subvariants[subvariant]
				end
				
			elseif not sound_data.text then
				--variants exist, but none for this unit's variant, so do nothing
				self:log("No variant data exists for soundfile " .. tostring(sound_id) .. ", " .. tostring(variant) .. " subvariant " .. tostring(subvariant),{color=Color(1,0.3,0)})
				
				if sound_data.stops_line then
					-- fadeout specified target line, since the current line isn't replacing it
					self:find_line({sound_id = sound_data.stops_line},nil,"_end_line")
				end
				
				return
			end
		end
		
		

		
		subvariant_data = subvariant_data or sound_data
		local variations = subvariant_data.line_variations or sound_data.line_variations
		if variations and self:IsLineRandomizationEnabled() then 
		
			local function get_random_variation(variations_tbl,_is_recombinable)
				if _is_recombinable then
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
			
			local is_recombinable = variations.recombinable
			
			if is_whisper_mode and variations.whisper_mode then --whisper_mode indicates the requirement that the heist is currently in stealth mode
				text = get_random_variation(variations.whisper_mode,is_recombinable)
			elseif is_assault_mode and variations.assault_mode then --assault_mode indicates the requirement that an assault is present
				text = get_random_variation(variations.assault_mode,is_recombinable)
			elseif not is_whisper_mode and variations.assault_break_mode then --if otherwise loud
				text = get_random_variation(variations.assault_break_mode,is_recombinable)
			elseif variations.standard_mode then --no requirements
				text = get_random_variation(variations.standard_mode,is_recombinable)
			end
		end
		
		if subvariant_data.disabled == true then 
			return
		end
		
		text = text or subvariant_data.text or sound_data.text
	end
	
	local category = subvariant_data.category or sound_data.category	
	if category == "stops" then 
		--exempt from category check since it assumes that the line it's stopping is of the same category... duh
	else
		local category_allowed = self:IsCaptionCategoryEnabled(category)
		if category_allowed == false then 
			self:log("Category is not allowed! (id " .. tostring(sound_id) .. ", category " .. tostring(sound_data.category) .. ")")
			return
		elseif category_allowed == nil then 
			--if unknown or undefined category then log the sound (if logging is enabled)
			if not self:IsLoggingEnabled() then 
				return
			end
			self:log("Category is not set for this line! (id " .. tostring(sound_id) .. ", category " .. tostring(sound_data.category) .. ")")
		else
			if category_allowed == 1 then --always enabled
			elseif category_allowed == 2 then --stealth-only
				if not is_whisper_mode then 
	--				self:log("Category requires stealth! (id " .. tostring(sound_id) .. ", category " .. tostring(sound_data.category) .. ")")
					return
				end
			elseif category_allowed == 3 then --loud-only
				if is_whisper_mode then 
	--				self:log("Category requires loud! (id " .. tostring(sound_id) .. ", category " .. tostring(sound_data.category) .. ")")
					return
				end
			elseif category_allowed == 4 then --never allowed
	--			self:log("Category is disabled! (id " .. tostring(sound_id) .. ", category " .. tostring(sound_data.category) .. ")")
				return
			end
		end
	end
	
	source_name = sound_data.override_name or source_name
	text_color = sound_data.override_text_color or text_color
	
	local t = Application:time()
	local debug_duration = "nil"
	
	if subvariant_data.duration then 
		expire_t = subvariant_data.duration + t or expire_t
	
		debug_duration = string.format(subvariant_data.duration,"%.02f")
	elseif expire_t then 
		debug_duration = string.format(expire_t - t,"%0.2f")
	else
		expire_t = t + self.settings.DEFAULT_LINE_DURATION
	end
	
	if subvariant_data.override_source_id then 
		if subvariant_data.override_source_id == true then 
			source_id = nil
		else
			source_id = subvariant_data.override_source_id
		end
	end
	
	if not text then 
		if sound_data.stops_line then
			-- remove specified target line outright, since the current line is replacing it
			self:find_line({sound_id = sound_data.stops_line},nil,"_remove_line")
		end
				
		self:log("Error: No valid text in add_line() for sound_id " .. tostring(sound_id) .. " for variant: [" .. tostring(variant) .. "]. Subvariant " .. tostring(subvariant) .. " (" .. tostring(source_name) .. ") - id is " .. tostring(source_id) .. ", expire_t is " .. tostring(expire_t),{color=Color.red})
		return
	else
	
		if sound_data.stops_line then
			-- fadeout specified target line, since the current line isn't replacing it
			self:find_line({sound_id = sound_data.stops_line},nil,"_end_line")
		end
		
		self:log("add_line(): Subvariant " .. tostring(subvariant) .. " [" .. tostring(variant) .. "] played " .. tostring(sound_id) .. " (" .. tostring(source_name) .. ") - id is " .. tostring(source_id) .. ", expire_t is " .. tostring(expire_t) .. " (effective duration " .. debug_duration .. ")",{color=text_color})
	end
	
	local panel_text = tostring(source_name) .. ": " .. tostring(text)


	local data = {
		position = position,
		source = source,
		loop_data = sound_data.loop_data,
		loop_visible = true, --only used if loop_data is present
		loop_next_t = 0, --only used if loop_data is present
		sound_id = sound_id,
		priority = subvariant_data.priority or sound_data.priority or 1,
		max_distance = subvariant_data.max_distance or sound_data.max_distance,
		start_t = t,
		is_locationless = (source and source == managers.player:local_player()) or subvariant_data.is_locationless or sound_data.is_locationless,
		expire_t = expire_t
	}
	self:_add_line(panel_text,source_id,text_color,data)
end

function ClosedCaptions:_add_line(panel_text,source_id,text_color,data) --creates panel from data, adds line's data to data structure
	if not panel_text then 
		self:log("Error: No valid text in _add_line()",{color=Color.red})
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
				if not active_data.priority or (active_data.priority <= data.priority) then
					table.insert(self.active_lines,i,data)
					return
				end
			end
			table.insert(self.active_lines,data) -- at #self.active_lines ?
		else
			table.insert(self.active_lines,data)
		end
	elseif not panel then 
		self:log("REAL BAD ERROR: ClosedCaptions:_add_line(" .. ClosedCaptions.concat(sound_id,source,source_name) .. ") Could not create caption panel")
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

if ClosedCaptions:IsLoggingEnabled() then 
	ClosedCaptions:ReadFromDebug()
end

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
		ClosedCaptions:log("Language by index " .. tostring(language_num) .. " does not exist. Defaulting to English")
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
	
	MenuCallbackHandler.callback_closedcaptions_set_fadeout_time = function(self,item)
		ClosedCaptions.settings.caption_fadeout_time = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_font_size = function(self,item)
		ClosedCaptions.settings.caption_font_size = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_enable_logging = function(self,item)
		ClosedCaptions.settings.logging_enabled = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_enable_category_heister_callouts = function(self,item)
		ClosedCaptions.settings.category_heister_callouts = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_enable_category_mission_dialogue = function(self,item)
		ClosedCaptions.settings.category_mission_dialogue = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_enable_category_sfx = function(self,item)
		ClosedCaptions.settings.category_sfx = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_enable_category_civilian_callouts = function(self,item)
		ClosedCaptions.settings.category_civilian_callouts = tonumber(item:value())
	end
	
	MenuCallbackHandler.callback_closedcaptions_enable_category_contractor_vo = function(self,item)
		ClosedCaptions.settings.category_contractor_vo = item:value() == "on"
	end
	MenuCallbackHandler.callback_closedcaptions_enable_category_enemy_chatter = function(self,item)
		ClosedCaptions.settings.category_enemy_chatter = tonumber(item:value())
	end
	MenuCallbackHandler.callback_closedcaptions_enable_category_enemy_taunts = function(self,item)
		ClosedCaptions.settings.category_enemy_taunts = item:value() == "on"
	end
	MenuCallbackHandler.callback_closedcaptions_enable_category_enemy_callouts = function(self,item)
		ClosedCaptions.settings.category_enemy_callouts = tonumber(item:value())
	end
	MenuCallbackHandler.callback_closedcaptions_enable_category_spotted_enemy = function(self,item)
		ClosedCaptions.settings.category_spotted_enemy = item:value() == "on"
	end
	MenuCallbackHandler.callback_closedcaptions_enable_category_killed_enemy = function(self,item)
		ClosedCaptions.settings.category_killed_enemy = item:value() == "on"
	end
	
	MenuCallbackHandler.callback_closedcaptions_set_language = function(self,item)
		local lang_num = tonumber(item:value())
		
		local lang_id = ClosedCaptions.languages[lang_num]
		if lang_id then --check valid language before saving just any ol' int in there
			ClosedCaptions.settings.language = lang_num
		else
			ClosedCaptions:log("Error choosing language index: [" .. tostring(lang_num) .. "]; setting has not been changed",{color=Color.red})
		end
	end
	
	MenuCallbackHandler.callback_closedcaptions_close = function(this)
		--todo confirm save prompt
		ClosedCaptions:Save()
	end
	ClosedCaptions:Load()
	MenuHelper:LoadFromJsonFile(ClosedCaptions._mod_path .. "menu/options.txt", ClosedCaptions, ClosedCaptions.settings)
	
end)
