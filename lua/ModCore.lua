ClosedCaptions = { -- _G.ClosedCaptions or 
	_MOD_PATH = ModPath,
	_SETTINGS_PATH = SavePath .. "closedcaptions_settings.txt",
	_ASSETS_PATH = ModPath .. "assets/",
	_LOCALIZATION_DIRECTORY_PATH = ModPath .. "l10n/",
	_LOCALIZATION_FILE_NAME = "menu_strings.json", -- menu strings and main mod localization (nothing directly related to subtitles themselves)
	_SOUNDDATA_PATH = ModPath .. "data/",
	_MENU_PATH = ModPath .. "menu/options.json",
	_MANUAL_LOAD_ASSETS = {
		texture = {
			"guis/textures/closedcaptions_bgbox_atlas"
		}
	},
	languages = {},
	default_settings = {
		use_hide_hud_keybind = true, -- if true, will be hidden/shown along with the hud when the player uses the vanilla "Hide HUD" keybind
		
--		master_enabled = true,
--		logging_enabled = false,
--		log_missing = false,
--		log_ids = false,
--		log_debug = false,
--		log_bainunit_vo = false, --no menu option (intentional)
		language_name = "english",
		_language_index = 1,
--		caption_x = 0,
--		caption_y = 150,
--		caption_w = 800,
--		caption_margin_v = 8,
		captions_max_count = 5,
		caption_use_fadein = false,
		caption_fadeout_time = 0.5, -- at this number of seconds remaining in the caption's lifetime, it fades out to alpha 0
		caption_font_size = 16,
		caption_allcaps_names = true,
		caption_variation_mode = 2,
		caption_use_player_names = true,
		caption_empty_voicelines = true, -- show the caption if the line does not have an actual sound file recorded for it
		caption_separate_speaker_color = true,

		category_mission_dialogue = true,
		category_contractor_vo = true,
		category_sfx = true,
		category_ambient = false,
		category_heister_dialogue = true,
		category_heister_spots = true,
		category_heister_kills = true,
		category_civilian_dialogue = 2,
		category_enemy_dialogue = 1,
		category_enemy_chatter = 2,
		category_enemy_death = 2,
		category_specialenemy_chatter = true,
		category_specialenemy_death = true	
	},
	settings = {}, -- populated from default settings, then from user save json
	_ws = nil,
	_panel = nil,
	_soundsources = {
		--[[
			[SoundSource 0xd34db33f] = {
				events = {
					v51 = EventInstance
				}
			},
		--]]
	},
	_sound_data = {}, -- subtitle data, indexed by event_id
	_UNIT_NAMES = {}, -- populated on load from data file
	_NARRATOR_PREFIXES = {
		Play_ban_ = "menu_subtitlemod_speaker_cont_bain",
		Play_loc_ = "menu_subtitlemod_speaker_cont_locke"
	},
	_CATEGORY_NAMES_TO_SETTING_NAMES = {
		mission_dialogue = "category_mission_dialogue",
		contractor_vo = "category_contractor_vo",
		sfx = "category_sfx",
		ambient = "category_ambient",
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
	},
	_queue_active_subtitles = {}, -- the order to iterate current subtitles; ordered list
	_active_subtitles = {}, -- currently playing captions, with live data such as panel, vector3/locationless flag
	_libraries = {} -- for require()
}
for k,v in pairs(ClosedCaptions.default_settings) do ClosedCaptions.settings[k] = v end


-- ============================== Utils

function ClosedCaptions:Log(a,...)
	if _G.Log then
		return _G.Log("[ClosedCaptions]" .. tostring(a))
	end
end

function ClosedCaptions:Print(...)
	if _G.Print then
		return _G.Print(...)
	end
end

function ClosedCaptions:require(path) -- local only; relative path to mod folder
	if self._libraries[path] then
		return self._libraries[path]
	end
	
	local result,err = blt.vm.dofile(self._MOD_PATH .. path .. ".lua")
	if not result and err then
		Application:error(err)
		return
	end
	
	self._libraries[path] = result
	return result
end

-- finds the angle between two points, EXCLUDING z-distance (height); in other words, only two-dimensional (left/right) angle
-- converts to angle with ranges (-180 , 180); for result range 0-360, do +180 to result, or modulo 360
function ClosedCaptions.vec2_angle(a,b,c,d)
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

-- ============================== Settings getters (individual)
--settings getter; if true, uses player name for heisters (eg. "xX420692bOnGsLamMeR004Xx" instead of "Ethan")


--settings getter; enables caption priority system; otherwise it's a normal first-in first-out queue
function ClosedCaptions:IsPriorityEnabled() 
	return self.settings.caption_order == 1
end

--settings getter; allows caption variation (for lines that have them) if enabled; else, chooses more generic text description
function ClosedCaptions:IsLineRandomizationEnabled()
	return self.settings.caption_variation_mode == 1
end

--allows heister to play captions for queued lines that have no actual soundfile; no menu option at the moment; default enabled
function ClosedCaptions:AllowEmptyVoicelines()
	return self.settings.caption_empty_voicelines
end

--settings getter; if true, speaker names are in all capital letters
function ClosedCaptions:UseCapitalNames()
	return self.settings.caption_allcaps_names
end

--settings getter; if true, uses player name for heisters (eg. "xX420692bOnGsLamMeR004Xx" instead of "Ethan")
function ClosedCaptions:UsePlayerName()
	return self.settings.caption_use_player_names
end

--settings getter; if true, caption alpha starts at 0 and fades in to full opacity over a short duration
function ClosedCaptions:IsFadeinEnabled()
	return self.settings.caption_use_fadein
end

--checks enabled categories, compares them, and determines if current line is allowed by this setting
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
	
	if category and self._CATEGORY_NAMES_TO_SETTING_NAMES[category] then 
		return self.settings[self._CATEGORY_NAMES_TO_SETTING_NAMES[category]]
	elseif category == "UNKNOWN" then
		return false
	else
		--self:log_debug("IsCaptionCategoryEnabled() Unknown category " .. tostring(category),{color=Color.yellow})
		return nil
	end
end

function ClosedCaptions:GetColor(color_id)
	return Color.white
end

-- ============================== Misc settings management

function ClosedCaptions:change_setting(setting,new_value,skip_clbk)
	self.settings[setting] = new_value
	if not skip_clbk then
		self:clbk_on_settings_changed({
			setting = new_value
		})
	end
end

Hooks:Register("ClosedCaptions_OnSettingsChanged")
function ClosedCaptions:clbk_on_settings_changed(changed_settings)
	Hooks:Call("ClosedCaptions_OnSettingsChanged",self.settings,changed_settings)
end

function ClosedCaptions:get_setting(setting,fallback)
	if self.settings[setting] == nil then
		return fallback
	end
	return self.settings[setting]
end



-- ============================== Subtitle management

local AnimateLibrary = ClosedCaptions:require("lua/AnimateLibrary")

--initializes mod data;
--creates workspace to display captions on, registers the update method
function ClosedCaptions:setup()
--	self:LoadSounds()
	self._ws = managers.gui_data:create_saferect_workspace() --managers.gui_data:create_fullscreen_workspace()
	self._panel = self._ws and self._ws:panel()
	self._panel:set_layer(1000)

	self._BGBOX_PANEL_CONFIG = {alpha=0.5,valign="grow",halign="grow",tile_size=8}
	self._BGBOX_TILE_CONFIG = {color=Color(0,0,0)}
	
--	self:SetVisible(self:IsEnabled())
--	self:SetPanelX(self.settings.caption_x)
	--caption y setting is actually applied within eaach caption so don't do it here
	
--	if managers.hud then
--		managers.hud:add_updator("ClosedCaptions_update",callback(ClosedCaptions,ClosedCaptions,"update"))
--	end

	self:hook_soundsource()
end

local player_pos = Vector3()
local source_pos = Vector3()
function ClosedCaptions:update(t,dt)

	local viewport_cam = managers.viewport:get_current_camera()
	if not viewport_cam then return end
	
	local player_aim = viewport_cam:rotation():yaw()
	mvector3.set(player_pos,viewport_cam:position())
	local MAX_SUBTITLES = self.settings.captions_max_count
	
	local current_num = 0
	for i=#self._queue_active_subtitles,1,-1 do
		local id = self._queue_active_subtitles[i]
		local item = self._active_subtitles[id]
		local to_state = 1
		if item and alive(item.panel) then
			if current_num < MAX_SUBTITLES then
				if item.is_locationless then
					
				else
					local has_source
					-- determine if this caption is left/right of player viewport
					if alive(item.sound_source) then
						has_source = true
						mvector3.set(source_pos,item.sound_source:get_position())
					elseif alive(item.unit) then
						has_source = true
						mvector3.set(source_pos,item.unit:position())
					end
					
					
					if has_source then
						local angle_to = ((ClosedCaptions.vec2_angle(player_pos,source_pos) - player_aim + 270) % 360) - 180
						item.panel:child("arrow_left"):set_visible(angle_to > angle_threshold)
						item.panel:child("arrow_right"):set_visible(angle_to < -angle_threshold)
						
						if item.max_distance then 
							if source_pos and mvector3.distance_sq(player_pos,source_pos) >= item.max_distance*item.max_distance then 
								to_state = 2
							end
						end
					end
				end
			else
				to_state = 2
			end
			
			if item.state ~= to_state then
				if to_state == 1 then -- show
					item.panel:show()
					--local duration = self.settings.caption_fadeout_time
					--item.panel:animate(AnimateLibrary.animate_alpha_lerp,nil,duration,nil,1)
					
				elseif to_state == 2 then -- hiding
					item.panel:hide()
					--local duration = self.settings.caption_fadeout_time
					--item.panel:animate(AnimateLibrary.animate_alpha_lerp,function(o) o:hide() end,duration,nil,0)
				end
				item.state = to_state
			end
			
		else
			to_state = 3
		end
		
		if to_state == 1 or to_state == 2 then
			current_num = current_num + 1
		elseif to_state == 3 then
			if item then
				item.state = to_state
			end
			-- panel removed somehow; 
			-- remove immediately
			self:_remove_subtitle(id)
		end
	end
end
Hooks:Add("GameSetupUpdate","ClosedCaptions_Update",callback(ClosedCaptions,ClosedCaptions,"update"))

-- create panel from the given event data,
-- bootstrap the updater to handle frame updates for tasks like left/right audio position detection or fadeout animations
function ClosedCaptions:start_subtitle(event_id,unit,sound_source,position)
	local text,text_color,color_ranges,variation_data = self:get_subtitle_display_data(event_id,unit,sound_source,position)
	
	if not variation_data then
		return
	end

	local id = event_id .. "_" .. tostring(sound_source:key())
	local state_data = self:_get_subtitle(id)
	
	if state_data then
		if state_data.state == 3 then
			self:_remove_subtitle(id,true)
			state_data = nil
		elseif alive(state_data.panel) then
			state_data.panel:set_alpha(1)
			self:_set_subtitle_text(state_data.panel,text,color_ranges)
			return
		end
	end
	
	-- make panel
	local item_panel = self:_create_caption_text(text,text_color,color_ranges,id)
	
	local loop_data = variation_data.loop_data
	local is_recombinable = variation_data.is_recombinable
	local is_locationless = variation_data.is_locationless or unit == managers.player:local_player()
	local max_distance = variation_data.max_distance
	local priority = variation_data.priority or 0
	state_data = {
		panel = item_panel,
		state = 2, -- 1:visible, 2:hidden, 3:removing
		sound_source = sound_source,
		unit = unit,
		max_distance = max_distance,
		priority = priority,
		is_recombinable = is_recombinable,
		is_locationless = is_locationless,
		loop_data = loop_data
--		variation_data = variation_data,
	}

	
	self._active_subtitles[id] = state_data
	
	table.insert(self._queue_active_subtitles,id)
	table.sort(self._queue_active_subtitles,function(a,b)
		return self._active_subtitles[a].priority > self._active_subtitles[b].priority
	end)
end

-- todo return the caption data, not just the panel
function ClosedCaptions:get_subtitle(event_id,sound_source)
	
	local id = event_id .. "_" .. tostring(sound_source:key())
	
	return self:_get_subtitle(id)
end

function ClosedCaptions:_get_subtitle(id)
	return self._active_subtitles[id]
end

function ClosedCaptions:_create_caption_text(text,text_color,color_ranges,panel_name)
	local panel = self._panel
	if not alive(panel) then
		return
	end
	
	local item_panel = panel:child(panel_name)
	if item_panel and alive(item_panel) then 
		panel:remove(item_panel)
		item_panel = nil
	end
	
	local arrow_margin_hor = 4
	local margin_ver = 4
	local margin_hor = 4
	local parent_w = panel:w()
	
	item_panel = panel:panel({
		name = panel_name,
		w = nil,
		h = nil,
		alpha = 1,
		visible = false
	})
	local bgbox = self.CreateBGBox(item_panel,self._BGBOX_PANEL_CONFIG,self._BGBOX_TILE_CONFIG)
	
	local arrow_left = item_panel:text({
		name = "arrow_left",
		text = "<",
		visible = false,
		x = arrow_margin_hor,
		y = 0,
		align = "left",
		vertical = "center",
		valign = "grow",
		halign = "grow",
		font = tweak_data.hud_players.ammo_font,
		font_size = self.settings.caption_font_size,
		color = text_color,
		layer = 2
	})
	local arrow_right = item_panel:text({
		name = "arrow_right",
		text = ">",
		visible = false,
		x = -arrow_margin_hor,
		y = 0,
		align = "right",
		vertical = "center",
		valign = "grow",
		halign = "grow",
		font = tweak_data.hud_players.ammo_font,
		font_size = self.settings.caption_font_size,
		color = text_color,
		layer = 2
	})
	
	local txa,tya,twa,tha = arrow_left:text_rect()
	local txb,tyb,twb,thb = arrow_right:text_rect()
--	local margin_left = twa
--	local margin_right = twb
	
--	local line_h = self.settings.caption_font_size
--	local hor_text_margin,ver_text_margin = 2,2
	local subtitle = item_panel:text({
		name = "subtitle",
		text = text,
--		x = margin_hor/2,
--		y = margin_ver/2,
--		w = item_panel:w() - (margin_left + margin_right),
--		h = line_h,
		align = "center",
		vertical = "center", -- note: center doesn't work properly with custom fonts
		word_wrap = true,
		valign = "grow",
		halign = "grow",
		font = tweak_data.hud_players.ammo_font,
		font_size = self.settings.caption_font_size,
		color = text_color,
		layer = 2,
		alpha = 1,
		visible = true
	})
	if color_ranges then
		for i=1,#color_ranges,3 do 
			subtitle:set_range_color(color_ranges[i],color_ranges[i+1],color_ranges[i+2])
		end
	end
	local txc,tyc,twc,thc = subtitle:text_rect()
	
	
	-- can't be larger than 70% of screen width
	item_panel:set_w(math.min(arrow_margin_hor+arrow_margin_hor+twa+twb+twc,parent_w * 0.7) + margin_hor)
	
	local num_lines = subtitle:number_of_lines()
	local line_height = subtitle:line_height()
	thc = num_lines * line_height
	item_panel:set_h(thc + margin_ver)
	
	-- center subtitle
	item_panel:set_x((parent_w - item_panel:w()) / 2)
	
	Hooks:Add("ClosedCaptions_OnSettingsChanged","cc_check_caption_settings_" .. tostring(panel_name),function(settings,changed_settings)
		if table.contains(changed_settings,"caption_font_size") then
			-- todo recreate?
		--[[
			local caption = self:get_caption(panel_name)
			if alive(caption) then
				local font_size = settings.caption_font_size
				caption:child("subtitle"):set_font_size(font_size)
				caption:child("arrow_left"):set_font_size(font_size)
				caption:child("arrow_right"):set_font_size(font_size)
			end
		--]]
		end
	end)
	
	return item_panel
end

function ClosedCaptions:_set_subtitle_text(item_panel,text,color_ranges)
	local subtitle = item_panel:child("subtitle")
	
	local parent_w = self._panel:w()
	local margin_ver = 4
	local margin_hor = 4
	local arrow_margin_hor = 4
	subtitle:set_text(text)
	subtitle:clear_range_color()
	
	local txa,tya,twa,tha = item_panel:child("arrow_left"):text_rect()
	local txb,tyb,twb,thb = item_panel:child("arrow_right"):text_rect()
	if color_ranges then
		for i=1,#color_ranges,3 do 
			subtitle:set_range_color(color_ranges[i],color_ranges[i+1],color_ranges[i+2])
		end
	end
	local txc,tyc,twc,thc = subtitle:text_rect()
	
	item_panel:set_w(math.min(arrow_margin_hor+arrow_margin_hor+twa+twb+twc,parent_w * 0.7) + margin_hor)
	
	local num_lines = subtitle:number_of_lines()
	local line_height = subtitle:line_height()
	thc = num_lines * line_height
	item_panel:set_h(thc + margin_ver)
	
	-- center subtitle
	item_panel:set_x((parent_w - item_panel:w()) / 2)
end

function ClosedCaptions:remove_subtitle(event_id,sound_source,instant)
	self:_remove_subtitle(event_id .. "_" .. tostring(sound_source:key()),instant)
end

function ClosedCaptions:_remove_subtitle(id,instant)
	local item = self._active_subtitles[id]
	
	if item then
		local item_panel = item.panel
		if alive(item_panel) then
			if instant then
				self._panel:remove(item_panel)
			else
				local duration = self.settings.caption_fadeout_time
				item_panel:animate(AnimateLibrary.animate_alpha_lerp,function(o)
					self._panel:remove(item_panel)
				end,duration,nil,0)
			end
		end
	end
	
	self._active_subtitles[id] = nil
	
	Hooks:Remove("ClosedCaptions_OnSettingsChanged","cc_check_caption_settings_" .. tostring(id))
	
	for i,_id in pairs(self._queue_active_subtitles) do 
		if _id == id then
			table.remove(self._queue_active_subtitles,i)
			return
		end
	end
end

function ClosedCaptions:get_subtitle_display_data(event_id,unit,sound_source,position)
	
	local sound_data = self._sound_data.vo[event_id]
	if not sound_data then
		return
	end
	
	local text
	local variation_data = sound_data
	if sound_data.voice_variations and sound_data.voice_variations[voice] then
		variation_data = sound_data
	end
	
	local variations = variation_data.line_variations or sound_data.line_variations
	if variations and self:IsLineRandomizationEnabled() then 
		
		local is_recombinable = variations.recombinable
		
		local is_whisper_mode = managers.groupai:state():whisper_mode()
		local is_assault_mode = managers.groupai:state():get_assault_mode()
		if is_whisper_mode and variations.whisper_mode then --whisper_mode indicates the requirement that the heist is currently in stealth mode
--			variation_data = variations.whisper_mode
			text = ClosedCaptions.get_random_variation(variations.whisper_mode,is_recombinable)
		elseif is_assault_mode and variations.assault_mode then --assault_mode indicates the requirement that an assault is present
--			variation_data = variations.assault_mode
			text = ClosedCaptions.get_random_variation(variations.assault_mode,is_recombinable)
		elseif variations.standard_mode then --no requirements
--			variation_data = variations.standard_mode
			text = ClosedCaptions.get_random_variation(variations.standard_mode,is_recombinable)
		end
	end
	
	local name,variant,color,is_locationless,tweak_table
	
	-- get speaker string
	if alive(unit) then 
		if unit == managers.dialog._bain_unit then
			--is from vo
			local narrator_prefix = managers.dialog._narrator_prefix
			if self._NARRATOR_PREFIXES[narrator_prefix] then
				name = self._NARRATOR_PREFIXES[narrator_prefix]
			end
			variant = "narrator"
		else
			name = managers.criminals:character_name_by_unit(unit)
			if name then --is criminal
				local switch = sound_source:get_switch()
				if switch and switch.robber then 
					variant = switch.robber
					if switch.int_ext == "first" then
						is_locationless = true
					end
				end
				name = managers.localization:text("menu_" .. tostring(name))
				local color_id = managers.criminals:character_color_id_by_unit(unit)
				color = color_id and tweak_data.chat_colors[color_id] --should this use cc's peer colors?
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
				color = self:GetColor("law1")
				variant = variant or tweak_table
				name = tweak_table and self._UNIT_NAMES[tweak_table]
				is_special_enemy = managers.groupai:state():is_enemy_special(unit)
				--should bosses be considered special enemies for the purposes of category checks?
				--(vanilla game does not consider hector/sosa to be special enemies)
			elseif managers.enemy:is_civilian(unit) then 
				if unit:sound() then 
					variant = unit:sound()._prefix
				end
				color = self:GetColor("neutral1")

				tweak_table = unit:base()._tweak_table
				name = tweak_table and self._UNIT_NAMES[tweak_table]
				variant = variant or tweak_table
			end
		end
	end
	
	-- get subtitle text
	if not sound_data then 
		self._sound_data.vo[event_id] = {disabled = true} --temporarily set this sound_data so that the error will only appear once 
		return
	elseif sound_data.disabled then
		return
	end
	
	if variant and sound_data.variants and sound_data.variants[variant] then 
		variation_data = sound_data.variants[variant]
	elseif sound_data.text then 
		text = sound_data.text
	else
		if sound_data.category == "stops" then 
			return
		else
			self:Log("Error- sound " .. tostring(event_id) .. " has no associated text for variant " .. tostring(variant) .. "!")
		end
		return
	end
	
	if variation_data.disabled then
		return
	end
	
	text = text or variation_data.text or sound_data.text


	local category = variation_data.category or sound_data.category	
	if category == "stops" then 
		return
	else
		local category_allowed = self:IsCaptionCategoryEnabled(category,is_special_enemy)
		
		if category_allowed == false then 
--			self:log_debug("Category is not allowed! (id " .. tostring(event_id) .. ", category " .. tostring(sound_data.category) .. ")")
			return
		elseif category_allowed == nil then 
			--if unknown or undefined category then log the sound (if logging is enabled)
			if not self:ShouldLogMissing() then 
				return
			end
--			self:log_debug("Category is not set for this line! (id " .. tostring(event_id) .. ", category " .. tostring(sound_data.category) .. ")")
		else
			if category_allowed == 1 then --always enabled
			elseif category_allowed == 2 then --stealth-only
				if not is_whisper_mode then 
					return
				end
			elseif category_allowed == 3 then --loud-only
				if not is_assault_mode then 
					return
				end
			elseif category_allowed == 4 then --never allowed
				return
			end
		end
	end
	
	if not text then
		return
	end
	
--	self:Print("Playing " .. tostring(event_id) .. " from unit " .. tostring(unit) .. " variant " .. tostring(variant) .. " with source " .. tostring(sound_source) .. " at position " .. tostring(position))
	
	name = variation_data.override_name or name or variation_data.fallback_name
	
	
	if self:UseCapitalNames() then 
		name = utf8.to_upper(name)
	end
	
	--local t = Application:time()
	
	name = name or "???"
	
	local DIFFERENT_COLOR_TEXT = self.settings.caption_separate_speaker_color
	
	local speaker_str = name
	local speaker_color = color
	local text_color = color
	if DIFFERENT_COLOR_TEXT then
		text_color = Color.white
	end
	
	local speaker_len = utf8.len(speaker_str)
	local text_len = utf8.len(text)
	
	local color_ranges = {
		0,
		speaker_len+1,
		speaker_color,
		
		speaker_len+1,
		speaker_len+text_len+2,
		text_color
	}
	
	--foo1 = sound_data
	--foo2 = variation_data
	
	local str = string.format("%s: %s",speaker_str,text)
	return str,text_color,color_ranges,variation_data
end

--chooses a random caption variation from the sound_table
-- todo skip_chance for each part?
function ClosedCaptions.get_random_variation(variations_tbl,is_recombinable)
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

function ClosedCaptions:HideCaptionsPanel()
	if alive(self._panel) then
		self._panel:hide()
	end
end

function ClosedCaptions:ShowCaptionsPanel()
	if alive(self._panel) then
		self._panel:show()
	end
end

function ClosedCaptions.CreateBGBox(parent,bgbox_config,panel_config,child_config)
	local w = (bgbox_config and bgbox_config.w) or parent:w()
	local h = (bgbox_config and bgbox_config.h) or parent:h()
	local panel = parent:panel({
		name = "bgbox",
		w = w,
		h = h,
		alpha = 0.5,
		layer = -1
	})
	if panel_config then
		panel:configure(panel_config)
	end
	
	--local tile_w_scale = bgbox_config and (bgbox_config.w_scale or bgbox_config.scale) or 1
	--local tile_h_scale = bgbox_config and (bgbox_config.h_scale or bgbox_config.scale) or 1
	
	-- individual tile sizes in texture file
	local RAW_BITMAP_W = 16
	local RAW_BITMAP_H = 16
	
	local tile_w = bgbox_config and (bgbox_config.w or bgbox_config.tile_size) or RAW_BITMAP_W -- or (tile_w_scale * RAW_BITMAP_W)
	local tile_h = bgbox_config and (bgbox_config.h or bgbox_config.tile_size) or RAW_BITMAP_H -- or (tile_h_scale * RAW_BITMAP_H)
	
	local hor_size = w - (tile_w + tile_w)
	local ver_size = h - (tile_h + tile_h)
	
	local color = Color.black
	local texture = "guis/textures/closedcaptions_bgbox_atlas"
	local corner_topleft = panel:bitmap({
		name = "corner_topleft",
		x = 0,
		y = 0,
		w = tile_w,
		h = tile_h,
		valign = "top",
		halign = "left",
		color = color,
		texture = texture,
		texture_rect = {
			0,0,
			RAW_BITMAP_W,RAW_BITMAP_H
		}
	})
	local corner_bottomleft = panel:bitmap({
		name = "corner_bottomleft",
		x = 0,
		y = h - tile_h,
		w = tile_w,
		h = tile_h,
		valign = "bottom",
		halign = "left",
		color = color,
		texture = texture,
		texture_rect = {
			0,RAW_BITMAP_H,
			RAW_BITMAP_W,-RAW_BITMAP_H
		}
	})
	local corner_topright = panel:bitmap({
		name = "corner_topright",
		x = w - tile_w,
		y = 0,
		w = tile_w,
		h = tile_h,
		valign = "top",
		halign = "right",
		color = color,
		texture = texture,
		texture_rect = {
			RAW_BITMAP_W,0,
			-RAW_BITMAP_W,RAW_BITMAP_H
		}
	})
	local corner_bottomright = panel:bitmap({
		name = "corner_bottomright",
		x = w - tile_w,
		y = h - tile_h,
		w = tile_w,
		h = tile_h,
		valign = "bottom",
		halign = "right",
		color = color,
		texture = texture,
		texture_rect = {
			RAW_BITMAP_W,RAW_BITMAP_H,
			-RAW_BITMAP_W,-RAW_BITMAP_H
		}
	})
	local edge_left = panel:bitmap({
		name = "edge_left",
		x = 0,
		y = tile_h,
		w = tile_w,
		h = ver_size,
		valign = "grow",
		halign = "left",
		color = color,
		texture = texture,
		texture_rect = {
			0,RAW_BITMAP_H,
			RAW_BITMAP_W,RAW_BITMAP_H
		}
	})
	local edge_right = panel:bitmap({
		name = "edge_right",
		x = w - tile_w,
		y = tile_h,
		w = tile_w,
		h = ver_size,
		valign = "grow",
		halign = "right",
		texture = texture,
		color = color,
		texture_rect = {
			RAW_BITMAP_W,RAW_BITMAP_H,
			-RAW_BITMAP_W,RAW_BITMAP_H
		}
	})
	local edge_top = panel:bitmap({
		name = "edge_top",
		x = tile_w,
		y = 0,
		w = hor_size,
		h = tile_h,
		valign = "top",
		halign = "grow",
		color = color,
		texture = texture,
		texture_rect = {
			RAW_BITMAP_W,0,
			RAW_BITMAP_W,RAW_BITMAP_H
		}
	})
	local edge_bottom = panel:bitmap({
		name = "edge_bottom",
		x = tile_w,
		y = h - tile_h,
		w = hor_size,
		h = tile_h,
		valign = "bottom",
		halign = "grow",
		color = color,
		texture = texture,
		texture_rect = {
			RAW_BITMAP_W,RAW_BITMAP_H,
			RAW_BITMAP_W,-RAW_BITMAP_H
		}
	})
	
	local center = panel:bitmap({
		name = "center",
		x = tile_w,
		y = tile_h,
		w = hor_size,
		h = ver_size,
		valign = "grow",
		halign = "grow",
		color = color,
		texture = texture,
		texture_rect = {
			RAW_BITMAP_W,RAW_BITMAP_H,
			RAW_BITMAP_W,-RAW_BITMAP_H
		}
	})
	
	if child_config then
		corner_topleft:configure(child_config)
		corner_bottomleft:configure(child_config)
		corner_topright:configure(child_config)
		corner_bottomright:configure(child_config)
		edge_left:configure(child_config)
		edge_right:configure(child_config)
		edge_top:configure(child_config)
		edge_bottom:configure(child_config)
		center:configure(child_config)
	end
	
	return panel
end


-- ============================== SoundSource management

function ClosedCaptions:hook_soundsource()
	
	-- hook soundsource methods	
	if BeardLib then
		-- beardlib compat
		
		SoundSource._post_event = SoundSource._post_event or SoundSource.post_event
		function SoundSource:post_event(event,clbk,cookie,marker,event_type,...)
--			ClosedCaptions:Print("Cookie",cookie)
			if clbk then
				local old_clbk = clbk
				local new_clbk = function(...)
					ClosedCaptions._clbk_soundsource_post_event(event,...)
					return old_clbk(...)
				end
				clbk = new_clbk
			else
				clbk = function(...)
					ClosedCaptions._clbk_soundsource_post_event(event,...)
				end
			end
			
			local data = self:get_data()

			if data.pre_hooks then
				for _, hook in pairs(data.pre_hooks) do
					if hook.func(event, clbk, cookie, marker, event_type,...) == true then
						return
					end
				end
			end

			event = BeardLib.Managers.Sound:Redirect(event, self:get_prefixes()) or event

			local result = BeardLib.Managers.Sound:CheckSoundID(event, self, clbk, cookie)
			if not result then
				result = self:_post_event(event, clbk, cookie, marker, event_type,...)
			end

			if data.hooks then
				for _, hook in pairs(data.hooks) do
					-- original beardlib version only passes event, clbk, cookie
					if hook.func(event, clbk, cookie) == true then --if hook.func(event,clbk,cookie, marker, event_type,...) == true then
						break
					end
				end
			end
			
			ClosedCaptions:register_soundsource_postevent(self,event,cookie,result)
			
			return result
			
		end
		
	else
		SoundSource._post_event = Hooks:GetFunction(SoundSource,"post_event")
		Hooks:OverrideFunction(SoundSource,"post_event",function(self,event,clbk,cookie,marker,event_type,...)
			if clbk then
				local old_clbk = clbk
				local new_clbk = function(...)
					ClosedCaptions._clbk_soundsource_post_event(event,...)
					old_clbk(...)
				end
				clbk = new_clbk
			else
				clbk = function(...)
					ClosedCaptions._clbk_soundsource_post_event(event,...)
				end
			end
			
			
			local result = {self:_post_event(event, clbk, cookie, marker, event_type,...)}
			ClosedCaptions:register_soundsource_postevent(self,event,cookie,result and result[1])
			return unpack(result)
		end)
	end
	
	
	-- used to prematurely stop sounds
	Hooks:PostHook(EventInstance,"stop","closedcaptions_eventinstance_stop",function(self,...)
		-- todo better lookup than bruteforce
		for ss_key,data in pairs(ClosedCaptions._soundsources) do 
			for event_id,event_instance in pairs(data.events) do
				if event_instance == event_instance then
					-- interrupt this sound
					ClosedCaptions:clbk_stop_postevent(event_id,data.source,nil,true)
					break
				end
			end
		end
	end)

end

function ClosedCaptions:clbk_stop_postevent(event_id,sound_source,unit,instant)
	if not event_id then return end
	
	
	local key = tostring(sound_source:key())
	local data = self._soundsources[key]
	if data then 
		self:Print("Sound stopped:",event_id,"sound_source",sound_source,"unit",unit)
		
		if data.events[event_id] then
			data.events[event_id] = nil
		end
		
		local is_empty = true
		for _,_ in pairs(data.events) do 
			is_empty = false
			break
		end
		
		-- unregister this sound source
		if is_empty then
			self._soundsources[key] = nil
		end
	end
	
	self:remove_subtitle(event_id,sound_source,instant)
end

function ClosedCaptions:register_soundsource_postevent(sound_source,event_id,unit,event_instance,...)
	
	
--	if self._soundsources[key].events[event_id] == event_instance then
--		-- interrupt alpha decay, refresh
		-- (reroll text eg repeat enemy markings)
--	end
	if self._sound_data.vo[event_id] and not self._sound_data.vo[event_id].disabled then
		self:Print("Playing subtitle",event_id,sound_source,unit,event_instance,...)
		local key = tostring(sound_source:key())
		self._soundsources[key] = self._soundsources[key] or {
			source = sound_source,
			events = {}
		}
		self._soundsources[key].events[event_id] = event_instance
		self:start_subtitle(event_id,unit,sound_source,sound_source:get_position())
	else
--		self:Print("No subtitle data for",event_id)
	end
	
end

function ClosedCaptions:unregister_source(sound_source)
	local key = tostring(sound_source:key())
	
	self._soundsources[key] = nil
end

-- callback for when a sound naturally reaches its end
function ClosedCaptions._clbk_soundsource_post_event(event_id,instance,sound_source,event_type,unit,...)
--	Print("_clbk_soundsource_post_event",event_id,"instance",instance,"sound_source",sound_source,"event_type",event_type,"unit",unit,"...",...)
	if event_type == "end_of_event" then
		
		ClosedCaptions:clbk_stop_postevent(event_id,sound_source,unit)
	end
end




-- ============================== Localization management

function ClosedCaptions:LoadLanguage(localizationmanager,user_language)
	localizationmanager = localizationmanager or managers.localization
	if localizationmanager then 
		user_language = user_language or self:GetCurrentLanguageName()
		local language_data = user_language and self.languages[user_language]
		if language_data then
			if language_data.file_path then
				localizationmanager:load_localization_file(language_data.file_path,true)
				
				if language_data.folder_path then
					localizationmanager:load_localization_file(language_data.folder_path .. "subtitles.json",true)
					localizationmanager:load_localization_file(language_data.folder_path .. "speakers.json",true)
					
					-- because the unit list gets edited so often (relatively),
					-- it gets disorganized very easily,
					-- so i'm not bothering with localizing it using the actual loc system,
					-- because that would require a lot of name mangling and i'm tired of it
					local unit_names_path = Application:nice_path(language_data.folder_path .. "unit_names.json", false)
					if SystemFS:exists(unit_names_path) then	
						local file = io.open(unit_names_path, "r")
						if file then
							local unit_names = json.decode(file:read("*all"))
							self._UNIT_NAMES = unit_names
							file:close()
						end
					end
				end
				self.settings._language_index = language_data.index
			else
				self:Log("ERROR! No file path for language: " .. tostring(user_language))
			end
		else
			self:Log("ERROR! Bad language data for language: " .. tostring(user_language))
		end
	else
		self:Log("ERROR! LocalizationManager not initialized!")
	end
end

-- get the filename (including extension) of the current language file
function ClosedCaptions:GetCurrentLanguageName()
	return self.settings.language_name
end

-- Index the localization folder to get a list of all available languages
function ClosedCaptions:LoadLanguageFiles()
	-- For each language folder in the localization folder...
	for i,foldername in ipairs(SystemFS:list(self._LOCALIZATION_DIRECTORY_PATH,true)) do 
		local folder_path = self._LOCALIZATION_DIRECTORY_PATH .. foldername
		local localization_file_path = folder_path .. self._LOCALIZATION_FILE_NAME
		-- ...check for the main localization file inside...
		if SystemFS:exists( Application:nice_path( localization_file_path, false )) then
			local file = io.open(localization_file_path, "r")
			-- ...open the file...
			if file then
				-- ...read the contents and get the name of the language from the contents (not from the filename!)...
				local localized_strings = json.decode(file:read("*all"))
				local lang_name = localized_strings and (type(localized_strings) == "table") and localized_strings.menu_closedcaptions_language_name
				-- ...and "register" the file so that the mod knows that it is a selectable language
				if lang_name then 
					self.languages[foldername] = {
						index = i,
						localized_language_name = lang_name,
						folder_path = folder_path,
						file_path = localization_file_path
					}
				end
			
			end
			-- If this file is the currently selected language,
			-- Then set the _language_index so that the multiple choice setting reflects that this is the currently selected language
			if foldername == self:GetCurrentLanguageName() then 
				self.settings._language_index = i
				-- Language order is not guaranteed- particularly if a new language is added which interferes with the alphabetical order-
				-- which is why the filename is saved and not the index number of the language,
				-- and the index number is "generated" on load instead of being written here in settings
			end
		end
	end
end

-- Initially, load the default language (english)
Hooks:Add("LocalizationManagerPostInit", "ClosedCaptions_LocalizationManagerPostInit",
	function(self)
		-- Load default localization
		ClosedCaptions:LoadLanguage(self)
	end
)



-- ============================== I/O
function ClosedCaptions:ReadSoundData()
	self._sound_data = blt.vm.dofile(self._SOUNDDATA_PATH .. "sound_data.lua")
end

--load settings from save txt
function ClosedCaptions:Load()
	local file = io.open(self._SETTINGS_PATH, "r")
	if file then
		for k, v in pairs(json.decode(file:read("*all"))) do
			self.settings[k] = v
		end
	end
end

--save settings to save txt
function ClosedCaptions:Save()
	local file = io.open(self._SETTINGS_PATH,"w+")
	if file then
		file:write(json.encode(self.settings))
		file:close()
	end
end


-- ============================== Custom assets

--Registers assets into the game's db so that they can be loaded later 
function ClosedCaptions:CheckResourcesAdded(skip_load)
	local assets = self._MANUAL_LOAD_ASSETS
	for asset_type_str,data in pairs(assets) do
		local asset_type_ids = Idstring(asset_type_str)
		for _,path in pairs(data) do
			
			if DB:has(asset_type_ids, path) then 
				self:Log("Asset " .. asset_type_str .. " at path " .. path .. " is verified.")
			else
				self:Log("Asset " .. asset_type_str .. " at path " .. path .. " is not created!")
				if not skip_load then 
					local full_asset_path = self._ASSETS_PATH .. path
					BLT.AssetManager:CreateEntry(Idstring(path),asset_type_ids,full_asset_path .. "." .. asset_type_str)
				end
			end
		end
	end
end

--Loads assets into memory so that they can be used in-game
function ClosedCaptions:CheckResourcesReady(skip_load,done_loading_cb)
	self:Log("Checking font assets...")
	
	local assets = self._MANUAL_LOAD_ASSETS
	
	local dyn_pkg = DynamicResourceManager.DYN_RESOURCES_PACKAGE

	if done_loading_cb and done_loading_cb ~= false then 
	
		done_loading_cb = function(done,resource_type_ids,resource_ids)
			if done then 
				self:Log("Completed manual asset loading for " .. tostring(resource_ids))
			end
		end
		
	end
	
	local resources_ready = true
	for asset_type_str,data in pairs(assets) do
		local asset_type_ids = Idstring(asset_type_str)
		for _,path in pairs(data) do
			if not managers.dyn_resource:is_resource_ready(asset_type_ids,Idstring(path),dyn_pkg) then 
				if not skip_load then 
					--register_loading(path)
					self:Log("Creating DB entry for " .. tostring(asset_type_ids) .. ", " .. tostring(path) .. ", " .. tostring(self._ASSETS_PATH .. path .. "." .. asset_type_str))
					managers.dyn_resource:load(asset_type_ids, Idstring(path), dyn_pkg, done_loading_cb)
				end
				self:Log("Asset " .. tostring(asset_type_str) .. " at path " .. path .. " is not ready!" .. (skip_load and " Skipped loading for " or " Started manual load for ") .. path)
				resources_ready = false
			else
				self:Log("Asset " .. tostring(asset_type_str) .. " at path " .. path .. " is ready.")
			end
			
		end
	end
	
	return resources_ready
end


-- ============================== Menu

Hooks:Add("MenuManagerInitialize", "ClosedCaptions_InitializeMenu", function(menu_manager)
	-- anything that changes settings should then call:
	-- Hooks:Call("hevhud_on_config_changed",self.config)
	-- Hooks:Call("hevhud_on_settings_changed",self.settings)
	
	MenuCallbackHandler.callback_closedcaptions_category_mission_dialogue = function(self,item)
		ClosedCaptions.settings.category_mission_dialogue = item:value() == "on"
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
	
	
	
	
	
	
	
	MenuCallbackHandler.callback_closedcaptions_menu_general_focus = function(self,focus)
		if focus then
			if ClosedCaptions.menu_data.populated_languages_menu then
				return
			end
			
			local menu_item = MenuHelper:GetMenu(ClosedCaptions.menu_data.menu_ids.general) or {_items = {}}
			for _,item in pairs(menu_item._items) do 
				if item._parameters and item._parameters.name == "closedcaptions_language_name" then 
					for lang_name,lang_data in pairs(ClosedCaptions.languages) do 
						item:add_option(
							CoreMenuItemOption.ItemOption:new(
								{
									_meta = "option",
									text_id = lang_data.localized_language_name,
									value = lang_data.index,
									localize = false
								}
							)
						)
					end
					item:set_value(ClosedCaptions.settings._language_index)
					break
				end
			end
			ClosedCaptions.menu_data.populated_languages_menu = true
		end
	end
	
	MenuCallbackHandler.callback_closedcaptions_language_name = function(self,item)
		local index = item:value()
		ClosedCaptions.settings._language_index = index
		for filename,data in pairs(self._languages) do 
			if data.index == index then
				ClosedCaptions:LoadLanguage(nil,filename)
				ClosedCaptions.settings.language_name = filename
				ClosedCaptions:SaveSettings()
				return
			end
		end
		
		ClosedCaptions:Log("Error loading localization! Invalid selection index: " .. tostring(index))
	end
	
	ClosedCaptions:ReadSoundData()
	ClosedCaptions:LoadLanguageFiles()
	ClosedCaptions:CheckResourcesReady()
	
	--MenuHelper:LoadFromJsonFile(ClosedCaptions._MENU_PATH, ClosedCaptions, ClosedCaptions.settings)
end)

Hooks:Add("BaseNetworkSessionOnLoadComplete","ClosedCaptions_OnLoadComplete",callback(ClosedCaptions,ClosedCaptions,"setup"))

ClosedCaptions:CheckResourcesAdded()
