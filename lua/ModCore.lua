ClosedCaptions = { -- _G.ClosedCaptions or 
	_ws = nil,
	_panel = nil,
	_MOD_PATH = ModPath,
	_SETTINGS_PATH = SavePath .. "closedcaptions_settings.txt",
	_ASSETS_PATH = ModPath .. "assets/",
	_LOCALIZATION_DIRECTORY_PATH = ModPath .. "l10n/",
	_SOUNDDATA_PATH = ModPath .. "data/",
	_MANUAL_LOAD_ASSETS = {
		texture = {
			"guis/textures/closedcaptions_bgbox_atlas"
		}
	},
	languages = {},
	default_settings = {
		caption_use_player_names = true,
		caption_font_size = 16,
		captions_max_count = 5
	},
	settings = {}, -- populated from default settings, then from user save json
	_soundsources = {
		--[[
			[SoundSource 0xd34db33f] = {
				events = {
					menu_subtitlemod_speaker_unit_
					menu_subtitlemod_speaker_cont_
					
				}
			},

		--]]
	},
	_sound_data = {}, -- subtitle data, indexed by event_id
	_HEISTER_NAMES = { --[[ example data; populated on load
		russian 	= "Dallas",
		german 		= "Wolf",
		spanish 	= "Chains",
		american 	= "Houston",
		jowi 		= "John Wick",
		old_hoxton 	= "Hoxton",
		female_1 	= "Clover",
		dragan 		= "Dragan",
		jacket 		= "Jacket",
		bonnie 		= "Bonnie",
		sokol 		= "Sokol",
		dragon 		= "Jiro",
		bodhi 		= "Bodhi",
		jimmy 		= "Jimmy",
		sydney 		= "Sydney",
		wild 		= "Rust",
		chico 		= "Scarface",
		max 		= "Sangres",
		joy 		= "Joy",
		myh 		= "Duke",
		ecp_male 	= "Ethan",
		ecp_female 	= "Hila"
	--]]
	},
	_UNIT_NAMES = {}, -- populated on load from data file
	_NARRATOR_PREFIXES = {
		Play_ban_ = "menu_subtitlemod_speaker_cont_bain",
		Play_loc_ = "menu_subtitlemod_speaker_cont_locke"
	},
	active_lines = {} -- currently playing captions, with live data such as panel, vector3/locationless flag
}
for k,v in pairs(ClosedCaptions.default_settings) do ClosedCaptions.settings[k] = v end

--ClosedCaptions._sound_data_filename = "sound_data.lua"

ClosedCaptions._libraries = ClosedCaptions._libraries or {}
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

--initializes mod data;
--creates workspace to display captions on, registers the Update() method

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
--		managers.hud:add_updator("ClosedCaptions_update",callback(ClosedCaptions,ClosedCaptions,"Update"))
--	end

	self:ReadSoundData()
	self:ReadUnitNames()
	
	self:hook_soundsource()
	
	self:populate_character_names()
end

Hooks:Register("ClosedCaptions_OnSettingsChanged")
function ClosedCaptions:clbk_on_settings_changed(changed_settings)
	Hooks:Call("ClosedCaptions_OnSettingsChanged",self.settings,changed_settings)
end

function ClosedCaptions:update(t,dt)
	
	
	
end
Hooks:Add("GameSetupUpdate","ClosedCaptions_Update",callback(ClosedCaptions,ClosedCaptions,"update"))

function ClosedCaptions:populate_character_names()
	for _,data in pairs(tweak_data.criminals._characters) do 
		self._HEISTER_NAMES[data.name] = managers.localization:text("menu_" .. data.name)
	end
end

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

function ClosedCaptions:ReadSoundData()
	self._sound_data = blt.vm.dofile(self._SOUNDDATA_PATH .. "sound_data.lua")
end

function ClosedCaptions:ReadUnitNames()
	local file = io.open(self._SOUNDDATA_PATH .. "unit_names.json","r+")
	self._UNIT_NAMES = json.decode(file.read("*all"))
	file:close()
end

Hooks:Add("BaseNetworkSessionOnLoadComplete","ClosedCaptions_OnLoadComplete",callback(ClosedCaptions,ClosedCaptions,"setup"))

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

function ClosedCaptions:start_subtitle(event_id,unit,sound_source,position)
	local text,text_color,color_range,panel_name = self:get_subtitle_display_data(event_id,unit,sound_source,position)
	
	self:_create_caption_text(text,text_color,color_range,panel_name)
end


local AnimateLibrary = ClosedCaptions:require("lua/AnimateLibrary")
function ClosedCaptions:_create_caption_text(text,text_color,color_range,panel_name)
	local panel = self._panel
	if not alive(panel) then
		return
	end
	
	--[[
	local item_panel = panel:child(panel_name)
	if item_panel and alive(item_panel) then 
		self:find_line({panel = item_panel},nil,"_remove_line")
--		panel:remove(item_panel)
	end
	--]]
	local arrow_margin_hor = 4
	local margin_ver = 4
	local margin_hor = 4
	local parent_w = panel:w()
	
	local item_panel = panel:panel({
		name = panel_name,
		w = nil,
		h = nil,
		alpha = 0
	})
	local bgbox = self.CreateBGBox(item_panel,self._BGBOX_PANEL_CONFIG,self._BGBOX_TILE_CONFIG)
	
	local arrow_left = item_panel:text({
		name = "arrow_left",
		text = "<",
		visible = true,
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
		visible = true,
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
	if color_range then
		subtitle:set_range_colors(color_range)
	end
	local txc,tyc,twc,thc = subtitle:text_rect()
	
	
	-- can't be larger than 70% of screen width
	item_panel:set_w(math.min(arrow_margin_hor+arrow_margin_hor+twa+twb+twc,parent_w * 0.7) + margin_hor)
	
	local num_lines = subtitle:number_of_lines()
	local line_height = subtitle:line_height()
	thc = num_lines * line_height
	item_panel:set_h(thc + margin_ver)
	
	-- center subtitle
	item_panel:set_x((panel_w - item_panel:w()) / 2)
	
	Hooks:Add("ClosedCaptions_OnSettingsChanged","cc_check_caption_settings_" .. tostring(item_panel),function(settings,changed_settings)
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
	
	local duration = 0.5
	item_panel:animate(AnimateLibrary.animate_alpha_lerp,nil,duration,nil,1)
	
	return item_panel
end

function ClosedCaptions:remove_subtitle(event_id,unit)
	self:_remove_subtitle(event_id .. "_" .. tostring(unit:key()))
end

function ClosedCaptions:_remove_subtitle(id)
	local item_panel = self._panel:child(id)
	if alive(item_panel) then
		local duration = 0.5
		item_panel:animate(AnimateLibrary.animate_alpha_lerp,function(o)
			self._panel:remove(item_panel)
		end,duration,nil,0)
	end
end

--settings getter; if true, uses player name for heisters (eg. "xX420692bOnGsLamMeR004Xx" instead of "Ethan")
function ClosedCaptions:UsePlayerName()
	return self.settings.caption_use_player_names
end

function ClosedCaptions:GetColor(color_id)
	return Color.white
end

function ClosedCaptions:get_subtitle_display_data(event_id,unit,sound_source,position)
	
	local name,variant,color,is_locationless,tweak_table
	
	
	local is_whisper_mode = managers.groupai:state():whisper_mode()
	local is_assault_mode = managers.groupai:state():get_assault_mode()
	
	
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
	
	local sound_data = sound_table.vo[event_id]
	local variant_data = sound_data
	
	-- get subtitle text
	if not sound_data then 
		sound_table.vo[event_id] = {disabled = true} --temporarily set this sound_data so that the error will only appear once 
		return
	elseif sound_data.disabled then
		return
	end
	
	if variant and sound_data.variants and sound_data.variants[variant] then 
		variant_data = sound_data.variants[variant]
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
	
	local variations = variant_data.line_variations or sound_data.line_variations
	if variations and self:IsLineRandomizationEnabled() then 
		
		is_recombinable = variations.recombinable
		
		if is_whisper_mode and variations.whisper_mode then --whisper_mode indicates the requirement that the heist is currently in stealth mode
			variation_data = variations.whisper_mode
			text = ClosedCaptions.get_random_variation(variations.whisper_mode,is_recombinable)
			
		elseif is_assault_mode and variations.assault_mode then --assault_mode indicates the requirement that an assault is present
			variation_data = variations.assault_mode
			text = ClosedCaptions.get_random_variation(variations.assault_mode,is_recombinable)
			
		elseif not is_whisper_mode and variations.assault_break_mode then --if otherwise loud
			variation_data = variations.assault_break_mode
			text = ClosedCaptions.get_random_variation(variations.assault_break_mode,is_recombinable)
			
		elseif variations.standard_mode then --no requirements
			variation_data = variations.standard_mode
			text = ClosedCaptions.get_random_variation(variations.standard_mode,is_recombinable)
		end
	end
	
	if variant_data.disabled then
		return
	end
	
	text = text or variant_data.text or sound_data.text


	local category = variant_data.category or sound_data.category	
	if category == "stops" then 
		return
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
--			self:log_debug("Category is not set for this line! (id " .. tostring(sound_id) .. ", category " .. tostring(sound_data.category) .. ")")
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


	if variant_data.override_source_id then 
		if variant_data.override_source_id == true then 
			source_id = nil
		else
			source_id = variant_data.override_source_id
		end
	end
	
	if not text then
		return
	end
	
	self:Print("Playing " .. tostring(sound_id) .. " from unit " .. tostring(unit) .. " variant " .. tostring(variant) .. " with source " .. tostring(sound_source) .. " at position " .. tostring(position))
	
	name = variant_data.override_name or name or variant_data.fallback_name
	
	
	if self:UseCapitalNames() then 
		name = utf8.to_upper(name)
	end
	
	--local t = Application:time()
	
	name = name or "???"
	
	local DIFFERENT_COLOR_TEXT = false
	
	local speaker_str = name
	local speaker_color = color
	local text_color = color
	if DIFFERENT_COLOR_TEXT then
		text_color = Color.white
	end
	
	local speaker_len = utf8.len(speaker_str)
	local text_len = utf8.len(text)
	
	local color_tbl = {
		0,
		speaker_len+1,
		speaker_color,
		
		speaker_len+1,
		speaker_len+text_len+2,
		text_color
	}
	
	local str = string.format("%s: %s",speaker_str,text)
	return str,text_color,color_tbl,event_id .. "_" .. tostring(unit:key())
end

function ClosedCaptions:__get_subtitle_display_data(event_id,unit)
	local subtitle_data = self._sound_data.vo[event_id]
	if not subtitle_data or self._sound_data.disabled_sounds[event_id] then
		--self:Print("Unknown event data for ",event_id)
		return
	end
	local lang_data = self.languages[self:GetCurrentLanguageName()]
	local speaker,text
	local char_id,speech_prefix
	if subtitle_data.category == "sfx" then
		speaker = managers.localization:text("menu_subtitlemod_speaker_sfx")
	elseif subtitle_data.category == "contractor_vo" then
		speaker = managers.localization:text(subtitle_data.name or "menu_subtitlemod_speaker_cont_bain")
	else
		-- is unit
		if alive(unit) then
			local ubase = unit:base()
			char_id = ubase and ubase._tweak_table --string key to character tweakdata
			local char_td = char_id and tweak_data.character[char_id]
			speech_prefix = char_td and char_td.speech_prefix
			
			local speaker_name = char_id and "menu_subtitlemod_speaker_unit_" .. char_id
			
			if subtitle_data.name then
				speaker = managers.localization:text(subtitle_data.name)
			elseif self._HEISTER_NAMES[char_id] then
				speaker = self._HEISTER_NAMES[char_id]
			elseif speaker_name and lang_data[speaker_name] then
				speaker = managers.localization:text(speaker_name)
			else
				speaker = managers.localization:text("menu_subtitlemod_speaker_unknown")
			end
		end
		
	end
	
	if subtitle_data.prefix_variations and speech_prefix and subtitle_data.prefix_variations[speech_prefix] then
		-- variations per character (dallas, jacket, clover, etc)
		local variations = subtitle_data.prefix_variations[speech_prefix]
		text = variations[math.random(#variations)]
	elseif subtitle_data.random_variations then
		-- randomized variations
		local variations = subtitle_data.random_variations
		text = variations[math.random(#variations)]
	elseif subtitle_data.text then
		text = subtitle_data.text
	else
		text = "menu_subtitlemod_line_" .. event_id
	end
	
	local speaker_str = managers.localization:text(speaker)
	local speaker_color = Color.green
	local text_color = Color.white
	
	local speaker_len = utf8.len(speaker_str)
	local text_len = utf8.len(text)
	
	local color_tbl = {
		0,
		speaker_len+1,
		speaker_color,
		
		speaker_len+1,
		speaker_len+text_len+2,
		text_color
	}
	
	local str = string.format("%s: %s",speaker_str,text)
	return str,text_color,color_tbl,event_id .. "_" .. tostring(unit:key())
end

function ClosedCaptions:UseCapitalNames()
	return true
end

function ClosedCaptions:IsCaptionCategoryEnabled()
	return true
end

function ClosedCaptions:ShouldLogMissing()
	return true
end

function ClosedCaptions:IsLineRandomizationEnabled()
	return true
end

--chooses a random caption variation from the sound_table
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


-- SoundSource management

function ClosedCaptions:hook_soundsource()
	
	-- hook soundsource methods	
	if BeardLib then
		-- beardlib compat
		
		SoundSource._post_event = SoundSource._post_event or SoundSource.post_event
		function SoundSource:post_event(event,clbk,cookie,marker,event_type,...)
			
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
			
			ClosedCaptions:register_soundsource_postevent(self,event,unit,result)
			
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
			ClosedCaptions:register_soundsource_postevent(self,event,event_instance)
			return unpack(result)
		end)
		
		--[[
		Hooks:PostHook(SoundSource,"post_event","closedcaptions_soundsource_postevent",function(self,event,clbk,cookie,marker,event_type,...)
			if not SILENCE2 then
				Print("Post event:",type(event),event,"clbk",clbk,"cookie",cookie,"marker",marker,"event_type",event_type,...)	
			end
			ClosedCaptions:add_line(event,SoundSource.get_link and SoundSource.get_link(self),self,SoundSource.get_position and SoundSource.get_position(self))
		end)
		--]]
	end
	
	
	-- used to prematurely stop sounds
	Hooks:PostHook(EventInstance,"stop","closedcaptions_eventinstance_stop",function(self,...)
		-- todo better lookup than bruteforce
		for ss_key,data in pairs(self._soundsources) do 
			for event_id,event_instance in pairs(data.events) do
				if event_instance == event_instance then
					-- stop this sound
					self:clbk_stop_postevent(event_id,data.source)
					break
				end
			end
		end
	end)

end

function ClosedCaptions:clbk_stop_postevent(event_id,sound_source,unit)
	if not event_id then return end
	
	self:Print("clbk_stop_postevent","event_id",event_id,"sound_source",sound_source,unit)
	
	local key = tostring(sound_source:key())
	local data = self._soundsources[key]
	if data then 
		
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
	
	self:remove_subtitle(event_id,unit)
end

function ClosedCaptions:register_soundsource_postevent(sound_source,event_id,unit,event_instance)
	local key = tostring(sound_source:key())
	self._soundsources[key] = self._soundsources[key] or {
		source = sound_source,
		events = {}
	}
	
	
--	if self._soundsources[key].events[event_id] == event_instance then
--		-- interrupt alpha decay, refresh
		-- (reroll text eg repeat enemy markings)
--	end
	if self._sound_data.vo[event_id] then
		self:start_subtitle(event_id,unit,sound_source,sound_source:get_position())
	end
	
	self._soundsources[key].events[event_id] = event_instance
end

function ClosedCaptions:unregister_source(sound_source)
	local key = tostring(sound_source:key())
	
	self._soundsources[key] = nil
end

function ClosedCaptions._clbk_soundsource_post_event(event_id,instance,sound_source,event_type,unit,...)
--	Print("_clbk_soundsource_post_event",event_id,"instance",instance,"sound_source",sound_source,"event_type",event_type,"unit",unit,"...",...)
	if event_type == "end_of_event" then
		ClosedCaptions:clbk_stop_postevent(event_id,sound_source,unit)
	end
end










-- Language swapping

function ClosedCaptions:LoadLanguage(localizationmanager,user_language)
	localizationmanager = localizationmanager or managers.localization
	if localizationmanager then 
		user_language = user_language or self:GetCurrentLanguageName()
		local language_data = user_language and self.languages[user_language]
		if language_data then
			if language_data.file_path then
				localizationmanager:load_localization_file(language_data.file_path,true)
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
	-- For each localization file in the localization folder...
	for i,filename in ipairs(SystemFS:list(self._LOCALIZATION_DIRECTORY_PATH)) do 
		local localization_file_path = self._LOCALIZATION_DIRECTORY_PATH .. filename
		local file = io.open(localization_file_path, "r")
		-- ...open the file...
		if file then
		
			-- ...read the contents and get the name of the language from the contents (not from the filename!)...
			local localized_strings = json.decode(file:read("*all"))
			local lang_name = localized_strings and (type(localized_strings) == "table") and localized_strings.menu_closedcaptions_language_name
			-- ...and "register" the file so that the mod knows that it is a selectable language
			if lang_name then 
				self.languages[filename] = {
					index = i,
					localized_language_name = lang_name,
					file_path = localization_file_path
				}
			end
		
		end
		-- If this file is the currently selected language,
		-- Then set the _language_index so that the multiple choice setting reflects that this is the currently selected language
		if filename == self:GetCurrentLanguageName() then 
			self.settings._language_index = i
			-- Language order is not guaranteed- particularly if a new language is added which interferes with the alphabetical order-
			-- which is why the filename is saved and not the index number of the language,
			-- and the index number is "generated" on load instead of being written here in settings
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

Hooks:Add("MenuManagerInitialize", "ClosedCaptions_InitializeMenu", function(menu_manager)
	-- anything that changes settings should then call:
	-- Hooks:Call("hevhud_on_config_changed",self.config)
	-- Hooks:Call("hevhud_on_settings_changed",self.settings)
	
	
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
	
	MenuCallbackHandler.callback_hevhud_language_name = function(self,item)
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
	
	ClosedCaptions:CheckResourcesReady()
end)

ClosedCaptions:CheckResourcesAdded()
