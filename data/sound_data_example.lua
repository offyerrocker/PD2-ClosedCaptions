-- contains data about category, variations and macros for each line; 
-- this file will contain only data about how the subtitle should behave.
-- translation files should instead be used for each line
-- duration is only necessary for events that don't have actual sounds associated with them in the soundbank-
-- eg. "flashbang" lines, which only wolf has iirc
local sounds = {
	pickup_ammo = {
		category = "sfx",
		
	}


--[[

-- minimum time
-- time extension



-- example of standard player line
	g01 = { -- down the stairs!
		priority = 35,
		category = "heister_dialogue"
	},
	
	 
-- example of disabled line
 	 
	 
	 -- example of SFX
	pickup_ammo = {
		override_speaker_id = "sfx",
		category = "sfx",
		priority = 93
	}, 
	 
-- example of macro'd subtitle (automatically generated variants per heister)     
Play_ban_q01@ = { -- "(Heister) is down!"
	macros = {
		"character" -- replace @ with character letter id(s)- a, b, c, etc
	}
},



-- example of macro'd subtitle (random variants)
Play_ban_q01@ = { -- "(Heister) is down!"
	macros = {
		"character" -- replace @ with character letter id(s)- a, b, c, etc
	}
},



-- example of assault variants


-- example of macro'd subtitle (random variants)
g81x_plu = { -- "(Heister) is down!"
	assault = true
},





-- example of a sfx played from a heister,
-- which should not interrupt other voicelines/subtitles
g81x_plu = { -- "(Heister) is down!"
	no_interrupt = true
},

























































































foo6 = ClosedCaptions:_create_caption_text("nvm","hi",Color.green)








disabled_sounds = {
				foley_impact_heavy_equipment = {
					text = "[heavy bag impact]",
					max_distance = 700,
					duration = 2,
					category = "foley"
				},
				fatigue_breath = {
					text = "[heavy panting]",
					category = "foley",
					loop_data = {
						loop_interval = -1
					}
				},
				fatigue_breath_stop = {
					category = "stops",
					stops_line = "fatigue_breath"
				},
				c45_fire = {
					override_name = "SFX",
					disabled = true,
					category = "sfx",
					priority = 37,
					text = "[gunshot]"
				},
				c45_npc1a_1shot = {
					override_name = "SFX",
					disabled = true,
					category = "sfx",
					priority = 37,
					text = "[gunshot]"
				},
				c45_npc1b_1shot = {
					override_name = "SFX",
					disabled = true,
					category = "sfx",
					priority = 37,
					text = "[gunshot]"
				},
				c45_npc1c_1shot = {
					override_name = "SFX",
					disabled = true,
					category = "sfx",
					priority = 37,
					text = "[gunshot]"
				},
				Play_pln_glace_brf = true,
				Play_pln_glace_01 = true,
				Play_pln_glace_02 = true,
				Play_pln_glace_03 = true,
				Play_pln_glace_04 = true,
				Play_pln_glace_05 = true,
				Play_pln_glace_06 = true,
				Play_pln_glace_07 = true,
				Play_pln_glace_08 = true,
				Play_pln_glace_09 = true,
				Play_pln_glace_10 = true,
				Play_pln_glace_11 = true,
				Play_pln_glace_12 = true,
				Play_pln_glace_13 = true,
				Play_pln_glace_14 = true,
				ambience_ext_heavy_rain_storm_asphalt = true,
				bar_drill_apply = true,
				bar_drill_apply_cancel = true,
				bar_drill_apply_finished = true,
				box_tick = true,
				box_untick = true,
				bullet_hit = true,
				bullet_whizby_medium = true,
				cqc_equip = true,
				cqc_hit_air = true,
				cqc_hit_body = true,
				foley_flap_light = true,
				foley_run_m4_01 = true,
				foley_run_m4_02 = true,
				footstep_land = true,
				footstep_npc_bulldozer_walk = true,
				footstep_npc_hardsole_land = true,
				footstep_npc_hardsole_run = true,
				footstep_npc_hardsole_walk = true,
				footstep_run = true,
				footstep_walk = true,
				gadget_laser_aim_off = true,
				gadget_laser_aim_on = true,
				game_pause_in_game_menu = true,
				game_resume = true,
				highlight = true,
				keltec_fire = true,
				m4_equip = true,
				m4_equip = true,
				m4_npc1a_1shot = true,
				m4_npc1a_2shot = true,
				m4_npc1a_3shot = true,
				m4_npc1a_end = true,
				m4_npc1a_loop = true,
				m4_unequip_a = true,
				mask_on_equip_stereo = true,
				mask_on_from_bag_stereo = true,
				mask_on_left_hand_stereo = true,
				menu_enter = true,
				menu_exit = true,
				mp5_npc1a_1shot = true,
				mp5_npc1a_2shot = true,
				mp5_npc1a_end = true,
				mp9_npc1a_1shot = true,
				mp9_npc1a_2shot = true,
				mp9_npc1a_3shot = true,
				mp9_npc1a_end = true,
				mp9_npc1a_loop = true,
				music_heist_anticipation = true,
				music_heist_assault = true,
				music_heist_control = true,
				music_heist_setup = true,
				occasionals_a_silent = true,
				pistol_steel_sight_enter = true,
				pistol_steel_sight_exit = true,
				primary_steel_sight_enter = true,
				primary_steel_sight_exit = true,
				rbull_npc1a_1shot = true,
				remington_npc1a_1shot = true,
				saiga_npc1a_1shot = true,
				saiga_npc1a_2shot = true,
				saiga_npc1a_3shot = true,
				saiga_npc1a_end = true,
				saiga_npc1a_loop = true,
				stinger_feedback_negative = true,
				stinger_objectivecomplete = true,
				w_ppk_fire = true,
				wp_clip_generic_pist_right = true,
				wp_foley_generic_back_in_hand = true,
				wp_foley_generic_clip_grab = true,
				wp_foley_generic_clip_in_connect = true,
				wp_foley_generic_lever_grab = true,
				wp_foley_generic_lever_pull = true,
				wp_foley_generic_lever_release = true,
				wp_g17_clip_grab = true,
				wp_g17_clip_in_contact = true,
				wp_g17_clip_slide_in = true,
				wp_g17_clip_slide_out = true,
				wp_g17_lever_release = true,
				wp_pistol_slide_lock = true,
				wp_reinbeck_reload_cock = true,
				wp_reinbeck_shell_insert = true,
				Play_pln_glace_intro = true,
				bsides_02_swat_attack = true,
				footstep_npc_bulldozer_run = true,
				sniper_npc1a_1shot = true,
				Play_ban_c01 = true,
				Play_ban_r04 = true,
				Play_ban_r03 = true,
				ambience_ext_wilderness_night = true,
				music_uno_fade_reset = true,
				emitter_rain_on_car = true,
				emitter_car_fire_rain = true,
				emitter_rain_on_generic = true,
				emitter_rain_on_metal_hollow_large = true,
				emitter_tarp_wind = true,
				emitter_stress_metal_large = true,
				emitter_rubble_light = true,
				emitter_water_on_generic_hollow_mono_loop2 = true,
				emitter_water_on_generic_hollow_mono_loop = true,
				emitter_generator = true,
				emitter_ground_animals = true,
				emitter_coyote = true,
				emitter_owl = true,
				emitter_wind = true,
				emitter_ac_hum = true,
				emitter_radiator_hiss_loop = true,
				emitter_car_fire_loop_02 = true,
				emitter_frog = true,
				emitter_flickering_light = true,
				occasionals_city_traffic = true,
				occasionals_silent = true,
				hud_suspicion_discovered = true,
				hud_suspicion_start = true,
				camera_suspicious_signal = true,
				camera_silent = true				
			},
			








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
		["Murkywater Intercom"] = "hud_subtitlemod_speaker_murkyintercom"
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
	
	
	local file = io.open("mods/PD2-ClosedCaptions/data/sound_data.lua","r+")
	local b = file:read("*all")
	local c = json.decode(b)

	local sound_data = {}
	local loc_data = {}
	for event_id,data in pairs(c.vo) do 
		loc_data[category] = loc_data[category] or {}
		
		local loc = {}
		local line_data = table.deep_map_copy(data)
		
		if line_data.override_name then
			if REPLACEMENT_OVERRIDE_NAMES[line_data.override_name] then
				line_data.override_name = REPLACEMENT_OVERRIDE_NAMES[line_data.override_name]
			else
				Log("Unknown override name:",event_id,"|",line_data.override_name)
				line_data.override_name =  nil
			end
		end
		
		line_data.default = "menu_subtitlemod_" .. event_id
		loc[event_id] = data.text
		
		line_data.remove_by_source = nil
		line_data.override_source_id = nil
		--line_data.loop_data = nil
		line_data.line_variations = nil
		
		if data.line_variations then
			line_data.line_variations = {}
			if data.line_variations.recombinable then
				line_data.line_variations.recombinable = nil
				line_data.recombinable = true
				
				for var_type,var_data in pairs(data.line_variations) do 
					local var_id = REPLACEMENT_VARIATION_NAMES[var_type]
					line_data.line_variations[var_id] = {}
					
					for stage_index,stage_data in pairs(var_data) do 
						line_data.line_variations[var_id][stage_index] = {}
						for variation_index,variation_text in pairs(stage_data) do 
							-- eg v10_var_gen_1_5
							local loc_id = event_id .. "_var_" .. var_id .. "_" .. stage_index .. "_" .. variation_index
							line_data.line_variations[var_id][stage_index][variation_index] = loc_id
							loc[loc_id] = variation_text
						end
					end
				end
			else
				for var_type,var_data in pairs(data.line_variations) do 
					local var_id = REPLACEMENT_VARIATION_NAMES[var_type]
					line_data.line_variations[var_id] = {}
					
					for variation_index,variation_text in pairs(var_data) do 
						-- eg v10_var_gen_1_5
						local loc_id = event_id .. "_var_" .. var_id .. "_" .. variation_index
						line_data.line_variations[var_id][variation_index] = loc_id
						loc[loc_id] = variation_text
					end
				end
			end
		end
		
		loc_data[event_id] = loc  -- standard fallbacks
		sound_data[event_id] = line_data
	end
	file:close()
	file = nil
end

for name,id in pairs(REPLACEMENT_OVERRIDE_NAMES) do
	loc_data[id] = name
end

do
	local file = io.open(SavePath .. "cc_test_output_sound_data.json","w+")
	file:write(sound_data)
	file:flush()
	file:close()
end
do
	local file = io.open(SavePath .. "cc_test_output_locen_data.json","w+")
	file:write(loc_data)
	file:flush()
	file:close()
end




--[[


local function make_loc_code(data)
	local category = data.category
	
	--[[
	if category == "sfx" then
	elseif category == "ambient" then
	elseif category == "heister_dialogue" then
	elseif category == "heister_spots" then
	elseif category == "heister_kills" then
	elseif category == "civilian_dialogue" then
	elseif category == "enemy_dialogue" then
	elseif category == "enemy_chatter" then
	elseif category == "enemy_death" then
	elseif category == "specialenemy_chatter" then
	elseif category == "specialenemy_death" then
	elseif category == "mission_dialogue" then
	elseif category == "contractor_vo" then
	end
	--]]
	
	if data.voice_prefix then
		
	end
end

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
	category_specialenemy_death = true,


















}

--]]

return sounds