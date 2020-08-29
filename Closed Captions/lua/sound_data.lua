ClosedCaptions._sounds = {
	languages = {
		english = {
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
				emitter_generator = true
			},
			vo_special = { --there exist character-specific variants for most of these, but we'll burn that bridge when we come to it
				["f11@_sin"] = { --macroized
					text = "$CHARACTER_NAME! Help me up!",
					macro = "character_name",
					category = "heister_dialogue",
					priority = 37
				},
				["f13@_sin"] = { --macroized
					text = "$character_name, come uncuff me!",
					macro = "character_name",
					category = "heister_dialogue",
					priority = 37
				},
				["f21@_sin"] = { --macroized
					text = "$character_name, follow me!",
					macro = "character_name",
					category = "heister_dialogue",
					priority = 37
				},
				["Play_ban_i20@"] = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					macro = "character_name",
					text = "$character_name, you're the last one standing! It's all up to you!",
					priority = 37
				}
			},
			vo = {
			--player sounds (ammo/throwable pickup, perkdeck end, armor broken, etc)
				pickup_ammo = {
					override_name = "SFX",
					text = "picked up ammo",
					category = "sfx",
					override_source_id = true, --if true, generates a new source_id (which will not replace any existing voiceline captions); else if any other non-nil value, uses this as source_id
					duration = 1,
					priority = 50
				},
				pickup_ammo_health_boost = {
					override_name = "SFX",
					text = "(Gambler) picked up ammo",
					override_source_id = true,
					category = "sfx",
					priority = 21,
					duration = 2
				},
				pickup_fak_skill = {
					override_name = "SFX",
					text = "activated Uppers Ace",
					override_source_id = true,
					duration = 1,
					priority = 11,
					category = "sfx"
				},
				wp_four_pick_up = {
					override_name = "SFX",
					text = "picked up Shuriken",
					override_source_id = true,
					duration = 1,
					priority = 25,
					category = "sfx"
				},
				wp_target_pick_up = {
					override_name = "SFX",
					text = "picked up Throwing Knife",
					override_source_id = true,
					duration = 25,
					category = "sfx"
				},
				wp_ace_pick_up = {
					override_name = "SFX",
					text = "picked up Throwing Card",
					override_source_id = true,
					duration = 25,
					category = "sfx"
				},
				wp_hur_pick_up = {
					override_name = "SFX",
					text = "picked up Throwing Axe",
					override_source_id = true,
					duration = 1,
					priority = 25,
					category = "sfx"
				},
				wp_jav_pick_up = {
					override_name = "SFX",
					text = "picked up Javelin",
					override_source_id = true,
					duration = 1,
					priority = 25,
					category = "sfx"
				},
				wp_arrow_pick_up = {
					override_name = "SFX",
					text = "picked up Arrow",
					override_source_id = true,
					duration = 1,
					priority = 25,
					category = "sfx"
				},
				wp_hunterarrow_pick_up = {
					override_name = "SFX",
					text = "picked up Compound Bow Arrow",
					override_source_id = true,
					duration = 1,
					priority = 25,
					category = "sfx"
				},
				cable_tie_apply = { --i think this only plays for local player, so i count it as a player sound
					override_name = "SFX",
					category = "sfx",
					duration = 2,
					priority = 50,
					text = "[cable tie rustles]"
				},
				perkdeck_cooldown_over = {
					override_name = "SFX",
					text = "(perk deck cooldown end)",
					priority = 11,
					duration = 2,
					category = "sfx"
				},
				nine_lives_skill = {
					override_name = "SFX",
					text = "(nine lives skill activates!)",
					priority = 11,
					category = "sfx"
				},
				tasered_loop = {
					override_name = "SFX",
					text = "(being tased!)",
					priority = 11,
					category = "sfx",
					loop_data = {
						loop_interval = -1 --constant
					}
				},
				tasered_stop = {
					category = "stops",
					remove_by_source = true,
					priority = 11,
					stops_line = "tasered_loop"
				},
				melee_hit_body = { --some of these don't trigger since they're queued directly from the sound_source() and not through play() or say()
					override_name = "SFX",
					text = "(melee impact)",
					priority = 20,
					category = "sfx",
					disabled = true
				},
				player_armor_gone_stinger = {
					override_name = "SFX",
					text = "(armor broken!)",
					priority = 12,
					category = "sfx",
					disabled = true
				},
				shield_full_indicator = {
					override_name = "SFX",
					text = "(armor restored)",
					priority = 12,
					category = "sfx",
					disabled = true
				},
				player_sniper_hit_armor_gone = {
					override_name = "SFX",
					text = "(armor broken by sniper!)",
					priority = 12,
					category = "sfx",
					disabled = true
				},
				player_hit = {
					override_name = "SFX",
					text = "(armor damaged)",
					priority = 13,
					category = "sfx",
					disabled = true
				},
				player_hit_permadamage = {
					override_name = "SFX",
					text = "(health damaged!)",
					priority = 11,
					category = "sfx",
					disabled = true
				},
				critical_state_heart_loop = { --! needs a stop
					override_name = "SFX",
					text = "(low health heartbeat)",
					priority = 12,
					duration = 1,
					loop_data = {
						loop_interval = 1
					},
					category = "sfx"
				},
				concussion_effect_on = {
					override_name = "SFX",
					text = "(concussion ringing)",
					priority = 20,
					category = "sfx"
				},
				concussion_effect_off = {
					override_name = "SFX",
					text = "(concussion ringing fades)",
					priority = 20,
					category = "sfx"
				},
				concussion_player_disoriented_sfx = {
					override_name = "SFX",
					text = "(concussion disorientation)",
					priority = 20,
					category = "sfx"
				},
				tinnitus_beep = {
					override_name = "SFX",
					text = "(ears ringing from tinnitus)",
					priority = 20,
					category = "sfx"
				},
				tinnitus_beep_stop = {
					override_name = "SFX",
					text = "(tinnitus stops)",
					priority = 20,
					duration = 2,
					category = "sfx"
				},



--sfx/non-dialogue:
	--mission equipment, player equipment (generally, interactable things)
				ammo_bag_drop = {
					override_name = "SFX",
					text = "(bag impact)",
					max_distance = 1500,
					duration = 2,
					priority = 37,
					category = "sfx"
				},
				bar_prison_transport_door_open_finished = {
					override_name = "SFX",
					text = "(door sawing complete)",
					max_distance = 2000,
					duration = 2,
					priority = 37,
					category = "sfx"
				},
				bag_light_drop = {
					override_name = "SFX",
					text = "[light bag placed]",
					category = "sfx",
					max_distance = 1500,
					priority = 37,
					duration = 3
				},
				bag_medium_drop = {
					override_name = "SFX",
					text = "[medium bag placed]",
					category = "sfx",
					max_distance = 1500,
					priority = 37,
					duration = 3
				},
				bag_heavy_drop = {
					override_name = "SFX",
					text = "[heavy bag placed]",
					category = "sfx",
					max_distance = 1500,
					priority = 37,
					duration = 3
				},
				blowtorch_guy = {
					override_name = "SFX",
					text = "(blowtorch hissing)",
					max_distance = 2500,
					loop_data = {
						loop_interval = -1
					},
					priority = 36,
					category = "sfx"
				},
				blowtorch_guy_end_global = {
					override_name = "SFX",
					text = "(blowtorch stops)",
					stops_line = "blowtorch_guy",
					priority = 36,
					category = "sfx"
				},
				buzz_saw_aced = {
					text = "[buzz saw grinds quietly]",
					category = "sfx",
					max_distance = 500,
					priority = 37,
					duration = 5,
					loop_data = {
						loop_interval = -1
					}
				},
				buzz_saw_jam = {
					text = "[jammed buzz saw screeches!]",
					category = "sfx",
					override_name = "SFX",
					max_distance = 1500,
					priority = 37,
					loop_data = {
						loop_interval = -1
					}
				},
				buzz_saw = {
					text = "[buzz saw grinds]",
					override_name = "SFX",
					category = "sfx",
					max_distance = 500,
					priority = 37,
					loop_data = {
						loop_interval = -1
					}
				},
				buzz_saw_end_aced = {
--					text = "[aced buzz saw finishes]",
					override_name = "SFX",
					priority = 37,
					duration = 2,
					category = "stops",
					stops_line = "buzz_saw_aced"
				},
				card_reader_first_card = { --ovk decided to reuse this sound for hoxton revenge's laser grids activation noises, so... generic descriptions. yay.
					override_name = "SFX",
					text = "beeps",
					duration = 3,
					max_distance = 1500,
					priority = 37,
					category = "sfx"
				},
				card_reader_second_card = {
					override_name = "SFX",
					text = "rapid beeps",
					duration = 3,
					max_distance = 1500,
					priority = 37,
					category = "sfx"
				},
				camera_wrong_image = {
					override_name = "SFX",
					text = "[Camera loop active]",
					category = "sfx",
					priority = 36,
					max_distance = 3000,
					loop_data = {
						loop_interval = -1
					}
				},
				camera_wrong_image_outro = {
					override_name = "SFX",
					category = "stops",
					stops_line = "camera_wrong_image",
					text = "[Camera loop ending!]",
					loop_data = {
						loop_interval = -1
					},
					priority = 37
				},
				camera_wrong_image_outro_end = {
					override_name = "SFX",
					category = "stops",
					stops_line = "camera_wrong_image_outro",
					priority = 37
				},
				container_drop = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					duration = 3,
					text = "(cargo container drops)"
				},
				cooking_meth = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					max_distance = 500,
					text = "[cooking meth]",
					loop_data = {
						loop_interval = -1
					}
				},
				cooking_meth_stop = {
					override_name = "SFX",
					category = "stops",
--					text = "[meth cooking stops]",
					priority = 37,
					stops_line = "cooking_meth"
				},
				ecm_jammer_ready = {
					override_text = "SFX",
					category = "sfx",
					override_source_id = true,
					duration = 2,
					priority = 25,
					text = "[ECM Jammer ready]"
				},
				ecm_jammer_jam_signal = {
					override_text = "SFX",
					category = "sfx",
					override_source_id = true,
					loop_data = {
						loop_interval = -1
					},
					priority = 25,
					text = "[ECM Jammer active]"
				},
				ecm_jammer_jam_signal_stop = {
					override_text = "SFX",
					category = "stops",
--					text = "[ECM Jammer stops]",
					remove_by_source = true, --since multiple ecms may be active at once, but each ecm only plays one sound at a time, ecm sounds should be removed by source
					stops_line = "ecm_jammer_jam_signal",
					duration = 2,
					priority = 25
				},
				ecm_jammer_puke_signal = {
					override_text = "SFX",
					category = "sfx",
					override_source_id = true,
					loop_data = {
						loop_interval = -1
					},
					priority = 25,
					text = "[ECM Feedback active]"
				},
				ecm_jammer_puke_signal_stop = {
					override_text = "SFX",
					category = "stops",
--					text = "[ECM Feedback stops]",
					stops_line = "ecm_jammer_puke_signal",
					remove_by_source = true,
					duration = 2,
					priority = 25
				},
				goat_fan_woosh = {
					override_name = "SFX",
					text = "(Goat riding the fan)",
					priority = 38,
					max_distance = 1000,
					loop_data = {
						loop_interval = -1
					},
					category = "sfx"
				},
				goat_hang_scaffold = {
					override_name = "SFX",
					text = "(Goat bleats from scaffolding)",
					priority = 38,
					max_distance = 1000,
					loop_data = {
						loop_interval = -1
					},
					category = "sfx"
				},
				goat_kick = {
					override_name = "SFX",
					text = "(Goat kicks!)",
					priority = 38,
					max_distance = 700,
					category = "sfx"
				},
				goat_sleep = {
					override_name = "SFX",
					text = "(Goat snores, bleats)",
					max_distance = 1000,
					priority = 38,
					category = "sfx"
				},
				goat_says_meh = {
					override_name = "SFX",
					text = "(Goat bleats)",
					max_distance = 1000,
					priority = 38,
					category = "sfx"
				},
				goat_says_meh_loop = {
					override_name = "SFX",
					text = "(Goat bleating)",
					max_distance = 1000,
					priority = 38,
					category = "sfx",
					duration = 2,
					loop_data = {
						loop_interval = 5,
						use_random_loop_interval = true
					}
				},
				goat_lick = {
					override_name = "SFX",
					text = "(Goat licks)",
					duration = 3,
					max_distance = 1000,
					priority = 38,
					category = "sfx"
				},
				goat_headbutt = {
					override_name = "SFX",
					text = "(Goat headbutts!)",
					duration = 3,
					max_distance = 1000,
					priority = 38,
					category = "sfx"
				},
				glass_door_open = {
					text = "[glass door opens]",
					category = "sfx",
					override_name = "SFX",
					max_distance = 1000,
					priority = 37,
					duration = 2
				},
				hacking_device = {
					override_name = "SFX", --looped
					text = "[hacking noise]",
					category = "sfx",
					max_distance = 700,
					priority = 37,
					duration = 10,
					loop_data = {
						loop_interval = -1
					}
				},
				hacking_device_end = {
					category = "sfx",
					stops_line = "hacking_device",
					category = "stops"
				},				
				hos_phone_call = {
					override_name = "SFX",
					text = "[hospital phone ringing]",
					category = "sfx",
					max_distance = 2500,
					loop_data = {
						loop_interval = 2
					},
					priority = 37,
					duration = 2
				},
				hos_phone_answer = {
					override_name = "SFX",
					text = "[hospital phone answered]",
					category = "stops",
					priority = 38,
					stops_line = "hos_phone_call",
					duration = 2
				},
				inside_container = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "(cargo container clanking)"
				},
				insert_usb_stick = {
					override_name = "SFX",
					text = "[inserted USB stick]",
					duration = 2,
					max_distance = 700,
					priority = 37,
					category = "sfx"
				},
				kick_open_container = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					duration = 2,
					text = "(cargo container opens)"
				},
				keypad_button_press_03 = {
					override_name = "SFX",
					text = "keypad button pressed",
					max_distance = 1000,
					category = "sfx",
					priority = 37,
					duration = 3
				},
				keypad_wrong_code_03 = {
					override_name = "SFX",
					text = "(wrong keypad code)",
					max_distance = 1000,
					category = "sfx",
					priority = 37,
					duration = 3
				},
				keypad_correct_code_03 = {
					override_name = "SFX",
					text = "(correct keypad code)",
					max_distance = 1000,
					category = "sfx",
					priority = 37,
					duration = 3
				},
				keypad_wrong_code = {
					override_name = "SFX",
					max_distance = 1000,
					text = "[keypad wrong code]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				keypad_correct_code = {
					override_name = "SFX",
					max_distance = 1000,
					text = "[keypad correct code]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				laser_shutdown_left = {
					override_name = "SFX",
					text = "[left laser deactivates]",
					category = "sfx",
					max_distance = 3000,
					priority = 37,
					duration = 3
				},
				laser_shutdown_right = {
					override_name = "SFX",
					text = "[right laser deactivates]",
					category = "sfx",
					max_distance = 3000,
					priority = 37,
					duration = 3
				},
				laser_warning_on_left = {
					override_name = "SFX",
					text = "[left laser activates]",
					category = "sfx",
					max_distance = 3000,
					priority = 37,
					duration = 3
				},
				laser_warning_on_right = {
					override_name = "SFX",
					text = "[right laser activates]",
					category = "sfx",
					max_distance = 3000,
					priority = 37,
					duration = 3
				},
				magnetic_door_open = {
					text = "[magnetic door opens]",
					category = "sfx",
					override_name = "SFX",
					max_distance = 1000,
					priority = 37,
					duration = 2
				},
				server_room_door_open = {
					override_name = "SFX",
					text = "[server room door opens]",
					max_distance = 1500,
					category = "sfx",
					priority = 37,
					duration = 3
				},
				server_noise_loop = {
					override_name = "SFX",
					category = "sfx",
					text = "[server noises]",
					max_distance = 500,
					priority = 37,
					duration = 5,
					loop_data = {
						loop_interval = 20
					}
				},
				sah_hacking_device_data_transfer_finish = {
					override_name = "SFX",
					text = "[hacking device finished]",
					category = "sfx",
					max_distance = 700,
					priority = 37,
					duration = 2
				},
				sah_hacking_device_data_transfer_loop = {
					override_name = "SFX",
					text = "(hacking device working)",
					max_distance = 1000,
					loop_data = {
						loop_interval = -1
					},
					priority = 36,
					category = "sfx"
				},
				small_metal_door_open_02 = {
					text = "[door opens]",
					category = "sfx",
					override_name = "SFX",
					max_distance = 1000,
					priority = 37,
					duration = 2
				},
				table_saw = {
					override_name = "SFX",
					text = "(table saw grinding)",
					max_distance = 1000,
					loop_data = {
						loop_interval = -1
					},
					priority = 36,
					category = "sfx"
				},
				table_saw_stop = {
					override_name = "SFX",
					text = "(table saw stops)",
					stops_line = "table_saw",
					duration = 2,
					priority = 36,
					category = "sfx"
				},
				trip_mine_arm = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 26,
					text = "[Trip mine set to Explosive Mode]"
				},
				trip_mine_attach = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 26,
					text = "[Trip mine placed/warmup]"
				},
				trip_mine_beep_armed = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 26,
					text = "[Trip mine activated]"
				},
				trip_mine_beep_explode = {
					override_text = "SFX",
					category = "sfx",
					duration = 1,
					priority = 25,
					text = "[Trip mine explosion triggered!]"
				},
				trip_mine_disarm = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 26,
					text = "[Trip mine set to Sensor Mode]"
				},
				trip_mine_explode = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 25,
					text = "[Trip mine explosion]"
				},
				trip_mine_sensor_alarm = {
					override_name = "SFX",
					category = "sfx",
					duration = 2,
					priority = 25,
					text = "[Trip mine sensor triggered]"
				},
				vial_break_2d = {
					override_name = "SFX",
					text = "(vial breaks)",
					priority = 20,
					category = "sfx"
				},
				hlp_keycard_box_appear = {
					override_name = "SFX",
					text = "(keycard box appears)",
					duration = 2,
					category = "sfx"
				},
				hlp_keycard_box_disappear = {
					override_name = "SFX",
					text = "(keycard box poofs)",
					duration = 2,
					category = "sfx"
				},

				
	--environ/emitters
				ambience_switch_halloween_2016_state_smoke_to_ext = {
					disabled = true,
					text = "ambient outdoor spoopiness",
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				ambience_switch_halloween_2016_state_ext_to_smoke = {
					disabled = true,
					text = "ambient indoor spoopiness",
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				hos_witch_cry_loop_01 = {
					override_name = "Witch",
					override_text_color = ClosedCaptions.color_data.l4d_witch,
					text = "[Groans Softly]",
					priority = 99,
					duration = 3,
					is_locationless = true,
					loop_data = {
						loop_interval = 3,
						use_random_loop_interval = true
					},
					category = "sfx"
				},
				city_sounds_basketball = { --idk if this works, probably though. panic room 
					override_name = "SFX",
					text = "(ambient: casual basketball game)",
					priority = 50,
					category = "UNKNOWN"
				},
				city_sounds_basketball_stop = {
					stops = "city_sounds_basketball",
					category = "stops"
				},
				earthquake_siren_end = {
					override_name = "SFX",
					text = "(air raid/earthquake siren ends)",
					category = "stops",
					stops_line = "earthquake_siren"
				},
				earthquake_siren = {
					override_name = "SFX",
					text = "(air raid/earthquake siren)",
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				thunder_struck = {
					text = "[thunder rumbles]",
					override_name = "SFX",
					disabled = true,
					priority = 90,
					duration = 2,
					category = "sfx"
				},
				thunder_struck_distant = {
					text = "[distant thunder rumbles]",
					override_name = "SFX",
					disabled = true,
					priority = 90,
					duration = 2,
					category = "sfx"
				},
				emitter_rain_tag_open_window_indoor = {
					override_name = "ambient",
					override_source_id = "rain_emitter",
					is_locationless = true,
					text = "(soft rain, distant thunder outside window)",
					priority = 90,
					category = "sfx"
				},
				emitter_rain_on_skylight_indoor = {
					override_name = "ambient",
					override_source_id = "rain_emitter",
					is_locationless = true,
					text = "(soft rain against skylight)",
					priority = 90,
					category = "sfx"
				},
				emitter_lorry_idle_01 = {
					override_name = "SFX",
					text = "(lorry engine idling)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				emitter_car_idle_01 = {
					override_name = "SFX",
					text = "(car engine idling)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				emitter_car_idle_05 = {
					override_name = "SFX",
					text = "(car engine idling)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				emitter_car_idle_07 = {
					override_name = "SFX",
					text = "(car engine idling)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				emitter_car_idle_10 = {
					override_name = "SFX",
					text = "(car engine idling)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				emitter_car_idle_broken_01 = {
					override_name = "SFX",
					text = "(broken car engine idling)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				emitter_car_idle_03_gen_20 = {
					override_name = "SFX",
					text = "(car engine idling)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				emitter_truck_idle_02 = {
					override_name = "SFX",
					text = "(truck engine idling)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				helicopter_ambience_loop = {
					override_name = "SFX",
					text = "(helicopter droning)",
					max_distance = 5000,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					},
					disabled = true
				},
				helicopter_police = {
					override_name = "SFX",
					text = "(helicopter droning)",
					max_distance = 2000,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					},
					disabled = true
				},

				cop_car_01 = {
					override_name = "SFX",
					category = "sfx",
					priority = 40,
					text = "(police sirens approaching)"
				},
				cop_car_02 = {
					override_name = "SFX",
					category = "sfx",
					priority = 40,
					text = "(police sirens approaching)"
				},
				bd_police_siren_02 = {
					override_name = "SFX",
					category = "sfx",
					priority = 40,
					text = "(police sirens)"
				},
				police_radio = {
					override_name = "SFX",
					text = "(police radio chatter)",
					max_distance = 500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				policecar_approaching = { 
					override_name = "SFX",
					category = "sfx",
					priority = 40,
					text = "(police car approaching)",
					max_distance = 1500,
					loop_data = {
						loop_interval = -1 --constant
					}
				},
				policecar_arrive_stop_global = {
					override_name = "SFX",
					category = "stops",
					stops_line = "policecar_approaching",
					priority = 40,
					text = "(police car arrives"
				},
				hos_crowd_walla = {
					text = "[hospital din]",
					override_name = "SFX",
					duration = 30,
					disabled = true,
					loop_data = {
						loop_interval = -1
					}
				},
				hos_crowd_walla_stop = {
					category = "stops",
					stops_line = "hos_crowd_walla"
				},

				

	--npcs/enemy equipment
				camera_alarm_signal = {
					override_name = "SFX",
					text = "(Camera alerted!)",
					priority = 30,
					duration = 10,
					category = "sfx"
				},
				emitter_security_camera_explode = {
					override_name = "SFX",
					text = "(Camera destroyed!)",
					max_distance = 3000,
					priority = 36,
					duration = 2,
					category = "sfx"
				},
				flashbang_beep = {
					override_name = "SFX",
					text = "flashbang beeping",
					duration = 1,
					priority = 11,
					category = "sfx"
				},
				flashbang_bounce = {
					override_name = "SFX",
					text = "(flashbang bounces)",
					duration = 1,
					max_distance = 1500,
					priority = 20,
					category = "sfx"
				},
				flashbang_explosion = {
					override_name = "SFX",
					text = "(flashbang explodes!)",
					duration = 2,
					max_distance = 3000,
					priority = 20,
					category = "sfx"
				},
				flashbang_explode_sfx_player = {
					override_name = "SFX",
					text = "(flashbang blinds!)",
					priority = 20,
					category = "sfx"
				},
				grenade_gas_npc_fire = {
					override_name = "SFX",
					text = "(gas grenade launch)",
					duration = 2,
					priority = 20,
					max_distance = 2000,
					category = "sfx"
				},
				repel_loop = {
					override_name = "SFX",
					text = "(police rappelling)",
					max_distance = 1500,
					priority = 60,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				repel_stop = {
					priority = 60,
					category = "stops",
					stops_line = "repel_loop",
					remove_by_source = true
				},	
				bulldozer_collar_plate_shatter = {
					override_name = "SFX",
					text = "(Bulldozer collar shatters!)",
					max_distance = 1500,
					priority = 36,
					duration = 2,
					category = "sfx"
				},
				npc_typing_on_copy_machine_loop = {
					override_name = "SFX",
					text = "(copy machine typing)",
					priority = 90,
					loop_data = {
						loop_interval = -1
					},
					max_distance = 1000,
					category = "sfx"
				},
				npc_crowd_scream_01 = {
					override_name = "SFX",
					text = "(crowd screaming)",
					priority = 60,
					category = "sfx"
				},

				

	--music/radios
				radio = {
					override_name = "SFX",
					text = "(radio plays music)",
					priority = 40,
					loop_data = {
						loop_interval = -1
					},
					distance = 1700,
					category = "sfx"
				},
				christmas_radio = { --i'm okay with having a larger range for this one because you can always shoot the radio
					override_name = "SFX",
					text = "radio plays Christmas music",
					max_distance = 2000,
					loop_data = {
						loop_interval = -1
					},
					priority = 40,
					category = "sfx"
				},
				christmas_radio_end = {
					override_name = "SFX",
					text = "(radio stops)",
					stops_line = "christmas_radio",
					duration = 2,
					priority = 40,
					category = "stops"
				},
				halloween_radio_loop_2013 = {
					override_name = "SFX",
					text = "radio plays spooky music",
					max_distance = 1000,
					loop_data = {
						loop_interval = -1
					},
					priority = 60,
					category = "sfx"
				},
				jukebox_shuffle = {
					override_name = "SFX",
					text = "(radio music plays)",
					max_distance = 1700,
					loop_data = {
						loop_interval = -1
					},
					priority = 40,
					category = "sfx"
				},
				jukebox_shuffle_stop = {
					override_name = "SFX",
					text = "(radio music stops)",
					stops_line = "jukebox_shuffle",
					duration = 2,
					priority = 40,
					category = "sfx"
				},
				rvd_radio_music_start = {
					override_name = "SFX",
					text = "(radio music)", --these are mostly just different so that I can tell them apart
					priority = 40,
					loop_data = {
						loop_interval = -1
					},
					distance = 700,
					category = "sfx"
				},
				rvd_radio_music_stop = {
					override_name = "SFX",
--					text = "(radio music stops)",
					category = "stops",
					stops_line = "rvd_radio_music_start"					
				},
				diegetic_club_music = {
					override_name = "SFX",
					text = "[loud club music]",
					loop_data = {
						loop_interval = -1
					},
					category = "sfx",
					priority = 90,
					max_distance = 3000
				},
				diegetic_club_music_stop = {
					override_name = "SFX",
					text = "[club music stops]",
					category = "stops",
					stops_line = "diegetic_club_music"
				},
				diegetic_lounge_music = {
					override_name = "SFX",
					text = "[lounge music]",
					loop_data = {
						loop_interval = -1
					},
					category = "sfx",
					priority = 90,
					max_distance = 3000
				},

				
	--alarms
				art_galley_alarm_on_slow_fade = { --(sic)
					override_name = "SFX",
					text = "[ALARM KLAXON]",
					priority = 37,
					duration = 60,
					category = "sfx"					
				},
				art_gallery_alarm_off = {
					stops_line = "art_galley_alarm_on_slow_fade",
					category = "stops"
				},
				bank_alarm_on_slow_fade = {
					override_name = "SFX",
					text = "[bank alarm!]",
					priority = 37,
					duration = 60,
					category = "sfx"					
				},
				alarm_kosugi_on_slow_fade_02 = {
					override_name = "SFX",
					text = "[alarm sounds]",
					duration = 30,
					priority = 37,
					category = "sfx"
				},
				alarm_museum_on_slow_fade = {
					override_name = "SFX",
					text = "[ALARM KLAXON]",
					duration = 30,
					priority = 37,
					category = "sfx"
				},
				alarm_countdown_loop = {
					override_name = "SFX",
					max_distance = 2000,
					text = "[Slow alarm countdown ticking]",
					category = "sfx",
					loop_data = {
						loop_interval = -1 --constant
					},
					priority = 37
				},
				alarm_countdown_ticking_down_10sec = {
					override_name = "SFX",
					max_distance = 2000,
					text = "[Slow alarm countdown: 10s left!",
					category = "sfx"
				},
				alarm_countdown_loop_stop = {
					override_name = "SFX",
					text = "[Alarm countdown stops]",
					category = "stops",
					stops_line = "alarm_countdown_loop",
					duration = 2,
					priority = 37
				},
				hitec_lotec_alarm_slow_fade = {
					override_name = "SFX",
					text = "[alarm]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				hos_alarm = {
					override_name = "SFX",
					text = "(hospital alarm!)",
					category = "sfx",
					duration = 30
				},



	--general heist sfx/explosions and the like;misc sfx
				bell_ring = {
					override_name = "SFX",
					text = "(bell ringing)",
					duration = 5,
					category = "sfx"
				},
				birds_fly_away = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "(birds squawk, fly away)"
				},
				branch_bank_phone_call = {
					override_name = "SFX",
					text = "[phone ringing]",
					max_distance = 1000,
					category = "sfx",
					priority = 38,
					duration = 30
				},
				branch_bank_phone_call_pickup = {
					override_name = "SFX",
					text = "[phone answered]",
					category = "stops",
					priority = 38,
					duration = 30
				},
				c4_explode_metal = {
					override_name = "SFX",
					max_distance = 5000,
					text = "(explosion, metal broken)",
					priority = 37,
					category = "sfx"
				},
				car_land_in_water = {
					override_name = "SFX",
					category = "sfx",
					duration = 3,
					priority = 50,
					text = "[car lands in water]"
				},
				car_tumble_hit = {
					override_name = "SFX",
					category = "sfx",
					duration = 3,
					priority = 50,
					text = "[car impact]"
				},
				cellphone_01_no_answer = {
					override_name = "SFX", --looped
					text = "[cellphone ringing]",
					max_distance = 2500,
					priority = 37,
					category = "sfx"
				},
				cellphone_01_answer = {
					override_name = "SFX",
					text = "[cellphone answered]",
					priority = 37,
					category = "sfx"
				},
				door_wooden_kicked_in = {
					override_name = "SFX",
					text = "(door kicked open)",
					max_distance = 2000,
					duration = 2,
					priority = 37,
					category = "sfx"
				},

				elevator_doors_open = {
					override_name = "SFX",
					text = "(elevator doors open)",
					max_distance = 1500,
					duration = 4,
					priority = 37,
					category = "sfx"
				},
				elevator_doors_close = {
					override_name = "SFX",
					text = "(elevator doors close)",
					max_distance = 1500,
					duration = 4,
					priority = 37,
					category = "sfx"
				},
				elevator_ding = {
					override_name = "SFX",
					text = "[elevator dings]",
					category = "sfx",
					max_distance = 4000,
					priority = 37,
					duration = 2
				},
				fire_sprinkler_start = {
					override_name = "SFX",
					text = "(fire sprinkler activates)",
					override_source_id = "fire_sprinkler",
					max_distance = 2000,
					priority = 38,
					category = "sfx"
				},
				fire_sprinkler_stop = {
					override_name = "SFX",
--					text = "(fire sprinkler stops)",
					stops_line = "fire_sprinkler_start",
					priority = 38,
					category = "stops"
				},
				fire_hiss = {
					override_name = "SFX",
					text = "(fire hisses)",
					override_source_id = "fire_hiss",
					max_distance = 2000,
					priority = 38,
					category = "sfx"
				},
				hlp_poof_big = {
					override_name = "SFX",
					text = "(loud poof, sparkles)",
					duration = 2,
					category = "sfx"
				},
				hlp_green_fire = {
					override_name = "SFX",
					text = "(hellfire burning, distant screaming)",
					max_distance = 5000,
					loop_data = {
						loop_interval = -1
					},
					category = "sfx"
				},
				hlp_green_fire_stop = {
					override_name = "SFX",
					stops_line = "hlp_green_fire",
					category = "stops"
				},
				hlp_bag_door_loop_start = {
					override_name = "SFX",
					text = "(ambient: loot bag door)",
					category = "sfx",
					max_distance = 2500,
					loop_data = {
						loop_interval = -1
					}
				},
				hlp_bag_door_loop_stop = {
					override_name = "SFX",
					stops_line = "hlp_bag_door_loop_start",
					category = "stops"
				},
				hlp_ending_choir_start = {
					text = "[angelic choir]",
					category = "sfx",
					max_distance = 2000,
					loop_data = {
						loop_interval = -1
					}
				},
				hlp_ending_choir_stop = {
					category = "stops",
					stops_line = "hlp_ending_choir_start"
				},
				hos_pa_announcement_emergency = {
					override_name = "SFX", --chatter?
					text = "(hospital PA announces emergency)",
					duration = 5,
					category = "sfx"
				},
				hos_pa_announcement_generic = {
					override_name = "SFX",
					text = "(hospital PA announcement)",
					duration = 5,
					category = "sfx"
				},
				hos_wardrobe_change = {
					text = "[clothes rustling]",
					override_name = "SFX",
					category = "sfx",
					duration = 5
				},
				hos_fake_sentry_place = {
					text = "[fake sentry placed]",
					override_name = "SFX",
					category = "sfx",
					duration = 3
				},
				hos_pa_announcement_all = {
					override_name = "SFX",
					text = "(hospital PA announcement)",
					duration = 5,
					category = "sfx"
				},
				large_fire = {
					override_name = "SFX",
					text = "(fire burning)",
					max_distance = 1000,
					loop_data = {
						loop_interval = -1
					},
					priority = 60,
					category = "sfx"
				},
				large_fire_stop = { --needs a stops_line
					override_name = "SFX",
					text = "(fire stops)",
					priority = 60,
					category = "stops"
				},
				metal_door_knock = {
					override_name = "SFX",
					text = "(door knocking)",
					max_distance = 2000,
					duration = 2,
					override_source_id = "metal_door",
					priority = 37,
					category = "sfx"
				},
				metal_door_open = { --used for some wooden doors so i can't really be specific
					override_name = "SFX",
					text = "(door opens)",
					max_distance = 2000,
					override_source_id = "metal_door",
					priority = 37,
					category = "sfx"
				},
				fence_gate_close = {
					override_name = "SFX",
					text = "(fence gate closes)",
					max_distance = 2000,
					duration = 2,
					priority = 37,
					category = "sfx"
				},
				fence_gate_open = {
					override_name = "SFX",
					text = "(fence gate opens)",
					max_distance = 2000,
					duration = 2,
					priority = 37,
					category = "sfx"
				},
				gate_fence_street_open = {
					override_name = "SFX",
					text = "(fence gate opens)",
					max_distance = 2000,
					duration = 2,
					priority = 37,
					category = "sfx"
				},
				generic_door_metal_open = {
					override_name = "SFX",
					text = "(metal door opens)",
					max_distance = 2000,
					duration = 2,
					priority = 37,
					category = "sfx"
				},
				hand_dryer_on = {
					override_name = "SFX",
					text = "(hand dryer whirring)",
					loop_data = {
						loop_interval = -1
					},
					max_distance = 1000,
					priority = 38,
					category = "sfx"
				},
				hand_dryer_off = {
					override_name = "SFX",
					text = "(hand dryer deactivates)",
					stops_line = "hand_dryer_on",
					duration = 2,
					priority = 38,
					category = "sfx"
				},
				Play_howl_reverb = {
					override_name = "SFX",
					text = "(spooky howl)",
					priority = 50,
					category = "sfx"
				},
				phone_01_no_answer = {
					override_name = "SFX",
					text = "[phone ringing]",
					max_distance = 1000,
					category = "sfx",
					priority = 38,
					duration = 30
				},
				phone_02_no_answer = {
					override_name = "SFX",
					text = "[phone ringing]",
					max_distance = 1000,
					category = "sfx",
					priority = 38,
					duration = 30
				},
				phone_03_no_answer = {
					override_name = "SFX",
					text = "[phone ringing]",
					max_distance = 1000,
					category = "sfx",
					priority = 38,
					duration = 30
				},
				phone_04_no_answer = {
					override_name = "SFX",
					text = "[phone ringing]",
					max_distance = 1000,
					category = "sfx",
					priority = 38,
					duration = 30
				},
				prison_transport_sliding = {
					text = "(transport truck screeches!)",
					category = "sfx",
					override_name = "SFX",
					duration = 5,
					priority = 36
				},
				queue_beep = {
					override_name = "SFX",
					text = "(bank queue beep)",
					priority = 50,
					max_distance = 2000,
					category = "sfx"
				},
				swat_explosion = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					max_distance = 5000,
					text = "(SWAT explosive breaches wall)"
				},
				telephone_booth_ringing = {
					override_name = "SFX",
					text = "[telephone booth ringing]",
					max_distance = 1000,
					category = "sfx",
					priority = 38,
					duration = 30
				},
				telephone_booth_ringing_stop = {
					override_name = "SFX",
					text = "[telephone booth stops]",
					category = "stops",
					priority = 38,
					duration = 2
				},
				tick_tock_play = {
					text = "[clock ticking loudly]",
					category = "sfx",
					loop_data = {
						loop_interval = -1
					}
				},
				tick_tock_stop = {
					category = "stops",
					stops_line = "tick_tock_play"
				},
				tire_blow = {
					text = "(tire pops)",
					category = "sfx",
					max_distance = 1000
				},
				toilet_flush = {
					override_name = "SFX",
					text = "(toilet flushing)",
					priority = 38,
					category = "sfx"
				},
				whistling_attention = {
					text = "[whistle]",
					fallback_name = "Insider",
					category = "mission_dialogue",
					priority = 37,
					duration = 3
				},
				window_small_shatter = {
					category = "sfx",
					text = "[glass shatters!]",
					priority = 50,
					duration = 2
				},
				van_rear_door_close = {
					category = "sfx",
					text = "[rear door closes]",
					priority = 50,
					duration = 2
				},



				vo_special = { --i have no idea what this is or when it plays or why
					category = "UNKNOWN",
					disabled = true
				},


	--contractor vo
				Play_pln_drl_wrn_snd = {
					override_name = "Bain",
					text = "Remember to keep bystanders away from the drill! They'll get alerted just from the noise!",
					category = "contractor_vo",
					is_locationless = true,
					priority = 39,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Remember to keep bystanders away from the drill!",
								"Try to keep others from getting near the drill.",
								"Make sure no-one else comes near the drill.",
								"Let's try to have the drill do its thing without others coming near it.",
								"Keep others clear of the drill."
							},
							{
								"The noise could blow this wide open.",
								"They might notice the sound.",
								"They'll hear it and get suspicious!",
								"The noise might tip 'em off."
							}
						}
					}
				},
				Play_pln_spawn_01 = {
					override_name = "Bain",
					text = "Security just dispatched another shift! Stay alert!",
					priority = 10,
					category = "contractor_vo",
					is_locationless = true,
					line_variations = {
						standard_mode = {
							"Keep it dark and silent, gang! More security is incoming!",
							"Uhh- I didn't expect this! Gang, more security is arriving!",
							"Keep an eye out, clowns! They just ramped up the security!",
							"Stay cool, clowns, but they're beefing up the security here.",
							"Look sharp, gang! More security on the way!",
							"Wait, what the- more security is on its way! This was not scheduled!",
							"Security just dispatched another shift! Stay alert!",
							"I'm picking up increased radio traffic! Security is on its way to the scene!"
						}
					}
				},
				Play_pln_polin_01 = {
					text = "Twenty until police arrive!",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"Cops in twenty- gear up!",
							"Twenty until police arrive!",
							"Police are closing in- they're here in twenty seconds!",
							"Twenty seconds- cops closing in!",
							"Twenty and counting- cops imminent!"
						}
					}
				},
				Play_pln_polin_02 = {
					text = "Thirty until police arrive!",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"Police will arrive in approximately thirty seconds!",
							"Police coming in hot- thirty seconds!",
							"In thirty seconds you got company- cops incoming!",
							"Cops are about thirty seconds away!",
							"About thirty seconds until police arrive!",
							"Police are closing in- they'll be here in thirty seconds!",
							"Thirty seconds until the police arrive!"
						}
					}
				},
				Play_pln_polin_03 = {
					text = "Cops running up- forty seconds until confrontation!",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"You got the cops coming down on you in forty seconds!",
							"Police arriving at your location in forty seconds!",
							"Cops running up- forty seconds until confrontation!"
						}
					}
				},
				play_pln_gen_snip_01 = {
					text = "Police are going to snipers!",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"Head down! They're rolling in a Sniper team!",
							"Be careful! They have Snipers incoming!",
							"Yeah, they just put Snipers into play!",
							"They're shifting long-range teams into position!",
							"They're gonna hit you with Snipers!",
							"Snipers just got activated- stay sharp!",
							"Things are heating up- those are Snipers!",
							"They've had enough- they're going to Snipers!",
							"They've got Snipers in position!",
							"They're upping the ante with Snipers!",
							"Well, those are Snipers!",
							"They're deploying Snipers- stay low!",
							"Get your heads down- they've called in Snipers!",
							"Snipers are almost moved in!"
						}
					}
				},
				play_pln_gen_pol_01 = {
					text = "Well, here's our cops!",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"The police are here! Stand 'em down!",
							"Well, here's our cops!",
							"Police units just got here!",
							"And here they are!",
							"Police!",
							"They're coming in force!",
							"Get busy- police are here!",
							"We got some company, folks!",
							"Cops responding... here we go!",
							"Here come the cops!",
							"Police are on the scene!",
							"Well, here come the damn cops!"
						}
					}
				},
				Play_ban_b10 = {
					text = "(assault survived)",
					duration = 7,
					category = "contractor_vo",
					is_locationless = true,
					override_name = "Bain",
					priority = 40,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"You just gave me a few more grey hairs!",
								"Goddammit, you had me worried back there!",
								"That could have gone better, but it definitely could have gone worse.",
								"You're gonna give me a heart attack!",
								"Glad you guys weathered that storm- it sure was rough for a while.",
								"Almost lost it there, but you came through okay.",
								"[exhales] That was closer than I'd like, people.",
								"I'm too old for this!"
							},
							{
								"Now patch yourselves up, and let's get back in the game.",
								"Now recess is over, fellas. Let's get back in business.",
								"Let's ready up and back to work.",
								"You earned this breather- now it's time to work.",
								"Now let's get back in the game, fellas.",
								"Now get to work, we don't have all day.",
								"Now ready up and let's get back to work.",
								"Now get back on your feet- you got work to do."
							}
						}
					}
				},
				Play_ban_b11 = {
					text = "(assault beaten)",
					duration = 7,
					category = "contractor_vo",
					is_locationless = true,
					override_name = "Bain",
					priority = 40,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"People, that was well handled.",
								"Good work, fellas, you're clear!",
								"You earned this breather. Now it's time to work.",
								"You did good! Reminds me of myself, back in the day.",
								"Good work back there.",
								"Good work. Let's keep it moving.",
								"You did good, fellas, but no time for relaxing. Get the job done.",
								"Alright, now that's taken care of.",
								"You should feel good. I know I do."
							},
							{
								"You're making good progress, so get crackin'.",
								"We don't have long until the next assault, folks.",
								"Now focus on getting things done.",
								"You just bought yourself a little time. make the best of it.",
								"You bought yourself a breather, so start breathing and get it done.",
								"You did good work back there. Take advantage of it now.",
								"They'll be back for more, so don't mess around."
							}
						}
					}
				},
				Play_ban_b12 = {
					text = "(assault easily beaten)",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					duration = 10,
					priority = 40,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"You keep doing that, and we'll pull off this caper just fine!",
								"[triumphant laughter] Gonna be a lot of early retirement forms filed today!",
								"Kickass, fellas!",
								"Wow, never seen anything like that!",
								"That's how you do it, people!",
								"That oughta teach them some manners!",
								"Waaay to go! That was seriously inspiring!",
								"I bet they don't know what hit 'em!",
								"[incredulous chuckle] I'll be damned... they backed off!",
								"That was a hell of a beating you just handed out!",
								"They weren't expecting that, for goddamn sure!",
								"Bunch of gladiators is what you are!"
							},	
							{	
								"I don't meant holler at you, but you did great back there!",
								"I'm sure they'll come back for more, so use your time well, now!",
								"Now don't lose your advantage, guys!",
								"Now let me give you a tip: Do that again!",
								"Now make what you did count!",
								"Now take advantage of the situation- it won't last for long!",
								"Okay, you earned your chance here- don't waste it!",
								"Still, you only won the battle, not the war! Back to the plan, guys!",
								"Take advantage of the situation- it won't last forever!"
							}
						}
					}
				},
				Play_loc_b11 = {
					text = "(assault beaten)",
					duration = 7,
					category = "contractor_vo",
					is_locationless = true,
					override_name = "Locke",
					priority = 40,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Perfect job, friends.",
								"I could only have done a tiny bit better myself, yeah?",
								"That's how to get things done, yeah?",
								"Poppin' work, friends.",
								"Nice work, back there.",
								"Well done, dear friends.",
								"You got that done well.",
								"That went right the way it was supposed to."
							},	
							{
								"Take advantage of these last few seconds of calm, yeah?",
								"A short breather, but they'll be back.",
								"But they won't be gone long, friends.",
								"You got a little time to breathe, but not much.",
								"Things are running smoothly. Keep up the pace, yeah?",
								"But we haven't seen the last of them.",
								"You got a little bit of time to regroup."
							}
						}
					}
				},
				Play_loc_b12 = {
					text = "(assault easily beaten)",
					duration = 7,
					category = "contractor_vo",
					is_locationless = true,
					override_name = "Locke",
					priority = 40,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"[approving] That's what Locke likes to see!",
								"You guys know how to kick the living kak out of people!",
								"Locke is very pleased with this performance!",
								"You can color Locke suitably impressed, friends!",
								"Going to be interesting to see if that jumps them up, yeah?",
								"Well, now, those kaks weren't ready for that, yeah?",
								"Ahh, that's how we stop those bliksems!",
								"Undertaker's going to be working extra!",
								"Blerrie! You got them on the run!",
								"Keep going like that, and we'll get this sorted in no time!"
							},	
							{
								"But they're coming back for more soon, yeah? No time to waste.",
								"Don't change tactics. Things are going well, yeah?",
								"Keep earning victories, friends!",
								"You've got a hard-fought chance, friends. Don't waste it.",
								"Don't lose your temper- keep on it, yeah?",
								"Whatever you did, friends, just keep doing it!",
								"It's not over yet, friends!",
								"Take advantage of your temporary edge, friends."
							}
						}
					}
				},
				Play_pln_ctci_01 = {
					text = "(keep the civilians down)",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"Keep the people in check!",
							"Don't let anyone call the cops! Keep them down!",
							"Get the people on the floor! Keep them down!",
							"Keep the crowd in control!",
							"Control your civilians, guys!",
							"Keep an eye on the civilians!"
						}
					}
				},
				Play_pln_indif_01 = {
					text = "(force increase warning)",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"Check your six- tougher SWATs are rolling in!",
							"Give 'em hell, guys! They sure intend to treat you the same way- new units are rolling in!",
							"SWAT is stepping up, guys! This will get hairy!",
							"Shit! Police just called in heavy-duty reinforcements!",
							"A lot more cops are coming in- seem to have more weaponry as well!",
							"Okay, the cops, they just stepped up their efforts- tougher units incoming!",
							"More units! More guns coming your way, gang!",
							"More cops in heavy gear approaching! Show 'em who's boss!",
							"Bite down! The cops are throwing in another new gear. Heavy units moving in!",
							"Shit, we got bad cops moving in! REAL bad cops! Keep your heads down!",
							"Give them hell, guys! They sure intend to treat you the same way- new units are rolling in!"
						}
					}
				},
				Play_ban_b02c = {
					text = "(assault incoming warning)",
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"Alright, ramblers, let's get rambling!",
							"Be ready for anything!",
							"Brace yourselves!",
							"Deep breath!",
							"Don't die!",
							"Good luck!",
							"Good luck, everybody!",
							"Good luck, people!",
							"Here they come!",
							"Let 'em have it!",
							"Now brace for it!",
							"Now, give them hell!",
							"Now, give them hell!",
							"Now...!",
							"Stay frosty!",
							"They're coming!",
							"This is it!",
							"Watch yourself!",
							"You got this!"
						}
					}
				},
				Play_loc_b02c = {
					text = "(assault incoming warning)",
					override_name = "Locke",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					line_variations = {
						standard_mode = {
							"Calm before the hurricane, yeah?",
							"Get ready, my friends!",
							"Stay alive, friends!",
							"Time to bring the pigs back in!",
							"Be ready for anything, friends!",
							"Show those kaks what you're made of, friends!",
							"Get ready, everyone!",
							"NOW, friends!",
							"They're coming!",
							"Give those bliksems hell!",
							"Show those dwankies!",
							"Best of luck, dear friends!",
							"Good luck, friends!",
							"Here they come!",
							"Go get 'em, friends!",
							"Under control, friends!",
							"Keep alert!",
							"Deep breath before the plunge, friends!"
						}
					}
				},
				Play_ban_h01x = {
					category = "contractor_vo",
					is_locationless = true,
					override_name = "Bain",
					text = "You need to take hostages- tie them down!",
					priority = 37,
					line_variations = {
						standard_mode = {
							"You need to take hostages! Use your cable ties and tie them down!",
							"You need to take hostages, tie them down! Or make a law enforcer cuff themself.",
							"You need to take hostages to be able to trade! Tie someone down with your cable ties!"
						}
					}
				},
				Play_loc_h01x = {
					category = "contractor_vo",
					is_locationless = true,
					override_name = "Locke",
					text = "You've got to take some hostages- tie them down!",
					priority = 37,
					line_variations = {
						standard_mode = {
							"You've got to take some hostages if you want better control of the situation, yeah?",
							"Go ahead and tie up some civilians to bring the situation under control."
						}
					}
				},
				play_pln_gen_count_01 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's one!"
				},
				play_pln_gen_count_02 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					text = "That's two!"
				},
				play_pln_gen_count_03 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's three!"
				},
				play_pln_gen_count_04 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's four!"
				},
				play_pln_gen_count_05 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's five!"
				},
				play_pln_gen_count_06 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's six!"
				},
				play_pln_gen_count_07 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's seven!"
				},
				play_pln_gen_count_08 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's eight!"
				},
				play_pln_gen_count_09 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's all of them. Let's get out of here!"
				},
				play_pln_gen_count_10 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "That's enough, if you want to leave!"
				},
				play_pln_gen_count_11 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "Nice, that's a quarter!"
				},
				play_pln_gen_count_12 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "Cool, that's half of it!"
				},
				play_pln_gen_count_13 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "Halfway there!"
				},
				play_pln_gen_count_14 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "Almost got it all!"
				},
				play_pln_gen_count_15 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "Just two more!"
				},
				play_pln_gen_count_16 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "One more!"
				},
				play_pln_gen_count_17 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					priority = 37,
					text = "Keep 'em coming!"
				},
				play_pln_gen_lkgo_01 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					text = "Keep it up and we're going to pull it off!",
					priority = 37,
					line_variations = {
						standard_mode = {
							"Good, you're on track! Keep going!",
							"Keep it up and we're going to pull it off!",
							"Good job! Carry on!",
							"Things are looking very good for now.",
							"Really great so far.",
							"I admit, I thought it would go this well.",
							"We're following the plan. Good so far.",
							"Really, really impressive.",
							"I think you're gonna do this if you keep it up!",
							"Everything's going to plan.",
							"Plan looks good so far. Just stay the course.",
							"I believe you can do this.",
							"Keep it together, keep it up!",
							"We're making progress.",
							"Right now, you're succeeding.",
							"You guys are nailing it!",
							"Keep it up, people!",
							"I'm pleased, but I'm not surprised.",
							"Right now, you're making me look very smart!",
							"You guys are doing great!"
						}
					}
				},
				Play_ban_r01 = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					text = "Cops are freeing civilians!",
					duration = 5,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Rescue units are on the scene. They're going after the civilians.",
								"They sent in an extraction team to free the civilians.",
								"Looks there's an extraction team coming for the civilians, stay sharp!",
								"Looks like they sent in an extraction team to free the civilians, folks!",
								"There's an extraction team coming to free the civilians."
							},
							{
								"Make sure they return empty-handed - or in a bag.",
								"Stay sharp!",
								"Stay sharp! Let 'em know you're running it!",
								"Don't let them take a single one!",
								"Civilians are an asset- you need to protect your assets!",
								"Watch 'em close."
							}
						}
					}
				},
				Play_ban_h01a = {
					override_name = "Bain",
					category = "contractor_vo",
					is_locationless = true,
					text = "(Good going- take hostages to slow down the cops!)",
					duration = 4,
					priority = 10,
					line_variations = {
						standard_mode = {
							"Now that you've taken a hostage, the police assault is going to take more time.",
							"Every hostage you take slows the cops down.",
							"That hostage is going to slow the cops down!",
							"Good thinking! Sometimes, taking a hostage is the only answer!",
							"I don't have to remind you- every hostage is an asset!",
							"Good move- that hostage will cost them time!",
							"I see you took a hostage- that'll slow them down for a little while.",
							"Good- make the cops think twice about comin' in here!",
							"That hostage will definitely make them have to regroup- buys you more time!"
						}
					}
				},
				Play_loc_h01a = {
					override_name = "Locke",
					category = "contractor_vo",
					is_locationless = true,
					text = "Kerels work slower when you have civvies!",
					duration = 4,
					priority = 10,
					line_variations = {
						standard_mode = {
							"Kerels work slower when you have civvies!",
							"Great, friends! More hostages will slow the coppers!",
							"Use the civvies to your advantage!",
							"Nicely done! That will make the kerels hesitate!",
							"Great! Use those civvies to your advantage!",
							"Grabbing hostages slows the kerels even more!",
							"Coppers are going to be slower now!"
						}
					}
				},





			--player dialogue/callouts
			
			--enemy dialogue/chatter
			
			--heist-specific mission dialogue

			
			
			












--heister speech
	--heister reactions/dialogue
				g01 = {
					text = "Go downstairs!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Down the stairs.",
									"Downstairs."
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Down the stairs.",
									"Downstairs."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please follow the stairway down.",
									"-follow the stairway down."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = { --technically has loud/stealth sound variations
									"Downstairs!",
									"Down the stairs!"
								}
							}
						}
					}
				},
				g02 = {
					text = "Go upstairs!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Upstairs!",
									"Up the stairs!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Up, up!",
									"Keep going up!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please follow the stairway up.",
									"-follow the stairway up."
								}
							}									
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Upstairs!",
									"Up the stairs!"
								}
							}
						}
					}
				},
				g03 = {
					text = "Go left!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "To the left!",
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"To the left!",
									"Left!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please keep to the left.",
									"-keep to the left."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"To the left!",
									"Left!"
								}
							}
						}
					}
				},
				g04 = {
					text = "Go right!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "To the right!",
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"To the right!",
									"Right!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please keep to the right.",
									"-to the right."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"To the right!",
									"Right!"
								}
							}
						}
					}
				},
				g05 = {
					text = "Go up!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Up, up!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Up, up!",
									"Keep going up!"
								},
								assault_mode = {
									"Up, up!",
									"Up!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"-head up.",
									"Please head up."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Up, up!",
									"Keep going up!"
								},
								assault_mode = {
									"Up, up!",
									"Up!"
								}
							}
						}
					}
				},
				g06 = {
					text = "Go down!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Down, down!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Down!",
									"Keep going down!"
								},
								assault_mode = {
									"Down, down!",
									"Keep going down!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"-head down.",
									"Please head down."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Down!",
									"Keep going down!"
								},
								assault_mode = {
									"Down, down!",
									"Keep going down!"
								}
							}
						}
					}
				},
				g07 = {
					text = "We need to get out!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Get out!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"We've got to get out.",
									"We've got to get out!",
									"Get out!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please head to the exit.",
									"[distorted] Please head to the exit."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Get out!",
									"We've gotta get out!"
								}
							}
						}
					}
				},
				g08 = {
					text = "Get in!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Get in!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Inside!",
									"Get in!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please make your way inside.",
									"-make your way inside."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Inside!",
									"Get in!"
								}
							}
						}
					}
				},
				g09 = {
					text = "Hurry!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"C'mon! Hurry!",
									"Hurry up!",
									"Faster, faster!",
									"Hurry!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"C'mon, faster!",
									"Double time!",
									"Hurry up!",
									"Hurry, hurry!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"We are in a hurry.",
									--+ spanish one i can't decipher
									"-comme le magasin de cigarettes est fermé. (-as the cigarette store is closed.)"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Hurry, hurry!",
									"HURRY!",
									"Hurry up!",
									"C'mon, faster!"
								}
							}
						}
					}
				},
				g10 = {
					text = "Careful...",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Careful, now!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Careful, now!",
									"Careful!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Faites attention. (Pay attention).",
									"Take care."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Careful, now!",
									"Careful!"
								}
							}
						}
					}
				},
				g11 = {
					text = "Wrong way!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"This is not the way!",
									"Not this way!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"This is the wrong way!",
									"Not this way!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"This is the wrong way.",
									"-is the wrong way.",
									"C'est la mauvaise direction. (This is the wrong way.)"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"This is the wrong way!",
									"Not this way!"
								}
							}
						}
					}
				},
				g12 = {
					text = "This way",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "This way!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"This way!",
									"We're on the right track."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"This is the right way.",
									"C'est la bonne direction. (This is the right way.)"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"This is right!",
									"This way!"
								}
							}
						}
					}
				},
				g13 = {
					text = "Let's go.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Come on."
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Come on.",
									"Let's go."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Let's go.",
									"Allons-y. (Let's go.)"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Come on!",
									"Let's go!"
								}
							}
						}
					}
				},
				g14 = {
					text = "This is it!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"This is it.",
									"Here it is!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"This is it.",
									"This is the place."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"You have arrived-",
									"You have arrived at your destination."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"This is it!",
									"This is the place!"
								}
							}
						}
					}
				},
				g15 = {
					text = "Over there!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							text = "Over there!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Over there!",
									"There!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please pay attention.",
									"-pay attention."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Over there!",
									"There!"
								}
							}
						}
					}
				},
				g16 = {
					text = "Keep defending!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Hold 'em off!",
									"Keep 'em away!",
									"Keep defending!",
									"Hold the fort!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Keep defending!",
									"Keep 'em away!",
									"Hold the fort!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Keep defending!",
									"Left!"
								}
							}
						}
					}
				},
				g17 = {
					text = "Time to go!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "We're out of here!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"We've got to get out of here.",
									"Time to go."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"We should go.",
									"[distorted] We should go."
								}
							}
						},
						rb15 = {
							line_variations = {
								assault_mode = {
									"Let's be off!",
									"Let's head out!",
									"Time to go!",
									"We gotta get outta here!"
								},
								standard_mode = {
									"We've got to get out of here.",
									"Time to go."
								}
							}
						}
					}
				},
				g18 = {
					text = "Move faster!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Move!"									
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Move!",
									"Move it."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Hurry up.",
									"Hurry up. [tape rewinding] Más rápido, imbécil. (Faster, idiot.)",
									"-proceed.",
									"Please proceed."
								}
							}
						},
						rb15 = {
							line_variations = {
								assault_mode = {
									"Faster, faster!",
									"MOVE!",
									"Shift it!",
									"Let's go, let's GO!",
									"Faster, c'mon!",
									"Move it!",
									"Come on!",
									"Get a move on!",
									"Leg it, drongo!",
								},
								standard_mode = {
									"Move your arse, you tosser!",
									"Move, move!",
									"You're not jogging in the park, ya idiot!",
									"Move it!",
									"Crikey, get a move on, then!",
									"Move!",
									"Run faster, dipshit!",
									"Christ, can you move any SLOWER!?",
									"Move it, you drongo!"
								}
							}
						}
					}
				},
				g19 = {
					text = "Go straight!",
					category = "heister_dialogue",
					priority = 40,
					rb3 = {
						text = "Straight ahead!"							
					},
					rb4 = {
						line_variations = {
							standard_mode = {
								"Straight on!",
								"Straight ahead!"
							}
						}
					},
					rb9 = {
						line_variations = {
							standard_mode = {
								"Your destination is directly ahead.",
								"Your destination is ahead.",
								"Your destination [tape skips] directly ahead.",
								"Your destination [tape skips] ahead."
							}
						}
					},
					rb15 = {
						line_variations = {
							standard_mode = {
								"Straight on!",
								"Straight ahead!"
							}
						}
					}
				},
				g20 = {
					text = "Jump down!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Jump down!",
									"Down here!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Jump down!",
									"Down here!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please jump.",
									"-jump."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Jump down!",
									"Down there!"
								},
								assault_mode = {
									"Jump down!",
									"Down here!"
								}
							}
						}
					}
				},
				g21 = {
					text = "Placed drill",
					category = "heister_dialogue",
					priority = 40,
					variants = { 
						rb3 = {--1s delay for wolf
							line_variations = {
								standard_mode = {
									"Drill's in place.",
									"Drill's in place!",
									"Drill up and running!"											
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Drill's in place.",
									"Drill in place.",
									"Drill mounted."
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"The drill is active. Please stay clear of the moving parts.",
									"The drill is securely fixed."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Drilling!",
									"Got the drill up.",
									"Drill placed.",
									"I've put up the drill."
								},
								assault_mode = {
									"Drill in place!",
									"Drill up!",
									"We're drilling!"
								}
							}
						}
					}
				},
				g22 = {
					text = "Keep drilling, you piece of shit!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Keep drilling, you piece of shit!"
						}
					}
				},
				g23 = {
					variants = {
						text = "Shoot them!",
						category = "heister_dialogue",
						priority = 40,
						rb3 = {
							line_variations = {
								standard_mode = {
									"Shoot 'em!",
									"Get 'em!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Shoot 'em!",
									"Shoot!"
								}
							}
						},
						rb15 = { --sydney does not have this line
							disabled = "missing"
						}
					}
				},
				g24 = {
					text = "(Victorious)",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = { --no loud/stealth variations
									"Fantastic! We pulled it off!",
									"YEAH! We made it!",
									"We did it!",
									"We made it!",
									"Aaaand... SCORE!",
									"[whoops] We're in the clear!",
									"[exuberant whooping]",
									"Checkmate, motherfucker!",
									"FBI's Most Wanted? Check! Bullet wounds? Check! Rich as a motherfucker? BIG FUCKING CHECK!",
									"[raucously singing football song] Segern är vår, sergern är vår, vi har vunnit, sergern är vår! (Victory is ours, victory is ours, we've won, victory is ours!)",
									"Vi klarade! (We managed!)"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = { --no loud/stealth variations
									"I almost can't believe we did it!",
									"Yeah! We pulled that off! Fantastic!",
									"Fantastic! Just fantastic!",
									"Haha! We're in the clear!",
									"Great work, my friends, great work!",
									"Yes! Tightest crew ever!",
								}
							}
						},
						rb9 = {
							line_variations = { --requires stealth
								whisper_mode = {
									"Job is done! Now time to relax and enjoy life.",
									"Thank you for traveling with us! We look forward to seeing you again soon.",
									"Thank you for not disturbing passengers in the quiet zone!",
									"Thank you for respecting our quiet zone!",
									"Operation completed successfully!",
									"I had a great time."
								}
							}
						},
						rb15 = {
							line_variations = {
								whisper_mode = { --requires stealth
									"Yeah, I'll admit, that was smooth.",
									"That was a ripper!",
									"[sarcastic] Hooraaay, we did the job SILENTLY. I'm still bored as batshit.",
									"The Dingos wouldn't believe their eyes if they saw me do this!", --"The Dingos" is the name of Sydney's former gang
									"Silent and deadly, fascinating combo!",
									"Perfect execution! Can't say otherwise.",
									"Well bugger  me, that was easy!",
									"No wuckin' forries whatsoever!",
									"That was easy enough, but not as much fun!",
									"I guess that's how the pros do it!",
									"I guess that's one way of doing things!"
								},
								standard_mode = { --requires loud
									"That's how we do it!",
									"We did it, nice!",
									"THIS is how legends are made!",
									"Crikey, that was close, but we fuckin' did it!",
									"Fuck me, that was SO much fun!",
									"Get stuffed, no-one can stop us!",
									"That was fuckin' fat!",
									"[laughter] And that's how we fuckin' do it!",
									"It's a ripper of a day, yes it is!",
									"I had my doubts coming to America, but this was SO fucking worth it!",
									"No wuckin' forries, we're unstoppable!",
									"That was fun and all, but now I'm buggered!"
								}
							}
						}
					}
				},
				g25 = {
					text = "Take out the cameras!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Cameras!",
									"Take out the cameras!",
									"Remember, cameras!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Take out the cameras!",
									"Remember, take out the cameras!"
								}
							}
						}
					}
				},
				g26 = {
					text = "Use your cable ties!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Use your cable ties, guys!",
									"Cable ties- use 'em!",
									"Keep 'em down- tie 'em up!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Rope down the people with the Cable Ties.",
									"Remember the Cable Ties.",
									"Use those Cable Ties!",
									"Cable Ties- make use of 'em!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please apply cable ties to all subjects. Thank you.",
									"Gently apply cable ties to all civilians.",
									"[tape rewinding] -apply cable ties to all civilians."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Tie 'em up.",
									"Tie everybody down.",
									"Well, how about using the cable ties, dipshit?"
								}
							}
						}
					}
				},
				g27 = {
					text = "Remember, no civilian casualties.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"No civilians.",
									"Remember! No civilians.",
									"No civilian casualties, now!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Careful with the people!",
									"Watch the crowd!",
									"Watch the civvies!",
									"Keep the crowds in check."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please- [tape rewinding] -maintain- [tape rewinding] -control.",
									"[garbled] -keep all subjects in check."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Hey, watch the bloody civilians!",
									"Crikey, keep the civvies in check!"
								}
							}
						}
					}
				},
				g28 = {
					text = "We're almost there!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Almost there!",
									"Almost there, almost there...",
									"We're gonna make it!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"We're gonna make it!",
									"Almost there, almost there!",
								}
							}
						}
					}
				},
				g29 = {
					text = "Ah, fuck!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"SHIT!",
									"Fuck!",
									"Oh, shit!",
									"Oh, fuck!",
									"Fuck me!",
									"O helvete! (Aw, hell!)",
									"Sjutton! [Swearing in Swedish]",
									"Tusan också! [Swearing in Swedish]" --doesn't sound like "tusan", more like "wee" but i don't know swedish swears
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Aw, shit!",
									"FUCK! Oh, FUCK!",
									"Shit!",
									"Damn!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"SHIT!",
									"Aw, shit!",
									"Aw, SHIT!",
									"Fuckin' 'ell!",
									"Aw, fuck!",
									"Aw, FUCK!"
								},
								assault_mode = {
									"Fuckin' 'ell!",
									"Aw, shit!",
									"Aw, FUCK!",
									"Fuck me!"
								}
							}
						}
					}
				},
				g30 = {
					text = "Killed a Bulldozer!",
					category = "special_kills",
					priority = 55,
					rb3 = {
						line_variations = {
							standard_mode = {
								"The Bulldozer's down!",
								"The Bulldozer taken care of!",
								"I took out the Bulldozer!",
								"The Bulldozer's history!"										
							},
							DISABLED_assault_mode = {}
						}
					},
					rb4 = {
						line_variations = {
							standard_mode = {
								"Bulldozer down!",
								"Bulldozer eliminated!",
								"Bulldozer taken care of!",
								"Bulldozer's history!"
							},
							DISABLED_assault_mode = {}
						}
					},
					rb9 = {
						line_variations = {
							standard_mode = {
								"-dozer non-operational.",
								"Bulldozer out of service.",
								"Bulldozer non-operational.",
								"Bulldozer non-operational. [tape rewinding] You can thank me later.",
								"Bulldozer non-operational. [tape rewinding] I believe 'hurrays' are in order.",
								"Bulldozer disabled.",
								"Bulldozer no longer in working order."
							}
						}
					},
					rb15 = {
						line_variations = {
							standard_mode = { --! check whisper variant for get stuffed
								"Bulldozer down!",
								"Fuck off, dozer!",
								"Fuck you, Bulldozer!",
								"Dozer's history!",
								"Killed a dozer!"
							},
							assault_mode = {
								"Bulldozer down!",
								"Fuck off, dozer!",
								"Fuck you, Bulldozer!",
								"Dozer's history!",
								"Killed a dozer!",
								"Get stuffed, dozer fuck!"
							}
						}
					}
				},
				g43 = {
					text = "Throwing a grenade",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"BOMB!",
									"Bomb!",
									"GET THE FUCK DOWN!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Grenade!",
									"GRENADE!",
									"Fire in the hole!",
									"Hit the ground!",
									"Sit on this, Cinderella!",
									"Duck!",
									"Dive for cover!",
									"Let's blow shit up!",
									"Duck and cover, campers!",
									"Time to shake the ground!",
									"Look out, losers!",
									"Frag away!",
									"Grenade away!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"I bought you a present.",
									"Here you go.",
									"Eat this.",
									"Gomen esto- (Eat this-)",
									"Please accept this gift."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Grenade!",
									"GRENADE!",
									"Haha, BOOM!",
									"Hahaha, BOOM!",
									"Grenade out!",
									"Haha, GRENADE!",
									"Take that, you arseholes!"
								}
							}
						}
					}
				},
				g50 = {
					text = "Get ready for action.",
					category = "UNKNOWN"
				},
				g51 = {
					text = "{g51}.",
					category = "UNKNOWN"
				},
				g60 = {
					text = "Oh, shit...",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Oh, fuck...!",
									"Shiiit!",
									"Shit...",
									"Daaamn!",
--											"Nej, NU, [unknown, phonetically: bla mas var atte]" --laugh as much as you like at these, i don't know swedish
									--sounds like "Lycka det kock det var aske ste"
									--nar bla er der bar klenge
									--er da knows de me kwee, der det no skaap
									"Vi sotte! (We suck!)"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Oh, fuck...",
									"Fuck me...",
									"[chuckles] Oho, shit...",
									"Sheeit!",
									"Fuck...!",
									"Damn..."
								},
								DISABLED_assault_mode = {}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"[chuckles] I like it.",
									"Hah, well bugger me!",
									"Hahaha, fuckin' look at that!"
								},
								assault_mode = {
									"Aw, shit!",
									"Aw, fuck!",
									"Fuck me!",
									"Fuckin' hell!"
								}
							}
						}
					}
				},
				g61 = {
					text = "I got the drill!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "I got the drill!"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"I got the drill.",
									"I got the drill!"
								}
							}
						}
					}
				},
				g62 = {
					text = "Thirty seconds left!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Thirty seconds!"
						},
						rb4 = {
							text = "Thirty seconds!"
						}
					}
				},
				g63 = {
					text = "One minute left.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3= {
							text = "One minute!"
						},
						rb4 = {
							text = "One minute!"
						}
					}
				},
				g64 = {
					text = "1:30 left.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "One-thirty!"
						},
						rb4 = {
							text = "One-thirty!"
						}
					}
				},
				g65 = {
					text = "Two minutes left.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Two minutes."
						},
						rb4 = {
							text = "Two minutes."
						}
					}
				},
				g66 = {
					text = "2:30 left.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Two-thirty."
						},
						rb4 = {
							text = "Two-thirty."
						}
					}
				},
				g67 = {
					text = "Any second now...",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Steady now! Hold it...",
									"Any second, aaaany second...",
									"Any second, now...",
									"Wait for it, wait for it..."
								},
								DISABLED_assault_mode = {}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Any second now.",
									"Any second...",
									"Steady now! Hold it...",
									"Wait for it, wait for it..."
								},
								DISABLED_assault_mode = {}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Let's just fucking go!",
									"Time to dance!",
									"Get fucking ready.",
									"Any second now, c'mon!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g68 = {
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							disabled = "missing"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"They're everywhere!",
									"They're EVERYWHERE!",
									"Cops! This place is filled with 'em!",
									"This place is flooded with cops!",
									"Cops everywhere!",
									"They're all over the place!"
								}
							}
						},
						rb15 = {
							disabled = "missing"
						}
					}
				},
				g69 = { --haha nice
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"We're easy targets here, let's move!",
									"We're sitting ducks in this place."
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"We're easy targets here...",
									"We're easy targets, this place is no good."
								}
							}
						},
						rb15 = {
							disabled = "missing"
						}
					}
				},
				g70 = {
					text = "Cops just got here.",
					category = "UNKNOWN"
				},
				g72 = {
					text = "On it!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "I'm on it!"
						}
					}
				},

				g90 = {
					category = "enemy_chatter",
					priority = 40,
					variants = {
						cop = {
							line_variations = {
								standard_mode = { --non exhaustive... but honestly what a trash line
									"Three assailants confirmed! There might be more of them!",
									"Two assailants confirmed! There might be more of them!",
									"I know there's at least two of them! At LEAST!",
									"Jesus, are these the guys?",
									"No takin' these assholes alive!",
									"It's the clowns! The clowns from TV!",
									"It's that crew! It's definitely them!",
									"There are at least two of 'em!",
									"Someone get us a fucking assault team, on the double!",
									"We're gonna get murdered!",
									"It's the PAYDAY Gang! They're CRAZY!",
									"Can anyone see anything? I got nothin'!"
								}
							}
						}
					}
				},
				g92 = {
					text = "Picked up Gage Package",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"[low voice] Alright.",
									"Alright.",
									"[whisper] Alright."											
								},
								assault_mode = {
									"Gotcha.",
									"Gotcha!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Gotcha!",
									"Gotcha.",
									"Alriiight!",
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Secured.",
									"Thank you-"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Got it!",
									"It's secured.",
									"I got it!",
									"Got it."
								},
								assault_mode = {
									"Here's one!",
									"Got one!",
									"One down!"
								}
							}
						}
					}
				},
				p01 = {
					variants = {
						cop = {
							text = "They have hostages! We need to delay the assault!",
							category = "enemy_chatter"
						},
						rb3 = {
							priority = 40,
							text = "Alright, let's do this.",
							category = "heister_dialogue",
							line_variations = {
								standard_mode = {
									"Alright, let's do this.",
									"Let's do this.",
									"Let's rock and roll.",
									"Alright, let's rock and roll."
								}
							}
						},
						rb4 = {
							text = "Alright, let's do this.",
							category = "heister_dialogue",
							priority = 40,
							line_variations = {
								standard_mode = {
									"Alright, let's do this.",
									"Okay, let's do this.",
									"'kay, let's do this, buddies."
								}
							}
						}
					}
				},
				p02 = {
					variants = {
						cop = {
							text = "Where is the fucking HRT?!",
							category = "enemy_chatter",
							priority = 60
						},
						rb3 = {
							category = "heister_dialogue",
							priority = 40,
							line_variations = {
								standard_mode = {
									"Alright, let's get rich.",
									"Now let's get rich.",
									"Let's get rich..."
								}
							}
						},
						rb4 = {
							category = "heister_dialogue",
							priority = 40,
							line_variations = {
								standard_mode = {
									"Time to make that money.",
									"Going to work.",
									"Let's make that money"
								}
							}
						},
						rb15 = {
							text = "Let's do this.",
							priority = 40,
							category = "heister_dialogue",
							disabled = "missing"
						},
					}
				},
				p03 = {
					variants = {
						cop = {
							priority = 60,
							category = "enemy_chatter",
							text = "No hostages left, full force forward!"
						},
						rb3 = {
							category = "heister_dialogue",
							priority = 40,
							disabled = "missing"
						},
						rb4 = {
							category = "heister_dialogue",
							priority = 40,
							line_variations = {
								standard_mode = {
									"Time to break a little bad.",
									"Let's break bad."
								}
							}
						},
						rb15 = {
							category = "heister_dialogue",
							disabled = "missing"
						}
					}
				},
				p04 = {
					text = "C'mon, hurry up...",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"C'mon, c'mon!",
									"C'mon, c'mon-c'mon-c'mon-c'mon-c'mon..."
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"C'mon, c'mon!",
									"Little bit more, that's right!",
									"That's right, that's right...",
									"C'mon now.",
									"Hurry! C'mon!"
								}
							}
						},
						rb15 = {
							disabled = "missing"
						}
					}
				},
				p05 = {
					text = "The cops are here!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"How nice of those cops to come and keep us company!",
									"The police are on the scene!",
									"Okay, we got company. The police are here!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"The cops have arrived!",
									"The cops are on the scene!",
									"The cops are here!",
									"Okay, we've got company... the police are here!",
									"The police just arrived!",
									"Alright, we got visitors- the cops are here!",
									"How nice of the cops to come and keep us company!"
								}
							}
						}
					}
				},
				p06 = {
					text = "Gotcha!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Alright.",
									"Okay.",
									"Gotcha.",
									"Gotcha!",
									"Okay!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Okay!",
									"Okay.",
									"Alright!",
									"Alright.",
									"Gotcha!"
								}
							}
						},
						rb15 = {
							disabled = "missing"
						}
					}
				},
				p07 = {
					text = "We've got a hostage, let's trade!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"We already have a hostage ready to be traded!",
									"We gotta follow through with that hostage trade!",
									"We got a hostage lined up already. Let's trade!",
									"We gotta release that hostage!",
									"We have to follow through with that hostage trade!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"We got a hostage lined up already. Let's trade!",
									"We have to let that hostage go in exchange for our friend!",
									"We already have a hostage ready to be traded!",
									"We gotta follow through with that hostage trade!",
									"We gotta release that hostage!"
								}
							}
						}
					}
				},
				p08 = {
					text = "Computer's got a problem!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Computer's beepin'- never good!",
									"Sounds like we need some tech help!",
									"Sounds like the computer's all fouled up!",
									"Appears like the computer's busted!",
									"Appears like the computer ain't workin' right!"
								}
							}
						}
					}
				},
				p09 = {
					text = "There's a problem with the computer!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Computer's beeping again!",
									"We gotta fix the computer again!",
									"A machine ain't workin' again!",
									"Wondering if it's the OS, or what?",
									"[chuckles] Another technical problem with the computer.",
									"[chuckles] Wonder if it's the software.",
									"Wonder whether it's software or hardware failures."
								}
							}
						}
					}
				},
				p10 = {
					text = "Broke-dick piece of shit drill!",
					category = "UNKNOWN"
				},
				p12 = {
					text = "Go, go!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Go, go!",
									"GO, GO!"
								}
							}
						}
					}
				},
				p13 = {
					text = "Get a move on!",
					category = "heister_dialogue",
					priority = 5,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Get a move on!",
									"GET A MOVE ON!"
								}
							}
						}
					}
				},
				p14 = {
					text = "Move it!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Move it!",
									"MOVE IT!"
								}
							}
						}
					}
				},
				p15 = {
					text = "Get moving!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Get moving!",
									"MOVE IT!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Get moving!"
								}
							}
						},
						rb15 = {
							disabled = "missing"
						}
					}
				},
				p16 = {
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Move!",
									"Go!",
									"GO!"
								}
							}
						}
					}
				},
				p17 = {
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Only seconds away!",
									"Any moment now!",
									"Any second!",
									"Any second...",
									"Any second now!",
									"We're almost done!",
									"Just a couple more seconds!"
								}
							}
						}
					}
				},
				p18 = {
					text = "What're you waiting for!?",
					category = "UNKNOWN"
				},
				p19 = {
					text = "I'm on my way!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I'm coming!",
									"Be right there!",
									"As fast as I can!",
									"I'm comin' for ya!",
									"I'll be there in a flash!",
									"I'll be there in an instant!"
								}
							}
						}
					}
				},
				p20 = {
					text = "Follow me!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Follow me!",
									"Follow me.",
									"Come with me!",
									"Come with me."
								}
							}
						}
					}
				},
				p21 = {
					text = "We're going loud!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Ah, fuck it. I never liked 'Plan A' anyway!",
									"Let's fuck shit up!",
									"Looks like we'll have to 'Plan B' it!",
									"Let's go to 'Plan B'!"
								}
							}
						}
					}
				},
				p22 = {
					text = "Get ready, we're about to have some company!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Dig in! Get ready for the storm!",
									"Get ready to fight!",
									"We got police stormin' in any second!",
									"Get ready for action!",
									"We got a police assault comin' any second!",
									"This place is about to get hot!"
								}
							}
						}
					}
				},
				p23 = {
					text = "Get ready for action.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Get ready for action!",
									"Get ready for action.",
									"Get ready now!"
								}
							}
						}
					}
				},
				p24 = {
					text = "Assault's over. Let's get back to work.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's get our eyes back on the prize!",
									"So much for distractions! Let's finish.",
									"Don't let it go to your head! We got work to do.",
									"Alright, alright! Enough playing around- let's finish it.",
									"'nough said. Now back to work.",
									"Good job! Now let's finish what we started.",
									"Now... where were we?",
									"They're gone, but we still got a job to finish!",
									"Hah, they won't try that again! Back on task."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"C'mon, fuckwits, back to work!",
									"Let's get back to work while they cry in defeat!",
									"Back to what we were doing!",
									"Time to finish this up!",
									"We're here to do a job, so get it done!",
									"Those drongos are regrouping, so let's finish this shit!",
									"GET BACK TO WORK!",
									"Back to business, then!",
									"Alright, time to finish the job.",
									"ALRIGHT! Where were we?",
									"We've still got a job to do!",
									"Right! Back to work!"
								}
							}
						}
					}
				},
				p25 = {
					text = "I'm flashbanged! MY EYES!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Flashbang! I'm fucking blind!",
									"I'm blind! I'M BLIND!",
									"Flashbang! My eyes! MY EYES!",
									"Aagh, fuckin' flashbang!",
									"Agh, I can't see fucking SHIT!"
								}
							}
						}
					}
				},
				p26 = {
					text = "Stay sharp!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Don't get loose with it now!",
									"Cover the flanks!",
									"Watch your tails!",
									"Don't let 'em get cagey on us!"
								}
							}
						}
					}
				},
				p27 = {
					text = "Secured a lootbag.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Lootbag secured.",
									"Got a bag.",
									"One down.",
									"And another one!",
									"I got a lootbag.",
									"And another!",
									"One bag down!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"It's secured.",
									"It's at the drop.",
									"One lootbag, at the drop.",
									"It's delivered!",
									"One lootbag, stashed."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				p28 = {
					text = "All loot secured!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"That's all of 'em!",
									"Haha, that's all of 'em!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"We got 'em all.",
									"That's all of 'em!",
									"That's all the bags!"
								}
							}
						}
					}
				},
				p29 = {
					text = "I'm picking this lock.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Picking the lock.",
									"I'm picking the lock!",
									"Springing this damned lock. C'mon!"
								}
							}
						}
					}
				},
				p30 = {
					text = "Using a keycard.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Yeah, using a keycard...",
									"Using a keycard.",
									"Using a keycard!",
									"Using a key.",
									"Yep, using a key."
								}
							}
						}
					}
				},
				p31 = {
					text = "They're repossessing our bags!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"These dirty fucking cops are stealing our loot!",
									"Pay attention! Cops are stealing our stuff!",
									"Goddamned cops! Can't even keep their hands off our hard-earned loot!",
									"Hey! Look at what those cops are doing!",
									"HEY! They're stealin' our shit!",
									"[chuckles] Look at these cops! Even dirtier than I thought!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Hey, those pigs are grubbin' our shit!",
									"They're takin' our bags, KILL 'EM!",
									"Those FUCKWITS are stealing our loot!"
								}
							}
						}
					}
				},
				p32 = { --priority
					text = "Waiting here",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"You case the joint. I'll be here.",
									"You go ahead. I'll stay out of your way until you need another guy.",
									"You go ahead. Look, I'll be right here. I'm not going in.",
									"You go ahead, buddy. I'll wait here.",
									"You go and recon the place. I'll wait for the action to start.",
									"You go case the place. I'll jump in when the shooting starts.",
									"You go handle it for now. When 'Plan B' kicks in, so do I.",
									"You go. I'll wait until the action starts.",
									"You got this, buddy. I'll wait right here for now.",
									"You'd better do this on your own. I'll watch your back.",
									"You've got this covered. I'll wait around here until alarms start beeping.",
									"Alright, I'll wait right here.",
									"Case the area. I'll be right here.",
									"Do a little recon mission. I'll be with you shortly.",
									"I'll be right here, bud. You do the recon thingy.",
									"I'll catch up with you later.",
									"I'll wait here, you case the joint.",
									"I'll wait right here, you go ahead. We'll catch up later.",
									"I'll wait here. I got your back once the action starts.",
									"I'll stay here, buddy. [chuckles] I'm no good with 'Plan A's anyway.",
									"Better if you do this. If you need help, just fire your gun.",
									"Better that you handle this for now. I'll come and save you if things go south.",
									"[chuckles] I've got all these cigarettes to smoke. You go on without me, I'll catch up."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"I'll wait here.",
									"I'll wait here. You go on ahead.",
									"I'll wait here. You go on ahead. [tape rewinds] Ich warte hier-"
								}
							}
						},
						rb15 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"You go ahead.",
										"Go on, then.",
										"Check the place out.",
										"Yeah, yeah- I'll wait here."
									},
									{
										"I'll be ready when things go crazy.",
										"Call me when the fun begins.",
										"I'm here for the exciting bit.",
										"I'll turn the head up when it's time."
									}
								}
							}
						}
					}
				},
				p33 = {
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They're coming through the skylights!",
									"They're coming from the ceiling!",
									"They're coming through the panels above!"
								}
							}
						}
					}
				},
				p34 = {
					text = "They're coming in from above!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They're coming in from above!",
									"They're on the roof!"
								}
							}
						},
						rb15 = {
							disabled = "missing"
						}
					}
				},
				p35 = {
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They're coming down the walls!",
									"They're coming down the sides!"
								}
							}
						}
					}
				},
				p36 = {
					text = "They're coming out of the wall!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They're coming through the wall!",
									"They're coming through the wall panels!",
									"They're coming through the windows!"
								}
							}
						}
					}
				},
				p37 = {
					text = "They're coming up through the floor!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They're coming up through the manholes!",
									"They're coming in from below!",
									"They're under the floors!",
									"They're coming through the floor panels!",
									"They're coming up through the floor!",
									"They're coming up through the ground!"
								}
							}
						}
					}
				},
				p38 = {
					text = "They're climbing in from outside!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They're coming in from outside!",
									"They're climbing in from outside!"
								}
							}
						}
					}
				},
				p39 = {
					text = "They're climbing down on the outside!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							text = "They're climbing down on the outside!"
						},
						rb15 = {
							disabled = "missing"
						}
					}
				},
				p40 = {
					text = "They're climbing up the outside!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							text = "They're climbing up on the outside!"
						}
					}
				},
				p41 = {
					text = "Spotted a SWAT Helicopter!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"SWAT chopper incoming!",
									"We got a helicopter inbound!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"A bloody helicopter, inbound!",
									"SWAT chopper, incoming!"
								}
							}
						}
					}
				},
				p42 = {
					text = "Spotted SWAT Van",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"SWAT insertion! Van coming in!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"We got a SWAT van incoming!",
									"SWAT van, approaching!"
								}
							}
						}
					}
				},
				p43 = {
					text = "Spotted a Sniper!",
					category = "heister_spots",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Snipers!",
									"Heads down! Sniper!",
									"Watch out! Sniper!"
								}
							}
						}
					}
				},
				p44 = {
					text = "They're coming from the trees!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They're coming from the forest!",
									"They're coming out of the woods!"
								}
							}
						}
					}
				},
				p45 = {
					text = "Someone help me up!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Friends, help!",
									"Friends, help me up!",
									"SOMEBODY! Help me!",
									"SOMEBODY! HELP!",
									"Somebody! I need help!",
									"Somebody! Help me up!",
									"Hey guys! You gotta help me!",
									"Hey, my friends! Help me!"
								}
							}
						}
					}
				},
				p46 = {
					text = "Jump!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							text = "Jump!"
						}
					}
				},
				p47 = {
					text = "Let's get this party started!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"[laughs] It's on now!",
									"Let's get the party started, for real!",
									"Alright, let's get it on!",
									"Okay, let's get it on!",
									"Let's fuck shit up!",
									"Alright, let's do this!",
									"Alright! It's game time!",
									"THIS is what I've been waitin' for!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Now, enjoy the show!",
									"The following presentation has been approved for mature audiences only.",
									"Please be advised- the following presentation is not intended for minors.",
									"We hope you have a pleasant flight."
								}
							}
						},
						rb15 = {
							disabled = "missing"
						}
					}
				},
				v01 = {
					text = "Got it.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"Okay,",
										"Alright,",
										"Acknowledged,"
									},
									{
										"we're on it!",
										"on it!",
										"we'll take care of it!",
										"will do!"
									}
								}
							}
						},
						rb15 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"Alright,",
										"Okay,",
										"Got it,",
										"I hear you,"
									},
									{
										"we're on it!",
										"on it!",
										"will do.",
										"we'll take care of it."
									}
								}
							}
						}
					}
				},
				v03 = {
					text = "We're inside!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"We're in.",
									"We're through!",
									"We're inside!",
									"It's open!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"We're inside.",
									"It's open!",
									"We're in!",
									"We're through!"
								}
							}
						}
					}
				},
				v04 = {
					text = "Found it!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"It's here!",
									"Here it is!",
									"Found it!",
									"We got it!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"We got it!",
									"Here it is!",
									"Found it!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				v05 = {
					text = "Found one!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Found one!",
									"Got one!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"We got one!",
									"Here's one!",
									"Found one!"
								}
							}
						}
					}
				},
				v06 = {
					text = "Found another!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Got one more.",
									"We got one.",
									"Found another one.",
									"Here's another!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Got one more.",
									"We got one.",
									"Found another one!",
									"Here's another!"
								}
							}
						}
					}
				},
				v07 = {
					text = "It's done.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"It's done!",
									"It's finished!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"It's done!",
									"Done!"
								}
							}
						}
					}
				},
				v08 = {
					text = "We're done.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"We're done!",
									"DONE!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"We're done!",
									"DONE!"
								}
							}
						}
					}
				},
				v09 = {
					text = "What next?",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Hey, don't pat yourself on the back, we aren't finished yet.",
									"No time to get cocky, ladies.",
									"Keep up the pace, we ain't done yet.",
									"Don't get cocky, we got more to do!",
									"C'mon, focus on the next one.",
									"Keep going, this ain't the finish line."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"What next?",
									"Yeah, and what now?",
									"Keep going, what's next?",
									"Keep it bloody going, we're not done!",
									"Stay focused!"
								}
							}
						}
					}
				},
				v10 = {
					text = "Found a keycard.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I found a keycard!",
									"I got a keycard."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I found a keycard!",
									"I found a keycard."
								}
							}
						}
					}
				},
				v11 = {
					text = "Grabbed the keycard.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I got the keycard!",
									"I found the keycard!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I got the keycard!",
									"I found the keycard!"
								}
							}
						}
					}
				},
				v12 = {
					text = "Used a keycard.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb15 = {
							line_variations = {
								standard_mode = {
									"Fucking hell, these things make it too easy!",
									"Almost too easy, yeah?",
									"Well, bugger me, this is easy!",
									"This makes shit too easy!"
								}
							}
						}
					}
				},
				v13 = {
					text = "Fire in the hole!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Alright, back up!",
									"Duck and cover, ladies!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Get the fuck back!",
									"Cover ya' ears!"
								}
							}
						}
					}
				},
				v14 = {
					text = "BOOM!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Oops! Forgot to knock!",
									"We make our own fucking door!"
								}
							}
						},
						rb7 = {
							line_variations = {
								standard_mode = {
									"Sometimes it's easier to make your own doors!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Fuck keycards when you can blow shit up!",
									"We're through!"
								}
							}
						}
					}
				},
				v15 = {
					text = "Get this door open!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"C'mon! Let's open the fucking door!",
									"Get this motherfucking door open!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Let's open this fuckin' door!",
									"Someone get the door open!",
									"Get the bloody door open!"
								}
							}
						}
					}
				},
				v16 = {
					text = "Open this thing!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's open this sucker up!",
									"Let's get this fucking thing open!",
									"Let's open this motherfucker!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Let's OPEN this shit!",
									"Crack it open!",
									"Let's open this motherfucker up!"
								}
							}
						}
					}
				},
				v17 = {
					text = "Let's go.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							text = "Let's go, team!"
						},
						rb15 = {
							text = "Let's fuckin' go!"
						}
					}
				},
				v18 = {
					text = "Kill them!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Wipe 'em out!",
									"Kill 'em all!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Eliminate all targets, and have fun doing it."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"GET 'EM!",
									"KILL 'EM ALL!"
								}
							}
						}
					}
				},
				v19 = {
					text = "Incoming!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"INCOMING!",
									"Here it comes!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"It's coming now."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"INCOMING!",
									"Here it comes!"
								}
							}
						}
					}
				},
				v20 = {
					text = "It's arrived.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"It's arrived!",
									"It's here, it's here!",
									"Okay, it's here!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"It has arrived, thank you!",
									"Thank you!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"We got it!",
									"It's here!",
									"It's here, it's here!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				v21 = {
					text = "That's a lotta loot!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"That's one hell of a pile of cash!"
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"PAYDAY!",
									"Yessir, this is it, my friends!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please, recover as much as you can safely manage!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"EMPTY this place!",
									"Get fuckin' all of it!"
								}
							}
						}
					}
				},
				v22 = {
					text = "We got all of it!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"We got all of it, awesome!",
									"And the mice got all of the cheese!",
									"That's it!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Local stockpiles are exhausted."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Well, bugger me, that's bloody nice!",
									"That's all of it!",
									"Now, THIS is a PAYDAY!"
								}
							}
						}
					}
				},
				v23 = {
					text = "Drill's finished.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Drill's done.",
									"Drill's done!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"The drill has completed its work."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"That's the drill done!",
									"Drill's done!"
								}
							}
						}
					}
				},
				v24 = {
					text = "Hack's finished.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Computer's done!",
									"The computer's done."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"The computer process has successfully completed.",
									"The computer process [tape skips] successfully completed."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Computer is finally fuckin' finished!",
									"Bloody hell, computer is FINALLY done!"
								}
							}
						}
					}
				},
				v25 = {
					text = "It's done.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"It's done, c'mon!",
									"It's finished, let's get on with it!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"That requirement is satisfied. Please proceed."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Finally, fuckin' done!",
									"It's finished!"
								}
							}
						}
					}
				},
				v26 = {
					text = "Exit's this way!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							disabled = "missing" --no lines :(
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"There's the ride!",
									"There's the getaway!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Escape vehicle is ahead.",
									"Escape vehicle [tape skips] ahead."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"We're gettin' out this way.",
									"Time to go, that's the way!"
								}
							}
						}
					}
				},
				v27 = {
					text = "They're in the vents!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I thought I heard them in the ventilation shafts- watch out!",
									"Hey! They're in the ventilation!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Acoustic feedback suggests opposing forces within building structure."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Those fuckwits are in the vents!",
									"Well, bugger me, the fuckers are in the vents!"
								}
							}
						}
					}
				},
				v28 = {
					text = "Spotted the mark.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"The mark's in sight!",
									"Got my eyes on the mark!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Target observed."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Alright, I see the mark!",
									"Right, got the mark!"
								}
							}
						}
					}
				},
				v29 = {
					text = "She's there!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"There she is!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"There she is."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"She's there!",
									"She's there."
								}
							}
						}
					}
				},
				v30 = {
					text = "He's there!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"There he is!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"There he is."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"He's there!",
									"He's there."
								}
							}
						}
					}
				},
				v31 = {
					text = "They're there!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							disabled = "missing"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"There they are!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"There they are."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"They're there!",
									"They're there."
								}
							}
						}
					}
				},
				v32 = {
					text = "It's there!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							disabled = "missing"
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"There it is!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"It is there."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"It's over there.",
									"It's over there!"
								}
							}
						}
					}
				},
				v33 = {
					text = "Find the manager!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							text = "Find that manager!",
						},
						rb4 = {
							text = "Where's the goddamn manager?"
						},
						rb9 = {
							text = "It is imperative we locate the manager.",
							text = "It is imperative we locate the manager. [tape skips] -ame su cabeza."
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Find that bloody bastard!",
									"FIND that bloody bastard!"
								}
							}
						}
					}
				},
				v34 = {
					text = "(giving the heat speech)",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb1 = {
							duration = 15,
							text = "A'ight, hear me! This is a robbery! We ain't gonna hurt you! We after the bank's money, not yours! Your shit's insured by the federal government, a'ight? Ain't gonna lose a dime! Think of your family, don't try to be a hero, just shut up and stay down, and this'll all be over!"
						},
						rb2 = {
							duration = 21,
							text = "Listen! This is a robbery! We're not here to hurt anyone, we're after the bank's money, not yours. Your money is insured, do you hear? You're not gonna lose a cent. Think of your family; don't try to be a hero now. You just shut up, stay cool, stay down, and this'll be over in no time."
						},
						rb3 = {
							duration = 19,
							text = "Listen up! This is a robbery! We want to harm no-one! We're after the bank's money, not yours! Your money is insured by the federal government! You're not gonna lose a dime! Think of your loved ones, don't try to be a hero. Now shut up, and stay the fuck down, and this will soon be over."
						},
						rb4 = {
							duration = 22,
							text = "Listen up! This is a robbery! We want to harm no-one! We're after the bank's money, not yours! Your money is insured by the federal government! You're not gonna lose a dime! Think of your beloved ones, don't try to be a hero. Just shut up, and stay down, and this'll be over in no time."
						},
						rb5 = {
							duration = 18,
							text = "Listen up! This is a robbery! We don't want to harm anyone! We're after the bank's money, not yours! Your money is insured, alright? You're not gonna lose a penny! Think of your family- don't try to be a hero! Just shut up and stay down, and this'll be over in no time." 
						},
						rb6 = {
							duration = 20,
							text = "Listen up! This is a robbery! We don't wanna harm anyone! We're after the bank's money, not yours! Your money is insure, alright? You're not gonna lose a single dollar! Think of your families- don't try to be a hero! Just stay quiet, stay down, and this will be over quickly."
						},
						rb8 = {																			
							duration = 22,
							text = "Listen, this is a robbery! We won't hurt you! We are after bank money, not yours! Your money is insured! You lose nothing! Think of your family! Don't be a hero! Just stay... quiet and down, and this will be over... you understand? ...Yeah!"
						},
						rb9 = {
							duration = 22,
							text = "Please pay attention! You will be happy to know, you are victims of a robbery! You will not be harmed. We will take the bank's money. Your savings are insured by the federal government. Please, consider your loved ones. Remain calm and quiet, and your survival is assured."
						},
						rb10 = {
							duration = 25,
							text = "Listen! This is robbery! We're not here to hurt you, right? We're only after the bank's money, not yours! All your money is insured by the government, right! You won't lose a FUCKIN' penny! Think of your families, now- your wives, your bairns- just KEEP IT SHUT! Stay down, and this'll be over in a fuckin' jiffy." 
						},
						rb11 = {
							duration = 18,
							text = "[bored] Listen! This is robbery! We don't want to kill you, we're after the bank's money, not your money. Your money is insured by the government, you're not gonna lose a dime. Think of sweet mama, don't be hero. [intense] NOW SHUT THE FUCK UP AND STAY DOWN, AND THIS WILL BE OVER, SOON!" 
						},
						--rb12 = { duration = 23, text = "uh.... does anyone speak japanese?" },
						rb13 = {
							duration = 21,
							text = "Up here, everyone. This is a robbery. We're not here to hurt anyone. We're after this bank's money, not yours. Your money is insured by the federal government, okay? You're not gonna lose a dime. Think of your loved ones. Don't try to be a hero. Just stay down, and stay quiet, and this'll be over in no time."
						},
						rb14 = {
							duration = 32,
							text = "OI! Up here! Now, this is... is a FUCKING bank robbery. Yeah? BUT! We're not here to hurt you! No! We're after the BANK'S MONEY. Okay? Not yours! You're not losin' shit! So... please! Think... of your family... and friends. They want you to come home... yeah? So... just stay FUCKING QUIET... and stay DOWN... and all will be good, eh? Don't test us!"
						},
						rb15 = {
							duration = 30,
							text = "Listen up, you bloody drongos! This is a robbery! We're not here to hurt ya, but that can quickly change dependin' on your FUCKIN' actions, got it? We're after this BANK'S money, not yours. All your BLOODY money's insured by the FUCKIN' government, alright? You won't lose a FUCKIN' penny so think of your dipshit FAMILIES, now, your fat spouses and your ugly kids, you just KEEP IT SHUT like the good tools you are and STAY DOWN, and this'll be over in a bloody heartbeat."
						},
						rb16 = {
							duration = 18,
							text = "Look at me, motherfuckers. This is a robbery. We're not here to harm anyone. We're after the bank's money, not yours. Your money is insured by the federal government, okay? You're not gonna lose shit. Think of your loved ones and don't try to be a hero. Stay down and stay quiet, capiche?"
						},
						rb17 = {
							duration = 21,
							text = "Hey! Yeah, that's right, this is a robbery, but we don't wanna hurt you, okay? We just here... to take the bank's money. Your money is insured, so you're gonna be fine, if you stay fucking quiet and you don't try and be a fucking hero. You think of your families, alright? You think about your mama, we just gonna get what we came for, and then we all gonna be free to go."
						},
						rb18 = {
							duration = 25,
							text = "[casual] Heyyyy! This is a robbery. But listen up, amigos: We don't wanna hurt you, if we don't have to. We want the bank's money, not your money, ah? Your money is insured by the gringo government, so you won't lose a peso. Think of your families, and don't try anything stupid, okay? Just stay down and be quiet, and we'll be out of here soon, and you can all go home! Comprendes?"
						},
						rb19 = {
							duration = 23,
							text = "Listen up! This is a robbery! But we don't wanna hurt you! We're here for the bank's money, not yours. Your money is insured by The Man, so you won't lose a dime. Think of your families! No use risking your life! Don't be a hero- be smart! We're just gonna wrap this up and we'll be out of here, and you can get on with your lives."
						},
						rb20 = {
							duration = 19,
							text = "Okay people. This is a robbery, but don't be alarmed, it's not so bad. We just want the bank's money, not your money. Your money is insured by the federal government, so you won't lose anything. Think of your families, or your dogs or whatever, but be smart. Then we're cool and you can all go home and watch TV when it's over. "
						},
						rb21 = {
							duration = 18,
							text = "Listen up! This is a robbery! But we don't want to hurt you, and we want the bank's money, not your money. Your money's insured by the government. So you won't lose anything. Think of your families. Be smart. Just behave and do what we say and we won't kill you."
						},
						rb22 = {
							duration = 20,
							text = "Listen up! This is a robbery! But don't worry, we're not here to hurt you. We only want the bank's money- not your savings, which are insured by the federal government. You won't lose a dime. So think of your loved ones, and don't try to be a hero. Let's all try to get along, so we can leave, and you can all go home."
						}
					}
				},
				v35 = {
					text = "Bain?!",
					category = "heister_dialogue",
					priority = 40,
					duration = 2,
					variants = {
						rb1 = {
							text = "BAIN! You listenin'?!"
						},
						rb3 = {
---									disabled = "missing"
						},
						rb4 = {
							text = "BAIN!?"
						},
						rb9 = {
							text = "Please advise."
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"BAIN!?",
									"BAIN?!"
								}
							}
						}
					}
				},
				v36 = {
					text = "Now what?",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"What do we do now?",
									"The fuck do we do now?"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Requesting new directives."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Well, now bloody what?",
									"So what the fuck do we do now, then?"
								}
							}
						}
					}
				},
				v37 = {
					text = "I got a bad feeling about this...",
					priority = 40,
					variants = {
						rb3 = {
							disabled = "missing" --no lines :(
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"I've got a bad feeling about this."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please, remain vigilant."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I'm gettin' a bad feelin' about this!"
								}
							}
						}
					}
				},
				v38 = {
					text = "Search the place!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Sweep the place."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Searching."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Search the place!",
									"Search the place."
								}
							}
						}
					}
				},
				v39 = {
					text = "Find the mark!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's find that mark."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Searching."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Find the fucking mark!",
									"Find the fuckin' mark."
								}
							}
						}
					}
				},
				v40 = {
					text = "Find her!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's find her!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Searching."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Find her!",
									"Find her."
								}
							}
						}
					}
				},
				v41 = {
					text = "Find him!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's find him!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Searching."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Find that bloody bastard.",
									"Find that BLOODY bastard!"
								}
							}
						}
					}
				},
				v42 = {
					text = "Find them!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's find them!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Searching."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Let's find 'em!",
									"Let's find 'em."
								}
							}
						}
					}
				},
				v43 = {
					text = "Find it!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's find it, now!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Searching."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Find it, now!",
									"Find it, NOW!"
								}
							}
						}
					}
				},
				v44 = {
					text = "Keep looking!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							text = "Keep looking!"
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Searching."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Keep looking!",
									"Keep looking."
								}
							}
						}
					}
				},
				v45 = {
					text = "Spotted a Turret!",
					category = "heister_spots",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They brought in a turret",
									"SWAT Turret!",
									"Turret! Stay clear!",
									"Turret!",
									"Oh no! Turret!",
									"Turret! Watch out!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Attention. There is a turret."
								}
							}
						}
					}
				},
				v46 = {
					text = "(exhuberant shouting)",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							disabled = "missing" --no lines :(
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"That's what I'm talking about!",
									"Yes! YES!",
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"This is a pleasant sensation."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Take that!",
									"Hah, take that!",
									"Hahaha, fuck yes!"
								}
							}
						}
					}
				},
				v47 = {
					text = "Is that enough?",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							text = "Is that enough?"
						},
						rb9 = {
							text = "Has enough financial restitution been recovered?"
						},
						rb15 = {
							text = "Have we got enough?"
						}
					}
				},
				v48 = {
					text = "Nah, let's take it all!",
					category = "heister_dialogue",
					priority = 5,
					variants = {
						rb4 = {
							text = "Nah, get all of it!"
						},
						rb9 = {
							text = "Negative. Further financial restitution required."
						},
						rb15 = {
							text = "Fuck no, take it all!"
						}
					}
				},
				v49 = {
					text = "Shoot it down!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							text = "Fire at it!"
						},
						rb9 = {
							text = "Please, direct firepower towards it."
						},
						rb15 = {
							text = "Shoot it down!"
						}
					}
				},
				v50 = {
					text = "Spotted Murkies!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"We got murkies here!",
									"Murkies!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"It would appear Murkywater are in attendance."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Bunch a' bloody murkies!",
									"Fuckin' murkies over here!"
								}
							}
						}
					}
				},
				v51 = {
					text = "Move the loot!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's get this stuff moving!",
									"Let's carry this stuff the fuck out of here!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"It is time to convey these articles out."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Grab a bag and go!",
									"Grab a fuckin' bag and move it!"
								}
							}
						}
					}
				},
				v52 = {
					text = "It's stuck!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"It's fucking stuck!",
									"Shit, she's stuck!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Analysis confirms, it is stuck."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Can't move the fucker!",
									"Fucker's stuck!"
								}
							}
						}
					}
				},
				v53 = {
					text = "Smells awful!",
					category = "heister_dialogue",
					priority = 5,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"That fucking smell!",
									"Holy fuck, that smell is killing me!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Analysis of the air indicates presence of offensive matter."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"What is that fuckin' smell?!",
									"What is that bloody stench?!"
								}
							}
						}
					}
				},
				v54 = {
					text = "That was loud!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Damn, that was loud!",
									"[chuckles] What a bang!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"That was a loud noise."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"You tosser, could you have warned us?!",
									"Aw, shit, that was loud!"
								}
							}
						}
					}
				},
				v55 = {
					text = "(skydive adrenaline)",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"YIPPIE-KI-YAY, MOTHERFUCKER!",
									"FUCKIN' AWESOME!",
									"GERONIMO, MOTHERFUCKERS!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"This is a perfect opportunity to express satisfaction."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"[exhilarated screaming]",
									"FUCK YEAAAAH!",
									"WHOO-HOOO, SHIT!",
									"WHOO-HOOOOOO!",
									"WHOO-HOOOOOOOOOOOO!"
								}
							}
						}
					}
				},
				v56 = {
					text = "Hello.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Hi.",
									"Hi!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Hello.",
									"Greetings."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Hi.",
									"What's up?"
								}
							}
						}
					}
				},
				v57 = {
					text = "I found a crowbar.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I found a crowbar!",
									"I got a crowbar!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"A crowbar has been recovered.",
									"A crowbar has been acquired.",
									"[speaking Spanish] A crowbar has been acquired." --don't know what the line actually is
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Found myself a crowbar!",
									"Got a crowbar!"
								}
							}
						}
					}
				},
				v58 = { --taxman
					text = "Get in the chair!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"GET IN!",
									"Get in the chair!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please, take a seat.",
									"-take a seat. [distorted]"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Sit the fuck down!",
									"Sit your arse down, you tosser!"
								}
							}
						}
					}
				},
				f30x_any = {
					text = "Spotted a Bulldozer!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I've spotted a Bulldozer",
									"Bulldozer!",
									"BULLDOZER!",
									"Watch out! Bulldozer!",
									"It's a Bulldozer!"
								},
								assault_mode = {
									"Oh, SHIT! BULLDOZER!",
									"Bulldozer!",
									"BULLDOZER!",
									"It's a fucking Bulldozer!",
									"FUCK! BULLDOZER!",
									"It's a motherfucking Bulldozer!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I see a Bulldozer!",
									"It's a Bulldozer!",
									"Bulldozer!",
									"Got a Bulldozer!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f30y_any = {
					text = "Spotted a Bulldozer!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Oh, shit! Bulldozer!",
									"BULLDOZER!",
									"FUCK! BULLDOZER!",
									"It's a fucking Bulldozer!",
									"Bulldozer!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I see a Bulldozer!",
									"It's a Bulldozer!",
									"Bulldozer!",
									"Got a Bulldozer!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f31x_any = {
					text = "Spotted a Shield!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I've spotted a Shield!",
									"We've got a Shield over here!",
									"It's a shield!",
									"Shield!"
								},
								assault_mode = {
									"Oh, shit! SHIELD!",
									"We've got a Shield!",
									"It's a fucking Shield!",
									"Shield!",
									"SHIELD!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I've spotted a Shield!",
									"We've got a Shield over here!",
									"We've got a Shield!",
									"Shield!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f31y_any = {
					text = "Spotted a Shield!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"It's a fucking Shield!",
									"Shield!",
									"SHIELD!",
									"Oh, shit! SHIELD!",
									"We've got a Shield!"
								} --assault mode lines are identical
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I've spotted a Shield!",
									"We've got a Shield over here!",
									"We've got a Shield!",
									"Shield!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f32x_any = {
					text = "Spotted a Taser!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I've spotted a Taser!",
									"I've spotted a Taser, look out!",
									"Taser!",
									"It's a Taser, watch out!"
								},
								assault_mode = {
									"Taser!",
									"TASER!",
									"It's a fucking Taser!",
									"Oh, shit! Taser!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Taser spotted, look out!",
									"Taser spotted!",
									"We've got a taser!",
									"Taser!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f32y_any = {
					text = "Spotted Taser!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Taser!",
									"TASER!",
									"It's a fucking Taser!",
									"Oh, shit! Taser!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Taser spotted!",
									"Taser spotted, look out!",
									"We've got a taser!",
									"Taser!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f33x_any = {
					text = "Spotted a Cloaker!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I've spotted a Cloaker!",
									"We've got a Cloaker over here!",
									"Cloaker!",
									"It's a Cloaker!"
								},
								assault_mode = {
									"Oh, shit! Cloaker!",
									"Fucking CLOAKER!",
									"Fucking Cloaker!",
									"Cloaker!",
									"CLOAKER!",
									"Cloaker son of a bitch!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Spotted a Cloaker!",
									"It's a Cloaker!",
									"We've got a Cloaker!",
									"Cloaker!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f33y_any = {
					text = "Spotted Cloaker",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Oh, shit! Cloaker!",
									"Fucking CLOAKER!",
									"Fucking Cloaker!",
									"Cloaker!",
									"CLOAKER!",
									"Cloaker son of a bitch!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Spotted a Cloaker!",
									"It's a Cloaker!",
									"We've got a Cloaker!",
									"Cloaker!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f34x_any = {
					text = "Spotted a Sniper",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							text = "Sniper!"
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Look out! Sniper!",
									"Stay back! Sniper!",
									"Watch out! Sniper!",
									"Sniper!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f34y_any = {
					text = "Spotted a Sniper!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							text = "Sniper!"
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Look out! Sniper!",
									"Stay back! Sniper!",
									"Watch out! Sniper!",
									"Sniper!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f42_any = {
					text = "Look out!", --generic spot
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Look out!",
									"Watch out!",
									"Oh, shit!"
								},
								assault_mode = {
									"FUCK!",
									"Oh, shit!",
									"Aw, shit!",
									"Shit!"
								}
							}
						}
					}
				},
				f44x_any = {
					text = "Spotted a SWAT Turret!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They've got a turret!",
									"Oh no! Turret!",
									"Turret!",
									"Turret! Watch out!",
									"Argh, turret!",
									"They brought in a turret!",
									"SWAT Turret!"
								},
								assault_mode = {
									"Ah, shit, Turret!",
									"Turret!",
									"Fuck me! Turret!",
									"They brought a Turret!",
									"Turret son of a bitch!",
									"It's a goddamn turret!",
									"Motherfucking Turret!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"SWAT Turret!",
									"Turret!",
									"Fuck! Turret!",
									"Turret! Watch out!",
									"Turret! Bloody careful, now!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f45x_any = {
					text = "Spotted a Captain!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Oh, shit, a Captain!",
									"Oh, shit! (Captain)",
									"Look out! (Captain)",
									"Watch out! (Captain)",
									"Watch out! Captain!"
								},
								assault_mode = {
									"Watch out! Captain!",
									"FUCK! (Captain)",
									"SHIT! (Captain)",
									"Oh, SHIT! (Captain)",
									"Oh, shit! A Captain!",
									"Fuck! (Captain)",
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Watch out! Captain!",
									"It's a Captain!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f47x_any = {
					text = "Spotted a Medic!",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"They've got a Medic!",
									"Police Medic in the house!",
									"Cops got a Medic!",
									"Look out! Medic!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"It's an enemy Medic!",
									"Look out! Medic!", --should these have "enemy" in front of them for clarity?
									"Enemy Medic!",
									"Shit, Medic!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g30x_any = { --with 1s delay
					text = "Killed a Bulldozer!",
					category = "heister_kills",
					priority = 50,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Bulldozer down.",
									"Bulldozer down!",
									"Bulldozer's history."
								},
								assault_mode = {
									"Bulldozer eliminated!",
									"Bulldozer down!",
									"Bulldozer taken care of!",
									"Bulldozer's history.",
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Bulldozer down.",
									"Fuck off, dozer.",
									"Dozer's history.",
									"Fuck you, Bulldozer.",
									"Killed a dozer.",
								},
								assault_mode = { --check for assault/whisper get stuffed line
									"Bulldozer down!",
									"Fuck off, dozer!",
									"Fuck you, Bulldozer!",
									"Dozer's history!",
									"Killed a dozer!",
									"Get stuffed, dozer fuck!"
								}
							}
						}
					}
				},
				g31x_any = { --1s delay
					text = "Killed a Shield!",
					category = "heister_kills",
					priority = 50,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Shield down.",
									"Shield's history.",
									"Shield taken care of.",
									"Shield's eliminated.",
									"Shield down!"
								},
								assault_mode = {
									"Shield eliminated!",
									"Shield taken care of!",
									"Shield's history!",
									"Shield down!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Killed a Shield.",
									"Bye-bye, arsehole Shield.",
									"Got the fuckin' Shield.",
									"Get stuffed, Shield fuck.",
									"Fuck off, drongo Shield."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g32x_any = {
					text = "Killed a Taser!",
					category = "heister_kills",
					priority = 50,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Taser down.",
									"Taser down!",
									"Taser taken care of.",
									"Taser eliminated.",
									"Taser's history."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I got the Taser.",
									"Fuck off, Taser.",
									"Taser's dead.",
									"Get stuffed, Taser fuck.",
									"Eat that, you tosser. (Taser)"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g33x_any = {
					text = "Killed a Cloaker!",
					category = "heister_kills",
					priority = 50,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = { --no assault specific lines?
									"Cloaker down.",
									"Cloaker down!",
									"Cloaker's history.",
									"Cloaker eliminated",
									"Cloaker taken care of."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Cloaker's dead.",
									"Eat that, Cloaker fuck.",
									"Get stuffed, Cloaker.",
									"Sleep tight, Cloaker.",
									"Sit on my dick, Cloaker."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g35x_any = {
					text = "Killed a Sniper!",
					category = "heister_kills",
					priority = 50,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Got a sniper.",
									"Took care of the sniper.",
									"Sniper got what he deserved.",
									"Sniper's pushing up daisies.",
									"One sniper less in the world."
								},
								assault_mode = {
									"Sniper down!",
									"SNIPER DOWN!",
									"Sniper killed!",
									"Sniper dead!",
									"Sniper DEAD!",
									"One sniper less!",
									"Got him! (Sniper)",
									"Took him out. (Sniper)",
									"Sniper out!",
									"Sniper taken care of!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Took care of the Sniper.",
									"Sniper's dead.",
									"Get stuffed, Sniper fuck.",
									"Fuck off, Sniper.",
									"Got a Sniper."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g36x_any = {
					text = "Killed a Medic!",
					category = "heister_kills",
					priority = 50,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Killed the Medic.",
									"Killed the Medic!",
									"Medic is dead.",
									"Got the Medic."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Fuck off, Medic.",
									"Try an' heal any of those wounds, ya pussy.",
									"Bye-bye, Medic fuck."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g40x_any = {
					text = "SMOKE!",
					category = "UNKNOWN"
				},
				g41x_any = {
					text = "I'm blind! MY EYES!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Flashbang! I'm fucking blind!",
									"Flashbang! My eyes! MY EYES!",
									"Aagh, fuckin' flashbang!",
									"Agh, I can't see fucking SHIT!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"FUCK, I TOOK A FLASHBANG IN THE FACE!",
									"BLOODY HELL, I'VE BEEN FLASHED!",
									"AAAGH, WHAT THE FUCK!",
									"CRIKEY, I'M COMPLETELY BLIND!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g42x_any = {
					text = "TEARGAS! IT BURNS!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"AAGH, TEARGAS!",
									"AAGH, IT BURNS! IT BURNS!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"AAGH, TEARGAS! [coughing] I'LL BLOODY KILL THE BASTARD WHO THREW THAT!",
									"FUCK, TEARGAS! [coughing] THESE FUCKWITS ARE USING GAS!",
									"TEARGAS! [coughing] WE NEED GAS MASKS, NOT CLOWN MASKS!",
									"FUCK, TEARGAS! [coughing] FUCK, THAT STINGS BAD!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g80x_plu = {
					text = "I need a Medic Bag!",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							duration = 6,
							line_variations = {
								recombinable = true,
								standard_mode = { --unfinished
									{
										"I don't feel too good.",
										"They got me!",
										"They got me good!",
										"[screams in pain] I'm hurt bad.",
										"Oh, I'm not feeling too well.",
										"Oh, I'm hurt, I'm hurt bad!"
									},
									{
										"Anybody got a Medic Bag?",
										"Anybody got a Medic Bag to offer?",
										"Anybody got a Medic Bag to share?",
										"Any one of you want to share a Medic Bag?",
										"I could sure use a Medic Bag. Anyone got one?"
									}
								},
								assault_mode = {
									{
										"I'm hurt!",
										"[screams in pain] I'm hurt!",
										"[screams in pain] I'm dying!",
										"[screams in pain]"
									},
									{
										"Anybody got a Medic Bag?",
										"Medic Bag! Anyone?!",
										"Somebody drop a Medic Bag!",
										"I need a Medic Bag!"
									}
								}
							}
						},
						rb9 = {
							duration = 6,
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"[distorted] Goodbye. [tape rewinds]",
										"Goodbye. [tape rewinds]",
										"Vital signs deterioriating. [tape rewinds]",
										"I think I'm catching a cold. [tape rewinds]",
										"Health status degenerating. [tape rewinds]",
										"I don't feel too well."
									},
									{
										"Where is the nearest hospital?",
										"In the event of personal damage, please locate the nearest First Aid Kit.",
										"I need an appointment with the doctor.",
										"I need an appointment with the doctor. [tape rewinds] Ich brauche einen artz-",
										"Please find medical personnel as soon as possible.",
										"If you've sustained medical injuries, you may need to seek attention promptly."
									}
								}
							}
						},
						rb15 = {
							duration = 6,
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"I'm such a drongo, I should NOT have been hit!",
										"Those fuckwits got me good!",
										"Crikey, how many bullets did I eat?",
										"Fuckin' cowards got me!"
									},
									{
										"Who's got a Medic Bag?",
										"Anybody got a Medic Bag?",
										"Can someone spare a Medic Bag?",
										"I could really use a Medic Bag!",
										"Can't take much more of this!",
										"[screaming in pain] Fuck!",
										"Fuck, this hurts!",
										"Shit, I'm hurting bad!",
										"Fuckin' dipshits got me good!",
										"Fuck me, that bullet hurts!",
										"[groaning in pain] Christ, this shit hurts!"
									}
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				g81x_plu = {
					text = "I need an Ammo Bag!",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							duration = 6,
							line_variations = {
								recombinable = true,
								standard_mode = { --these ones may not be complete
									{
										"I almost got no ammo left!",
										"I'm almost out of ammo!",
										"I'm running out of ammo!",
										"I don't have much ammo left now!"
									},
									{
										"Anybody got an Ammo Bag left to share?",
										"Anybody got some extra ammo to spare?",
										"You guys got an Ammo Bag left to share?",
										"Any of you guys got an Ammo Bag?",
										"Ammo Bag! Anyone?!"
									}
								},
								assault_mode = {
									{
										"Running low on bullets!",
										"Almost out of ammo!",
										"Not much ammo left!",
										"Ammo low!"
									},
									{
										"Anyone got an extra bag?",
										"Anybody got some?",
										"Get me some ammo!",
										"Got some?",
									}
								}
							}
						},
						rb9 = {
							duration = 6,
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"Cartridges almost depleted. [tape rewinding]",
										"Ammo reserves are low. [tape rewinding]"
									},
									{
										"I need ammo.",
										"Fill me up, please."
									}
								}
							}
						},
						rb15 = {
							duration = 6,
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"I'm almost out of ammo!",
										"I'm low on ammo!",
										"I'm running out of ammo!",
										"I'm almost out of ammo!",
										"Mag's almost empty!"
									},
									{
										"I need some bloody ammo!",
										"Get me some bloody bullets!",
										"Get me some fucking ammo!",
										"Get me some ammo!"
									}
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				s01x_plu = {
					text = "Placed an Ammo Bag.",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I've placed an Ammo Bag over here.",
									"There's an Ammo Bag over here.",
									"Come fill up your ammo supplies.",
									"I've dropped an Ammo Bag over here.",
									"I got extra ammo over here.",
									"Come get some! (Ammo)",
									"Anyone need ammo?"
								},
								assault_mode = {
									"Come fill up your ammo!",
									"Fill up your ammo, guys!",
									"Come get some ammo!",
									"Ammo Bag!",
									"Ammo Bag, over here!",
									"Extra ammo, up for grabs!",
									"Come fill up!",
									"Ammo Bag, right here!",
									"Extra ammo, over here!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Additional cartridges available.",
									"Ammo. Here you go!",
									"Ammo. Available!",
									"Ammunition has arrived."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"More ammo over here.",
									"There's ammo over here.",
									"Extra ammo over here.",
									"I dropped an Ammo Bag over here."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				s02x_plu = {
					text = "Placed a Medic Bag.",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I've dropped a Medic Bag over here.",
									"Medic Bag! Come get patched up.",
									"There's a Medic Bag over here!.",
									"Medic Bag here! Anyone need patching up?",
									"Get over here if you need a Medic Bag!",
									"Medic Bag, up for grabs!"
								},
								assault_mode = {
									"Medical Bag, up for grabs!",
									"Medical Bag, right here!",
									"Medical Bag over here!",
									"Medical Bag, come get patched up!",
									"Medical Bag, guys!",
									"Medic Bag, right here!",
									"Come replenish your health!",
									"Come patch yourselves up!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Medic Bag available.",
									"Medical supplies have arrived."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"I got a Medic Bag right here.",
									"Medic Bag over here.",
									"Medic Bag over here.", --two soundfile variations
									"Some medic supplies here."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				s05x_sin = {
					text = "Thanks.",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Thanks, friend.",
									"Thanks, my friend.",
									"[grunts] Thanks, friend.",
									"[groans] Thanks a lot, my friend.",
									"[grunts] Thanks."
								},
								assault_mode = {
									"Thanks, man!",
									"Thanks, buddy!",
									"Thanks!",
									"Thanks.",
									"Thanks, pal."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Thank you very much.",
									"[distorted] Thank you very much."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"[groans] I guess I should say 'thanks.'",
									"[groans] I guess I owe you one.",
									"[groans] Finally!",
									"[groans] Thanks for that."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				s07x_sin = {
					text = "(electrical tasing crackling)",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb3 = {
							text = "[electrocuted gibberish]"
						}
					}
				},
				s08x_sin = {
					text = "(reviving a teammate)",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Let's fix you up.",
									"Let's get you fixed up.",
									"I've got you.",
									"I'll get you fixed.",
									"It's alright, I'm here to help.",
									"I can get you patched up.",
									"It's okay, I'm covering you.",
									"I got ya.",
									"Don't you worry, I'll fix you right up.",
									"Come on, now!"
								},
								assault_mode = {
									"I'll help you up!",
									"I'll get you back up!",
									"I'll get you up!",
									"You'll be up in a sec!",
									"Let's get you back in business!",
									"Let's get you back up and running!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"What a lovely day, right?",
									"Hi!",
									"Hello."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"You'll be up in no time.",
									"Lemme get you up.",
									"I'll get you back up.",
									"Let's get you up."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				s12 = {
					text = "Placed a First Aid Kit",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"First Aid Kit! Get your band-aid here!",
									"First Aid Kit! Get your band-aid here.",
									"First Aid Kit here, anyone who needs it!",
									"Right there! There's a First Aid Kit here."
								},
								assault_mode = {
									"First Aid Kit here!",
									"Got a First Aid Kit here!",
									"Here's a First Aid Kit!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"First Aid Kit."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Here's a First Aid Kit.", --three variations on this line
									"Here's a First Aid Kit.",
									"Here's a First Aid Kit!",
									"First Aid Kit here."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				s13 = {
					text = "Placed a Bodybag Case.",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Bodybag Case right here.",
									"Bodybag Case right here!",
									"Bodybag Case, right here.",
									"Bodybag Case deployed!"
								},
								assault_mode = { --why were assault variantions recorded
									"Got a Bodybag Case here!",
									"Bodybag Case"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Additional wrapping can be found in the designated area.",
									"Additional wrapping can be found in the designated area. Zusätzlich-",
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Bodybag Case!",
									"Got a Bodybag Case here!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				s14 = {
					text = "Bodybag secured.",
					category = "UNKNOWN"
				},
				s32x_sin = {
					text = "I'm out of Cable Ties.",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"That was the last of my Cable Ties.",
									"That was the last Cable Tie I had.",
									"Okay, that was the last of my Cable Ties.",
									"Alright, that was the last Cable Tie.",
									"Now I'm all out of Cable Ties."
								},
								assault_mode = {
									"That was the last of my Cable Ties.",
									"Okay, that was the last Cable Tie I had.",
									"Alright, that was my last Cable Tie.",
									"Now I'm all out of Cable Ties."
								}
							}
						}
					}
				},
				f11e_plu = { -- f [eleven] e_plu; curse you, monospace font
					text = "Someone help me up!",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"Guys!",
										"Hey guys!",
										"Somebody!"
									},
									{
										"Help me up!",
										"Help me!",
										"HELP!",
										"Gimme a hand!",
										"Over here!",
										"I need help!",
										"You gotta help me!",
										"You gotta help me up!"
									}
								},
								assault_mode = {
									{
										"SOMEBODY!",
										"Friends!",
										"Hey guys!",
										"Hey, my friends!"
									},
									{
										"Help me!",
										"HELP!",
										"Gimme a hand!",
										"You gotta help me!",
										"Over here!",
										"I need help!",
										"Help me up!"
									}
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"HELP ME!",
									"Get me up!",
									"Help!",
									"You gotta help me!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				s20x_sin = {
					text = "I'm picking these handcuffs...",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"This ain't gonna take long.",
									"Gonna slip these.",
									"[chuckles] They didn't think I could get out.",
									"No problem, I know how these go.",
									"[chuckles] These are easy to get out of."
								},
								assault_mode = {
									"I'm gonna pick these handcuffs.",
									"I'll get out of these cuffs in a jiffy.",
									"I'm gonna get out of these cuffs.",
									"Time to make use of those old lockpicking skills.",
									"I'll pick these cuffs in no time.",
									"[chuckles] Like I haven't picked a pair of these before."
								}
							}
						}
					}
				},
				s21x_sin = {
					text = "I escaped my handcuffs.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"[laughs] Cuffs off, let's ride!",
									"[laughs] I'm outta the barn!",
									"[chuckles] Cuffs open!",
									"[laughs] Slippery as a greased weasel!",
									"[laughs] I'm doin' what I was born to do!",
									"[laughs] What'd I say?"
								},
								assault_mode = {
									"Okay, I picked the cuffs.",
									"[chuckles] They thought these cuffs could hold me.",
									"[chuckles] I'm a bona fide escape artist.",
									"[quiet chuckle] The cuffs are off.",
									"Alright, I'm free.",
									"Alright, the cuffs are off.",
									"Okay, I got rid of the cuffs."
								}
							}
						}
					}
				},
				f02x_plu = { --to multiple targets
					text = "Everyone get down!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Everybody, on the ground!",
									"On the ground, all of you!",
									"Down on the ground, all of you!",
									"Down on the ground, people!",
									"Down, all of you!",
									"Down, people!",
									"Everyone, down!",
									"ON THE GROUND, people!"
								},
								assault_mode = {
									"On the ground, people!",
									"EVERYBODY. DOWN.",
									"EVERYBODY DOWN!",
									"Everybody down!",
									"Down!",
									"DOWN!",
									"Down, all of you!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Down.",
									"Down. [speaking Spanish]" --at least, i think it's spanish
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Down.",
									"Down on the ground.",
									"On the ground.",
									"Get down on the ground.",
									"Ge'down."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				}, --to multiple hostages
				f02x_sin = {
					text = "Get down!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Get down!",
									"Down on the ground!",
									"Get down on the ground!",
									"Get down on the ground.",
									"Down!",
									"DOWN!",
									"On the ground!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Down.",
									"Down. [speaking Spanish]"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Hit the floor.",
									"Down.",
									"Get down.",
									"Ge'down.",
									"On the ground.",
									"On the ground."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f02b_sin = {
					text = "Hey, you, I said GET DOWN!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I said, down on the ground!",
									"I said, GET DOWN ON THE GROUND.",
									"You heard what I just said?!",
									"You do what I tell you!",
									"NOW!",
									"You're pushing it!",
									"Don't try to be a hero!",
									"Don't test my patience!",
									"Don't make me say it again!",
									"I'm not gonna say it again!"
								},
								assault_mode = {
									"I SAID GET THE FUCK DOWN!",
									"I SAID DOWN, ON THE GROUND!",
									"I SAID ON THE GROUND!",
									"I. SAID. DOWN!",
									"I TOLD YOU, DOWN!",
									"I'M NOT SAYING IT AGAIN!",
									"I TOLD YOU, GET DOWN ON THE GROUND!",
									"DON'T TEST MY PATIENCE!",
									"DON'T TRY TO BE A HERO!",
									"DO WHAT I FUCKING SAY!",
									"ON THE GROUND, YOU PIECE OF SHIT!",
									"ON THE FUCKING GROUND, YOU SON OF A BITCH!",
									"RIGHT NOW, MOTHERFUCKER!",
									"RIGHT FUCKING NOW!",
									"WHAT ARE YOU, A FUCKIN' HERO?",
									"YOU'RE PUSHING IT!",
									"YOU HEAR WHAT I'M FUCKING SAYING?",
									"YOU HEARD WHAT I FUCKIN' SAID?",
									"YOU DO WHAT I FUCKING TELL YOU!",
									"YOU FUCKING HEARING ME?!",
									"YOU. DO WHAT I FUCKING SAY!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Down.",
									"Down. [speaking Spanish]",
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Get down, or get killed.",
									"I said, 'down.'",
									"Don't make me say it again.",
									"Did I stutter?"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f03a_plu = {
					text = "Stay down!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Stay down, everybody!",
									"Stay down, people!",
									"Stay down, all of you!",
									"Everybody stay down!",
									"Everybody, stay down!",
									"Nobody move!"
								},
								assault_mode = {
									"Stay where you are!",
									"STAY WHERE YOU ARE!",
									"NOBODY MOVE!",
									"Everybody, stay DOWN!",
									"Everybody stay down!",
									"Everybody stay down.",
									"Stay! DOWN!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Stay down.",
									"Stay."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Stay down.",
									"Stay.",
									"Stay still.",
									"Stay down, little doggy.",
									"Stay put.",
									"Don't move.",
									"Don't move."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				}, --to everybody
				f03a_sin = {
					text = "Stay down!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Stay low!",
									"Stay still!",
									"Stay down!",
									"Don't move!",
									"Stay where you are!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Stay down.",
									"Stay."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Stay put.",
									"Stay still.",
									"Kiss the fucking ground.",
									"Don't move.",
									"Stay down, little doggy.",
									"I had a good burger before I came here. That honestly might be the only reason I haven't killed you yet.",
									"Aren't you enjoying this, you bloody tool?",
									"I'm thinkin' of eatin' a good steak after this. I deserve it, don't I?",
									"Consider yourselves lucky that I woke up in good spirits today! Christ, I woulda fuckin' killed you all otherwise.",
									"Ya fuckwit, I should just kill ya based off your stupid face!",
									"Don't act stupid, and I won't kill ya. Simple!",
									"[laughs] it's fuckin' pathetic how scared you look. Christ, how can anyone be such a coward?",
									"Don't try to be a fuckin' hero.",
									"I'll stomp your face if you move, got it?",
									"Crikey, I'm getting bored. I might just kill one of you for fun.",
									"Don't test me, you hear?",
									"Just lay still and shut your mouth!",
									"I can't imagine you've ever been a part of anything as remotely exciting as this!",
									"Pretend you're dead, and you'll keep living, got it?",
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				}, --to single target
				f03b_any = {
					text = "AND STAY DOWN!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"And stay there!",
									"And stay put.",
									"And stay down.",
									"And don't you dare move.",
									"And don't move."
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Stay down.",
									"Stay."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"And stay down.",
									"And don't fucking move.",
									"And stay there!",
									"Stay down.",
									"And don't move."
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f36x_any = { --todo
					text = "Get the fuck up!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Get off your ass!",
									"Up, buddy!",
									"You! Get back up and fight!",
									"We need you, buddy! Get up!",
									"Get back in the fight, buddy!",
									"Get back up and fight, buddy!",
									"You can do it!",
									"Stand up!",
									"Pain is just mental! Get back up!"
								},
								DISABLED_assault_mode = {} --we need you, buddy! Stand up!
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Wake up."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Get the fuck up.",
									"Get the fuck up, I'm not kiddin'.",
									"Get on ya' feet!",
									"You can do better than that!",
									"Up with ya!",
									"Rise and shine, fuckwit!",
									"Get up and fight!",
									"You're not bloody done yet!",
									"Get on ya' fuckin feet!",
									"Get back in the fight, ya' tosser!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f37_any = {
					text = "Spotted a Guard.",
					category = "heister_spots",
					priority = 55,
					duration = 3,
					variants = {
						rb4 = {
							line_variations = {
								whisper_mode = {
									"[whispering] I see a Guard.",
									"[whispering] They're everywhere.",
									"[whispering] Guard over here.",
									"[whispering] Got a Guard over here.",
									"[whispering] Got a Guard.",
									"[whispering] They haven't seen us.",
									"[whispering] Careful...",
									"[whispering] Guard!",
									"[whispering] Guard.",
									"[whispering] Keep track, guys.",
									"[whispering] Watch it, guys.",
									"[whispering] Stay low and quiet.",
									"[whispering] We're good.",
									"[whispering] Stay back."
								}
							}
						},
						rb9 = {
							line_variations = {
								whisper_mode = {
									"A security guard.",
									"Security guard.",
									"-uard.",
									"Guardia. (Guard.)",
									"Eine bewachen. (A guard.)",
									"-Bewachen. (Guard.)",
									"Bewachen. (Guard.)"
								}
							}
						},
						rb15 = {
							line_variations = {
								whisper_mode = {
									"[whispering] Look out! Guard!",
									"[whispering] Guard! Watch it.",
									"[whispering] Guard! Stay back.",
									"[whispering] Careful! Guard!",
									"[whispering] Guard!",
									"[whispering] Guard! Stay quiet.",
									"[whispering] Don't bloody alert the Guard.",
									"[whispering] Guard! Stay alert!"
								}
							}
						}
					}
				},
				f38_any = {
					text = "Follow me!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"C'mon, c'mon!",
									"C'mon.",
									"Come with me, move it!",
									"Come along, now.",
									"Come along, now!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please follow.",
									"-follow."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Come with me!",
									"Follow me!",
									"Follow me!",
									"Come on!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f39_any = {
					text = "Spotted a Camera.",
					category = "heister_spots",
					priority = 55,
					variants = {
						rb4 = {
							line_variations = {
								whisper_mode = {
									"[whispering] Stay low and quiet.",
									"[whispering] They're everywhere.",
									"[whispering] Careful...",
									"[whispering] We're good.",
									"[whispering] Stay back.",
									"[whispering] Watch it, guys.",
									"[whispering] Keep track, guys."
								}
							}
						},
						rb9 = {
							line_variations = {
								whisper_mode = {
									"A camera.",
									"Security-",
									"Security camera.",
									"Una camera. (A camera.)",
									"[speaking Spanish] Camera.",
									"[speaking French] Camera.",
									"Stay clear.",
									"Monitoring-"
								}
							}
						},
						rb15 = {
							line_variations = {
								whisper_mode = {
									"[whispering] Watch out! Camera!",
									"[whispering] Smile for the Camera.",
									"[whispering] Camera!.",
									"[whispering] CCTV!",
									"[whispering] Watch out! (Camera)",
									"[whispering] Don't get caught on tape.",
									"[whispering] Camera over there!"
								}
							}
						}
					}
				},
				f40_any = { --escort go faster
					text = "(to escort) Hurry up!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Get a move on!",
									"Get moving!",
									"Move!",
									"GET A MOVE ON!"
								},
								assault_mode = {
									"MOVE IT!",
									"GET A MOVE ON!",
									"MOVE!",
									"Get moving!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Hurry up.",
									"Hurry up. [tape rewinding] Más rápido, imbécil. (Faster, idiot.)",
									"-proceed.",
									"Please proceed."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Run faster, dipshit!",
									"Move it!",
									"Move it, you drongo!",
									"Move!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f41_any = {
					text = "(to escort) Get the fuck up!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Up.",
									"Up!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Wake up."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Get the fuck up, I'm not kiddin'.",
									"Get back in the fight, ya' tosser.",
									"Get the fuck up.",
									"Get on your feet!",
									"Get up and fight!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f43_any = {
					text = "(to escort) GET THE FUCK UP!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Up.",
									"Up!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Wake up."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Get up and fight!",
									"Get the fuck up!",
									"Get back in the fight, ya' tosser.",
									"Get the fuck up, I'm not kiddin'.",
									"Get on your feet!",
									"Up with ya'!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				f46x_any = {
					text = "(Interrogation)",
					category = "heister_dialogue",
					priority = 5,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"I got a bullet here with your name on it.",
									"You're fuckin' pushing it!",
									"LET IT OUT! Right fucking now!",
									"Right now, motherfucker!",
									"Speak up, fuckface!",
									"What are you, a fucking hero?!",
									"Answer, dammit!",
									"Don't try to be a fucking hero!",
									"You fucking listening?",
									"ANSWER!",
									"You got a fucking death wish?!",
									"I'm getting tired of this!",
									"You hear what I'm saying?!",
									"DON'T TRY MY PATIENCE!",
									"You want to live until tomorrow?!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"It is advised that you answer immediately.",
									"Exercise caution when [distorted] aggravating my temper.",
									"Please, reply.",
									"Please, do not be brave.",
									"Please, do not be a hero. Muy esto-",
									"Please, do it immediately.",
									"We respectfully request an answer."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Tell us what we need to know!",
									"Fuckin' answer!",
									"I'll break your fuckin' face!",
									"I'll fuckin' kill ya!",
									"I'll make ya wish you were dead, you understand?!",
									"Don't make me bring out the fury!",
									"Answer me, fucker!",
									"I'll stomp your bloody throat!",
									"COCKSUCKER!",
									"Right now, dipshit!",
									"TOSSER!",
									"Don't play tough with me!",
									"You wish to see tomorrow, you bastard?!",
									"Don't make me crush your fuckin' head!",
									"Listen up, tosser!",
									"Spit it out!",
									"I'll rip your fuckin' face off!"
								}
							}
						}
					}
				},
				f48x_any = {
					text = "Wait over there.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Don't move!",
									"Stay still!",
									"Stay where you are!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please hold.",
									"Please wait.",
									"You have been put on hold."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Just stay there.",
									"Hey, wait over there.",
									"Wait over there.",
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				d01x_sin = {
					text = "Spotted a jammed drill.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"Drill got jammed right up, I think.",
										"You hear that? The drill is jammed.",
										"Ain't that a jammed drill sound?",
										"What I hear right now sounds like a jammed drill.",
										"Aw, man, I can hear the drill got stuck."
									},
									{
										"We have to fix it.",
										"We need to get it fixed!",
										"One of us has to fix it!",
										"Somebody gotta restart it."
									}
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"[disorted] -the event of drill malfunction,",
										"In the event of drill malfunction,",
										"-drill malfunction,"
									},
									{
										"please call technical support.",
										"[tape fastforwarding] -call technical support."
									}
								}
							}
						},
						rb15 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"The drill's jammed!",
										"We've got a jammed drill on our hands!",
										"I think the drill is stuck!"
									},
									{
										"Someone's gotta fix it!",
										"We need to get it fixed!",
										"We have to fix it!",
										"We've gotta get it fixed!",
									}
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				d02x_sin = {
					text = "Spotted a jammed drill.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"The drill's squeaking again.",
										"The drill's stuck again.",
										"The drill got stuck again.",
										"The drill seems to have jammed again.",
										"Here we go again, the drill's stuck."
									},
									{
										"Somebody gotta fix it!",
										"Somebody gotta restart it!",
										"We have to restart it!",
										"One of us has to fix it!",
										"We need to get it fixed!"
									}
								}
							}
						},
						rb9 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"[disorted] -the event of drill malfunction,",
										"In the event of drill malfunction,",
										"-drill malfunction,"
									},
									{
										"please call technical support.",
										"[tape fastforwarding] -call technical support."
									}
								}
							}
						},
						rb15 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"The drill's jammed!",
										"We've got a jammed drill on our hands!",
										"I think the drill is stuck!"
									},
									{
										"Someone's gotta fix it!",
										"We need to get it fixed!",
										"We have to fix it!",
										"We've gotta get it fixed!"
									}
								}
							}
						}
					}
				},
				d03_plu = {
					text = "Spotted a busted computer.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Computer's beepin'- never good!",
									"Sounds like we need some tech help!",
									"Sounds like the computer's all fouled up!",
									"Appears like the computer's busted!",
									"Appears like the computer ain't workin' right!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"-software malfunction, please call technical support."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Why is the computer beeping?!",
									"Fuck, something's not right with the computer!",
									"The computer process is jammed!",
									"The bloody computer is stuck!"
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				d03_sin = {
					text = "Thermal Lance is broken",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"That there is the sound of a stuck Thermal Lance.",
									"Appears that the Thermal Lance has melted. I hear it!.",
									"You hear the Thermal Lance. Sounds right... stuck!",
									"Pretty sure that noise means the Thermal Lance stopped.",
									"Sounds like the Lance is misfiring.",
									"Yeah, that's an overheated Thermal Lance, alright." --dallas pronounces it "overhead" so ovk probably made a typo in the script
								--										"Another computer needs fixing!", --uhh... not sure why this sound variant can play from d03_sin
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				d04_plu = {
					text = "Spotted a broken computer.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Computer's beeping again!",
									"We gotta fix the computer again!",
									"A machine ain't workin' again!",
									"Wondering if it's the OS, or what?",
									"[chuckles] Another technical problem with the computer.",
									"[chuckles] Wonder if it's the software.",
									"Wonder whether it's software or hardware failures."
								}
							}
						}
					}
				},
				d04_sin = {
					text = "The Thermal Drill is broken! Someone's gotta fix it!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Someone go take a look at the drill, huh?",
									"The Thermal Drill just isn't sounding good!",
									"Here we go again! The Lance ain't working!",
									"Once more, time to fetch the drill a kick!",
									"Appears the Thermal is broken again!",
									"We gotta get that Thermal Drill working again!",
									"Thermal Drill ain't up to snuff!",
									"'fraid Drill is out of whack again!",
									"Appears the Thermal Drill is out of order, again!"
								}
							}
						}
					}
				},
				d05 = {
					text = "It's broken!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"It's stuck!",
										"Something's not right!",
										"What's that?",
										"It's jammed!"
									},
									{
										"One of us has to fix it!",
										"Somebody gotta fix it!",
										"Somebody gotta restart it!",
										"We have to fix it!",
										"We need to get it fixed!"
									}
								},
								DISABLED_assault_mode = {}
							}
						},
						rb15 = {
							line_variations = {
								recombinable = true,
								standard_mode = {
									{
										"It's stuck!",
										"Something's not right!",
										"It's jammed!",
										"What's that?"
									},
									{
										"We need to get it fixed!",
										"We have to fix it!",
										"Someone's gotta fix it!"
									}
								},
								DISABLED_assault_mode = {}
							}
						}
					}
				},
				a01x_any = {
					text = "Let's do this.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb3 = {
							line_variations = {
								standard_mode = {
									"Let's get it over with.",
									"Alright. Let's rock 'n' roll.",
									"Alright. Let's get rich.",
									"Okay, let's roll.",
									"Alright, let's roll.",
									"[whisper] Alright, let's do this.",
									"Now let's get rich.",
									"Let's rock 'n' roll.",
									"Let's do this."
								}
							}
						},
						rb4 = {
							line_variations = {
								standard_mode = {
									"Going to work...",
									"[chuckles] It's on now...",
									"Good luck, buddies.",
									"'kay, let's do this, buddies.",
									"Let's make that money.",
									"Ready up.",
									"Okay, let's do this.",
									"Let's break bad.",
									"Get your game face on, buddies."
								}
							}
						},
						rb5 = {
							line_variations = {
								standard_mode = {
									"[chuckles] This is going to be so much fun...",
									"Let's do this.",
									"Alright, let's do this.",
									"Let's break some necks.",
									"Mask up.",
									"Let's get to it.",
									"It's cha-ching time!",
									"Here goes nothing.",
									"Time to rock."
								}
							}
						},
						rb7 = {
							line_variations = {
								standard_mode = { --noncomprehensive, just haven't logged any
									"It's showtime, you shites..."
								}
							}
						},
						rb8 = {
							line_variations = {
								standard_mode = {
									"Let's bite more than we can chew.",
									"Let's nail this.",
									"Let's do what we came for.",
									"Let's do this, people.",
									"Ready for action.",
									"Let's hit it.",
									"Let's get to it.",
									"Time for action.",
									"Time to do this.",
									"Idemo ludo... (Let's go crazy...)", 
									"[speaking Croatian]"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Now, enjoy the show!",
									"The following presentation has been approved for mature audiences only.",
									"Please be advised- the following presentation is not intended for minors.",
									"We hope you have a pleasant flight."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"These fuckers will learn my name...",
									"[chuckles] It's gonna be a ripper of a day...",
									"Time to cement my place in this crew.",
									"Let's bloody go.",
									"I'll go down in history as one of the greatest.",
									"I was born for this.",
									"Time to show I belong in the big leagues.",
									"Time to build my legacy.",
									"Time to make the world burn."
								}
							}
						},
						cop = {
							text = "a01x_any unknown??? oopsie woopsie!!!",
							category = "UNKNOWN"
						},
						civilian = {
							text = "(fear)",
							priority = 37,
							category = "civilian_dialogue"
						}
					}
				}, --mask up				
				i01x_any = {
					text = "[Anticipation phase]",
					category = "UNKNOWN"
				},
				r01x_sin = { --bot 'follow me' response; short delay
					text = "Gotcha.",
					category = "heister_dialogue",
					priority = 20,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Got it.",
									"I got it!",
									"Right on it."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Yes, I understand.",
									"Message received."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Gotcha!",
									"Okay!",
									"I'm comin'!",
									"Okay.",
									"Alright!",
									"Alright."
								}
							}
						}
					}
				},
				r02a_sin = { --bot response; short delay
					text = "I'm on my way",
					category = "heister_dialogue",
					priority = 20,
					rb4 = {
						line_variations = {
							standard_mode = {
								"I'm coming!",
								"Be right there!",
								"As fast as I can!",
								"I'm comin' for ya!",
								"I'll be there in a flash!",
								"I'll be there in an instant!"
							}
						}
					},
					rb9 = {
						line_variations = {
							recombinable = true,
							standard_mode = {
								{
									"-will arrive shortly.",
									"-we are coming.",
									"I am happy to help.",
									"Help is on the way!",
									"We will arrive shortly.",
									"I will gladly help."
								},
								{										
									"[tape rewinding] Please hold.",
									"[tape rewinding] Don't panic.",
									"[tape rewinding] Please be patient.",
									"Stay calm and don't panic."
								}
							}
						}
					},
					rb15 = {
						line_variations = {
							recombinable = true,
							standard_mode = {
								{
									"I'm comin'.",
									"On the way.",
									"As soon as I can.",
									"I'm right there."
								},
								{
									"Hang in there!",
									"Bloody hang in there!",
									"Just hang on!"
								}
							}
						}
					}
				},
				r03x_sin = {
					text = "Gotcha!",
					category = "heister_dialogue",
					priority = 40,
					rb4 = {
						line_variations = {
							standard_mode = {
								"Gotcha!",
								"Gotcha."
							}
						}
					},
					rb9 = {
						line_variations = {
							standard_mode = {
								"Yes, I understand.",
								"Message received."
							}
						}
					}
				},
				s09a = {
					text = "[reviving] Hey, man, you're not looking too good...",
					max_distance = 1500,
					category = "UNKNOWN"
				},
				s09b = {
					text = "[reviving] Woah, you look even worse than before.",
					max_distance = 1500,
					category = "UNKNOWN"
				},
				s09c = {
					text = "[reviving] You're looking really beat up, use a doctor bag!",
					max_distance = 1500,
					category = "UNKNOWN"
				},
				s05a_sin = {
					text = "I feel terrible, heal me!",
					max_distance = 1500,
					category = "UNKNOWN"
				}, --! bad
				s05b_sin = {
					text = "Whew, thanks.",
					max_distance = 1500,
					category = "UNKNOWN"
				},

				t01x_sin = {
					text = "Just a few minutes left.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Only a few minutes left!",
									"A few minutes left still.",
									"Only a couple of minutes left now.",
									"We still got a few more minutes to go!",
									"Just a few minutes left now."
								}
							}
						}
					}
				},
				t02x_sin = {
					text = "Halfway there.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"We're halfway through!",
									"We're halfway now!",
									"We're about halfway through now!",
									"We should be about halfway by now!",
									"We should be halfway through by now.",
									"Halfway! We're halfway!"
								}
							}
						}
					}
				},
				t03x_sin = {
					text = "Almost there.",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Only seconds away!",
									"Any moment now!",
									"Any second!",
									"Any second...",
									"Any second now!",
									"We're almost done!",
									"Just a couple more seconds!"
								}
							}
						}
					}
				},
				l01x_sin = {
					text = "Hands up!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Hands up!",
									"Put 'em up!",
									"Put 'em up.",
									"Reach for the sky!",
									"Put your hands in the air!",
									"Drop your weapon!",
									"Stick 'em up!",
									"Stick 'em up.",
									"Hands where I can see them!"
								},
								assault_mode = {
									"No sudden movements!",
									"Put your hands up!",
									"Drop your piece!",
									"Hands in the air!",
									"Hands up!",
									"Stick em up!",
									"Put your fuckin' hands up!",
									"Hands up, mothafucka!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Arms outstretched!"
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Put your hands up.",
									"Put 'em up, fuckwit!",
									"Drop your weapon!",
									"Drop your gun.",
									"Hands in the fuckin' air!",
									"Hands up, ya fucker!",
									"Lower ya weapon!",
									"Hands where I can see them."
								},
								assault_mode = {
									"Put your bloody hands up!",
									"Get your hands up!",
									"Hands up, fucker!",
									"Drop it!",
									"Get your hands up, dipshit!",
									"Drop the gun!",
									"Drop the weapon now!"
								}
							}
						}
					}
				}, --intimidate
				l02x_sin = {
					text = "Get on your knees!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Down on your knees!",
									"ON YOUR KNEES!",
									"On your knees!",
									"Get on your knees!",
									"Get down on your knees!"
								},
								assault_mode = {
									"Kneel!",
									"KNEEL!",
									"On your fucking knees!",
									"Down on your knees!",
									"Get on your knees, fuck it!",
									"Get down on your fucking knees!",
									"GET ON YOUR KNEES!"
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Kneeling position." --no variations
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Get down on your knees.",
									"Kneel down.",
									"On your fuckin' knees.",
									"Down on your knees.",
									"Kneel.",
									"Drop on your knees.",
									"Kneel, dipshit.",
									"Hit the ground, fucker."
								},
								assault_mode = {
									"Get on your knees!",
									"Down on your knees!",
									"Get down on your knees!",
									"On your knees!",
									"Kneel!"
								}
							}
						}
					}
				}, --intimidate 2
				l03x_sin = {
					text = "Now put your cuffs on!",
					category = "heister_dialogue",
					priority = 40,
					variants = {
						rb4 = {
							line_variations = {
								standard_mode = {
									"Now handcuff yourself!",
									"Now put your cuffs on!",
									"Now cuff yourself!",
									"Cuff yourself!",
									"Cuff yourself.",
									"Put your cuffs on!",
									"Handcuff yourself!"
								},
								DISABLED_assault_mode = {}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"Please place the cuffs firmly on your wrists.",
									"Please apply handcuffs! Thank you!",
									"Supply handcuffs."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Cuffs on!",
									"Cuffs! Put 'em on!",
									"Get your cuffs on!",
									"Cuff yourself!",
									"Put your cuffs on!"
								},
								assault_mode = {
									"Put your cuffs on!",
									"Put your handcuffs on!",
									"Now, cuffs!",
									"Cuffs on!",
								}
							}
						}
					}
				},
				dsp_radio_checking_1 = {
					text = "(answering pager)",
					category = "heister_dialogue",
					priority = 20,
					duration = 10, --default pager answer time is 10s
					variants = {
						rb4 = { --incomplete
							line_variations = {
								standard_mode = {
									"Um, all good, sometimes I just see things. Not to alarm you!",
									"[embarassed chuckle] I think maybe I'm standing on a magnet. That might be the problem.",
									"Everything's peachy, over.",
									"I mean, I didn't see anything.",
									"I don't know what you heard, but everything's cool over here.",
									"Not much going on over here, ma'am. Sorry- 'sir.'",
									"I saw a cockroach. That's it.",
									"Can't say anything is happening, to be honest.",
									"Um, I think I got the radio wet when I was washing my hands.",
									"Things are cool, over.",
									"Just swatted a fly sitting on the radio.",
									"No issues, except that I got a hiccup. [hiccups]",
									"Can't say much is going on.",
									"Oh yeah, we're perfectly perfect over here.",
									"Uh... I thought I saw a ghost, but I'm getting tired, don't listen to me.",
									"Nothing really to speak of. All's well, buddy.",
									"Nah, situation normal, if you wanna know.",
									"No problem, except... [sniffling] I got a nasty cold! [coughing violently]",
									"Uh, hey buddy! Everything's just fine!",
									"I gotta say, I don't like these radios. They're just no goddamn good.",
									"I think it's the radio. It's gotta be a short.",
									"Uh, it's hard to say. Um, everything's in order over here. Over.",
									"Um, ahh, uhh... I don't... [imitates radio static]",
									"Everything's good, except the parts that aren't.",
									"I think the fillings in my teeth are interfering with the radio signals.",
									"No real issues, except I slammed my toe into a chair.",
									"Everything is A-OK, over."
								}
							}
						},
						rb9 = {
							line_variations = {
								standard_mode = {
									"You have reached Dennaton Enterprises. We can't take your call at the moment. Please leave a message after the beep and we'll get back to you. [answering machine beep]",
									"This is GenSec Tech Support. If you have a problem with your radio, please contact us during normal business hours. Thank you.",
									"[tape rewinding] The number you have reached is not in service. Please check the number and dial again. Thank you.",
									"We are experiencing technical issues. There is no cause for alarm. Please be at ease.",
									"This was a test of the automated paging system. Repeat: This was a test. Thank you.",									
									"This is a test broadcast of the emergency airwaves. This is a test. Do not be alarmed. This is a test."
								}
							}
						},
						rb15 = {
							line_variations = {
								standard_mode = {
									"Nah, we're good. Just a random... man, walking around. I gave him a slice of cheddar, and sent him away.",
									"[singing] Never gonna give you up, never gonna let you down, never gonna run around and desert you- oh, sorry, is this on?",
									"[singing] Can't touch this! ...oh, sorry Control, I pressed the button!",
									"[singing] I come from a land down under... where beer flows, and men chunder- oh, sorry, is this on? Hello?",
									"I just can't get over the season finale on The Walking Dead! I need to talk to someone about it.",
									"Leroy is being a fucking drongo. Can we switch partners?",
									"It's a ripper of a day, isn't it Control? Life's good, yeah?",
									"Well, bugger me! I think I left me' stove on at home. Well, nothing to do about that now.",
									"Crikey, I'm bored as batshit. You seen any action? Control?",
									"How's it going over there, Control? You good? We're fine over here, just checking in.",
									"So tell me, Control. Jared Leto as the new Joker: Yea or Nay? I think he'll pull it off, I must say.",
									"Uhh, no, everything is clear here Control. Nothing weird happening. Nothing at all.",
									"Sorry to disturb you, Control. I thought I saw something suspicious, but it was nothing.",
									"Sorry, Control, I must have pressed the wrong button.",
									"Sorry, Control, I'm just really craving some good pudding. You got any?",
									"Sorry, Control, did you hear any of that? Just my... pet rat, Ernie, attacking Leroy. But we're fine now.",
									"Sorry to disturb you, Control. I thought I saw something suspicious, but it was nothing.",
									"HAH, Leroy is such a tosser! He thinks he can out-drink me! Yeah, right, like that would ever happen!",
									"HAH, Leroy is such a tosser! I ate his Snickers, and now he's crying about it! Get some bollocks, man! I'll get you another one!",
									"If I don't see some action soon, I'll turn into a fucking basket case.",
									"I'm making some vegemite sandwiches for the lads. You want some, Control?",
									"So, this Saturday. Are we gonna party or what? I'm looking to get my groove on.",
									"[yawns] God, I'm buggered. Can I get off my shift early?",
									"Uh, what? No, no. I mean, yes! No, everything is fine here, okay?",
									"This might actually be the world's most boring job.",
									"Don't you just love watching panicked people running for their lives? No? I'm just joking, mate! Loosen up! You think I'm off my rocker?",
									"Don't get your panties in a bunch, Control! We're fine and dandy over here.",
									"When I was a young girl, they used to call me 'biscuit mama.' Ah,  I miss that nickname. Can you start calling me that?",
									"I'm thinking of getting myself a dog, and naming him 'Blood Lord.' 'Come here, Blood lord! That's right, that's a good boy!'",
									"[high pitched voice] No problem here Control, everything is aaaalright! [giggles] I'm good at doing different voices, right?",
									"I don't want to put you on the spot, but I've gotta ask: Vampires or werewolves- who wins in a battle? Me and Leroy can't decide.",
									"I had the WEIRDEST dream last night. I dreamt that my head was replaced by an actual hamburger, and then people started calling me 'hamburger head'.",
									"No, no real problem, Control. Leroy is upset because I said I don't believe he would last long if a zombie outbreak happened.",
									"No wuckin' forries, Control. We're all good here.",
									"Nope! No problem over here, Control. Everything is A-OK.",
									"Hey Control, my band, The Sandwich Babies, are playing on Friday. You REALLY need to come check us out, it's gonna be a ripper of a show.",
									"Hey Control, come over here after your shift ends. I'll show you my sweet Melbourne Shuffle moves!",
									"I'm thinking of writing a novel about a woman hunting dragons to eat 'em. The title could be: 'Moira the Dragon Eater.' What do you think?",
									"You know, I could really go for a croc burger right now. A good and juicy croc burger. That'd be something, yeah?"
								}
							}
						}
					}
				},
				fri_dsp_stop_all = {
					category = "stops",
					remove_by_source = true
				},



--stealth guard/gensec/patrol related lines
				dispatch_generic_message = {
					text = "(dispatch radio chatter)",
					priority = 90,
					category = "enemy_chatter"
				},
				dsp_radio_russian = {
					category = "sfx",
					disabled = true
				},
				dsp_radio_reminder_1 = {
					variants = {
						security = {
							text = "[pager rings!]",
							priority = 20,
							category = "enemy_dialogue",
							line_variations = {
								standard_mode = {
									"[pager operator] This is dispatch. PICK UP THE PAGER.",
								}
							}
						}
					}
				},
				dsp_radio_fooled_1 = {
					variants = {
						security = {
							text = "[pager operator fooled]",
							priority = 20,
							category = "enemy_dialogue"
						--standard_mode = {
						--	"Okay, I guess I'll see you for bowling later.",
						--}
						}
					}
				},
				dsp_radio_fooled_4 = { --"no pagers remaining" warning
					variants = {
						security = {
							text = "(pager operator warning: NO PAGERS REMAINING!)",
							priority = 20,
							category = "enemy_dialogue"
						}
					}
				},
				dsp_stop_all = {
					text = "[radio static ends]",
					disabled = true,
					priority = 20
				}, --disable this
				l2n_a15 = {
					text = "Two-Three, reporting in. We got a situation.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 4,
					variants = {
						line_variations = {
							recombinable = true,
							whisper_mode = {
								{
									"Two-Three here.",
									"Two-Three, reporting in.",
									"Two-Three over here. Reporting in.",
									"This is, uh, Two-Three reporting in."
								},
								{
									"We got a situation.",
									"Something's up.",
									"There's something going on here."
								}
							}
						}
					}
				},
				l2n_a05 = {
					text = "(talking casually with pager operator)", --can be idle chatter or reporting clear, so marked as enemy_dialogue for utility
					duration = 6,
					category = "enemy_dialogue",
					priority = 37,
					line_variations = {
						standard_mode = {
							"Two-Three here. Reporting in. All's clear over here. Out.",
							"Two-Three here. Uh, reporting in. Everything's in order over here. Over and out.",
							"Two-Three, reporting in. All is quiet on the western front. Out.",
							"Feels like another boring evening.",
							"Hey, what would happen if Pinocchio said, 'My nose will grow'?",
							"Seems like a good day for something to happen... right?",
							"This is, uh, Two-Three reporting in. All clear. Over and out."
						}
					}
				},
				l2n_a07b = {
					max_distance = 3000,
					text = "(spotted suspicious object)",
					category = "enemy_dialogue",
					priority = 37,
					line_variations = {
						standard_mode = {
							"What the heck...?",
							"Who was that?",
							"That's weird...",
							"What on earth...?",
							"What's going on here...?",
							"That's strange...",
							"What the hell...?"
						}
					}
				},
				l2n_b01 = {
					text = "Two-Three to Control. Entrance is clear.",
					duration = 10,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{	
								"Entrance is 10-26.",
								"Entrance is all clear.",
								"Entrance is clear.",
								"Entrance is A-OK.",
								"Nothing to report."
							},
							{
								"Everything's fine here.",
								"All is clear.",
								"This place is A-OK.",
								"This place is all clear.",
								"Nothing out of the ordinary.",
								"Nothing suspicious here.",
								"This place is 10-26.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in here.",
								"No signs of trespassing here.",
								"Everything's in order.",
								"This place is clear of trespassers.",
								"Clear as glass here.",
								"Not a mouse is stirring.",
								"Everything's ice cream and meringue.",
								"", --no extra line here
								"" --extra blank to increase chance of no extra line
							},
							{
								"Repeat, Entrance is all clear.",
								"I repeat, Entrance is clear.",
								"Repeat, Entrance is 10-26.",
								"Repeat, Entrance is A-OK.",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b02 = {
					text = "Two-Three to Control. Hall A is clear.",
					duration = 10,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Hall A is clear.",
								"Hall A is 10-26.",
								"Hall A is A-OK."
							},
							{
								"Everything's fine here.",
								"All is clear.",
								"This place is A-OK.",
								"This place is all clear.",
								"Nothing out of the ordinary.",
								"Nothing suspicious here.",
								"This place is 10-26.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in here.",
								"No signs of trespassing here.",
								"Everything's in order.",
								"This place is clear of trespassers.",
								"Clear as glass here.",
								"Not a mouse is stirring.",
								"Everything's ice cream and meringue.",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, Hall A is A-OK.",
								"I repeat, Hall A is all clear.",
								"I repeat, Hall A is A-OK.",
								"Repeat, Hall A is all clear.",
								"I repeat, Hall A is clear.",
								"Repeat, Hall A is 10-26.",										
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b03 = {
					text = "Two-Three to Control. Hall B is clear.",
					duration = 10,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Hall B is clear as glass.",
								"Hall B is clear.",
								"Hall B is 10-26.",
								"Hall B is A-OK."
							},
							{
								"This place has no signs of trespassing.",
								"This place shows no sign of break-in.",
								"This place shows no signs of trespassers.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is A-OK.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing to report.",
								"No sign of break-in.",
								"No sign of break-in here.",
								"Not a mouse is stirring.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"Everything's in order here.",
								"Everything's clear here.",
								"Everything's peaches and cream.",
								"Nothing unusual in this area.",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, Hall B is clear.",
								"Repeat, Hall B is A-OK.",
								"I repeat, Hall B is 10-26.",
								"Repeat, Hall B is 10-26.",
								"I repeat, Hall B is A-OK.",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b04 = {
					text = "Two-Three to Control. Hall C is clear.",
					duration = 10,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Hall C is clear as glass.",
								"Hall C is clear.",
								"Hall C is 10-26.",
								"Hall C is A-OK."
							},
							{
								"This place has no signs of trespassing.",
								"This place shows no sign of break-in.",
								"This place shows no signs of trespassers.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing to report.",
								"Nothing unusual in this area.",
								"Not a mouse is stirring.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in.",
								"No sign of break-in here.",
								"Everything's in order here.",
								"Everything's clear here.",
								"Everything's peaches and cream.",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, Hall C is clear.",
								"Repeat, Hall C is A-OK.",
								"I repeat, Hall C is 10-26.",
								"Repeat, Hall C is 10-26.",
								"I repeat, Hall C is A-OK.",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b05 = {
					text = "Two-Three to Control. Hall D is clear.",
					duration = 10,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Nothing to report in Hall D.",
								"Hall D is A-OK.",
								"Hall D is clear.",
								"Hall D is 10-26."
							},
							{	
								"No sign of break-in here.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of trespassing.",
								"Nothing out of the ordinary here.",
								"Nothing out of the ordinary.",
								"Nothing suspicious here.",
								"Everything's clear here.",
								"Everything's fine here.",
								"Everything's peaches and cream.",
								"Everything's in order.",
								"Everything is A-OK here.",
								"All's clear.",
								"Clear as glass here.",
								"This place has no signs of trespassing.",
								"This place is A-OK.",
								"This place is all clear.",
								"This place is as tidy as ever.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"I repeat, nothing to report in Hall D.",
								"Repeat, nothing to report in Hall D.",
								"Repeat, Hall D is A-OK.",
								"I repeat, Hall D is 10-26.",
								"",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b06 = {
					text = "Two-Three to Control. Roof is clear.",
					duration = 10,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Roof is A-OK.",
								"No danger on the Roof.",
								"Roof is clear.",
								"Roof is 10-26.",
								"The Roof is A-OK."
							},
							{	
								"No sign of break-in.",
								"No sign of trespassers here.",
								"No signs of trespassing here.",
								"No sign of suspicious activity here.",
								"Nothing out of the ordinary here.",
								"Nothing to report.",
								"Not a mouse is stirring.",
								"This place is clear of trespassers.",
								"Everything's peaches and cream.",
								"Everything's in order.",
								"Everything's fine here.",
								"Everything's clear here.",
								"This place is tidy as ever.",
								"This place shows no sign of suspicious activity.",
								"This place is all clear.",
								"This place is clear.",
								"This place is 10-26.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, Roof is A-OK.",
								"Repeat, no danger on the Roof.",
								"I repeat, Roof is A-OK.",
								"I repeat, no danger on the Roof.",
								"I repeat, Roof is clear.",
								"I repeat, Roof is 10-26.",
								"",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b07 = {
					text = "Two-Three to Control. Basement is clear.",
					duration = 10,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"The Basement is 10-26.",
								"Basement is clear.",
								"No signs of trespassing in the Basement.",
								"Basement is 10-26.",
								"Basement is A-OK."
							},
							{	
								"Nothing out of the ordinary.",
								"Nothing to report.",
								"Nothing to report here.",
								"No sign of break-in.",
								"This place is A-OK.",
								"This place is tidy as ever.",
								"This place shows no sign of break-in.",
								"All is clear.",
								"Clear as glass here.",
								"Not a mouse is stirring.",
								"Everything's clear here.",
								"Everything's peaches and cream.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"I repeat, Basement is A-OK.",
								"Repeat, Basement is A-OK.",
								"Repeat, Basement is clear.",
								"Repeat, no signs of trespassing in the Basement.",
								"Repeat, this place is A-OK.",
								"",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b08 = {
					text = "Two-Three to Control. First Floor is clear.",
					duration = 10,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Ground Floor is 10-26.",
								"Ground Floor is clear.",
								"First Floor is A-OK.",
								"Ground Floor is A-OK.",
								"First Floor is all clear.",
								"Ground Floor is all clear."
							},
							{
								"Everything's fine here.",
								"Everything's in order.",
								"Everything's ice cream and meringue.",
								"All is clear.",
								"This place is A-OK.",
								"This place is all clear.",
								"This place is clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"Nothing out of the ordinary.",
								"Nothing suspicious here.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in here.",
								"No signs of trespassing here.",
								"Not a mouse is stirring.",
								"Clear as glass here.",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, First Floor is A-OK.",
								"I repeat, First Floor is 10-26.",
								"I repeat, Ground Floor is all clear.",
								"Repeat, First Floor is clear.",
								"Repeat, Ground Floor is 10-26.",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b09 = {
					text = "Two-Three to Control. Second Floor is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Second Floor is A-OK.",
								"Second Floor is all clear.",
								"Second Floor is clear.",
								"Second Floor is 10-26.",
								"Floor Two is 10-26.",
								"Floor Two is all clear.",
								"Floor Two is A-OK.",
								"Floor Two is clear.",
								"Floor Two is clear of trespassers."
							},
							{
								"Everything's fine here.",
								"Everything's in order.",
								"Everything's ice cream and meringue.",
								"All is clear.",
								"This place is A-OK.",
								"This place is all clear.",
								"This place is clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"Nothing out of the ordinary.",
								"Nothing suspicious here.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in here.",
								"No signs of trespassing here.",
								"No sign of suspicious activity here.",
								"Nothing to report.",
								"Not a mouse is stirring.",
								"Clear as glass here.",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"I repeat, Second Floor is 10-26.",
								"I repeat, Second Floor is clear.",
								"Repeat, Floor Two is all clear.",
								"I repeat, Floor Two is clear.",
								"I repeat, Floor Two is A-OK.",
								"I repeat, Second Floor is A-OK.",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b10 = {
					text = "Two-Three to Control. Third Floor is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Floor Three is all clear.",
								"Floor Three is clear.",
								"Third Floor is 10-26.",
								"Third Floor is A-OK.",
								"Third Floor is all clear."
							},
							{
								"This place has no signs of trespassing.",
								"This place shows no sign of break-in.",
								"This place shows no signs of trespassers.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"Nothing suspicious here.",
								"Nothing unusual in this area.",
								"Nothing to report.",
								"Nothing to report here.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in.",
								"No sign of break-in here.",
								"Not a mouse is stirring.",
								"Everything's in order here.",
								"Everything's clear here.",
								"Everything's ice cream and meringue.",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"I repeat, Third Floor is all clear.",
								"I repeat, Third Floor is A-OK.",
								"I repeat, Floor Three is clear.",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b11 = {
					text = "Two-Three to Control. The Pool Area is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"The Pool Area is A-OK.",
								"The Pool Area is clear.",
								"The Pool Area is 10-26.",
								"The Pool is cool.",
							},
							{
								"Everything's fine here.",
								"All is clear.",
								"This place is A-OK.",
								"This place is all clear.",
								"This place is as tidy as ever.",
								"This place shows no sign of suspicious activity.",
								"This place is 10-26.",
								"This place is clear of trespassers.",
								"Nothing out of the ordinary.",
								"Nothing suspicious here.",
								"Nothing unusual in this area.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in.",
								"No signs of trespassing here.",
								"No sign of break-in here.",
								"Not a mouse is stirring.",
								"Everything's in order.",
								"Clear as glass here.",
								"Everything's ice cream and meringue.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, the Pool Area is OK.",
								"Repeat, the Pool Area is A-OK.",
								"I repeat, the Pool is cool.",
								"Repeat, the Pool Area is clear.",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b12 = {
					text = "Two-Three to Control. The Balcony is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"The Balcony is A-OK.",
								"The Balcony is clear.",
								"The Balcony is 10-26.",
								"No sign of break-in on the Balcony.",
							},
							{
								"Nothing to report here.",
								"Nothing suspicious here.",
								"Nothing out of the ordinary.",
								"Not a mouse is stirring.",
								"No sign of break-in.",
								"No signs of trespassing here.",
								"Everything's clear.",
								"Everything's in order here.",
								"Everything's ice cream and meringue.",
								"This place is 10-26.",
								"This place is A-OK.",
								"This place has no signs of trespassing.",
								"This place shows no sign of suspicious activity.",
								"This place shows no sign of trespassers.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"I repeat, no break-in on the Balcony.",
								"I repeat, the Balcony is 10-26.",
								"I repeat, the Balcony is A-OK.",
								"I repeat, no sign of break-in on the Balcony.",
								"Repeat, no sign of break-in on the Balcony.",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b13 = {
					text = "Two-Three to Control. The Living Room is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"The Living Room is in order.",
								"The Living Room is clear.",
								"The Living Room is A-OK.",
								"The Living Room is 10-26."
							},
							{
								"This place has no signs of trespassing.",
								"This place shows no sign of break-in.",
								"This place shows no signs of trespassers.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"Everything's in order here.",
								"Everything's clear here.",
								"Everything's peaches and cream.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"No sign of trespassing.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in.",
								"No sign of break-in here.",
								"Not a mouse is stirring.",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, the Living Room is 10-26.",
								"I repeat, the Living Room is A-OK.",
								"I repeat, the Living Room is clear.",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b14 = {
					text = "Two-Three to Control. The Corridor is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"The Corridor is in order.",
								"The Corridor is clear.",
								"The Corridor is A-OK.",
								"The Corridor is 10-26."
							},
							{
								"Everything's in order.",
								"Everything's in order here.",
								"Everything's clear here.",
								"Everything's peaches and cream.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"This place has no signs of trespassing.",
								"This place shows no sign of break-in.",
								"This place shows no signs of trespassers.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"Not a mouse is stirring.",
								"No sign of trespassing.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in.",
								"No sign of break-in here.",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, the Corridor is 10-26.",
								"I repeat, the Corridor is A-OK.",
								"I repeat, the Corridor is in order.",
								"I repeat, the Corridor is clear.",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b15 = {
					text = "Two-Three to Control. The Lobby is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"I'm in the Lobby. This place is A-OK.",
								"I'm inside the Lobby.",
								"I'm in the Lobby."
							},
							{
								"Nothing suspicious here.",
								"No sign of break-in here.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"Nothing out of the ordinary here.",
								"This place has no signs of trespassing.",
								"Everything's clear here.",
								"Everything's in order.",
								"Everything's in order here.",
								"Everything's peaches and cream.",
								"This place shows no sign of break-in.",
								"This place shows no signs of trespassers.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"Not a mouse is stirring.",
								"No sign of trespassing.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of trespassers here.",
								"No sign of break-in.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, I'm inside the Lobby.",
								"I repeat, the Lobby is A-OK.",
								"I repeat, the Lobby is in order.",
								"I repeat, the Lobby is clear.",
								"I repeat, I'm inside the Lobby.",
								"",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b16 = {
					text = "Two-Three to Control. No sign of tampering with the Security Door.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"The Security Door is shut and locked.",
								"The Security Door here is closed and sealed."
							},
							{
								"No sign of trespassers here.",
								"Nothing suspicious here.",
								"No sign of break-in here.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"Nothing out of the ordinary here.",
								"This place has no signs of trespassing.",
								"Everything's fine here.",
								"Everything's clear here.",
								"Everything's in order.",
								"Everything's in order here.",
								"Everything's peaches and cream.",
								"This place shows no sign of break-in.",
								"This place has no signs of trespassing.",
								"This place shows no signs of trespassers.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"Not a mouse is stirring.",
								"No sign of trespassing.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of break-in.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, the Security Door is shut and locked.",
								"Repeat, the Security Door here is closed and sealed.",
								"",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b17 = {
					text = "Two-Three to Control. GenSec Room is clear.",
					category = "enemy_dialogue",
					duration = 5,
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"GenSec Room looks clear.",
								"The Security Room is all clear."
							},
							{
								"No sign of trespassers here.",
								"Nothing suspicious here.",
								"No sign of break-in here.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"Nothing out of the ordinary here.",
								"Everything's fine here.",
								"Everything's clear here.",
								"Everything's in order.",
								"Everything's in order here.",
								"Everything's peaches and cream.",
								"This place shows no sign of break-in.",
								"This place has no signs of trespassing.",
								"This place shows no sign of suspicious activity.",
								"This place shows no signs of trespassers.",
								"This place has no signs of trespassing.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"All is clear.",
								"Not a mouse is stirring.",
								"No sign of trespassing.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of break-in.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, the Security Room is all clear.",
								"I repeat, the Security Room is all clear.",
								"",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b18 = {
					text = "Two-Three to Control. No signs of tampering with the Camera.",
					category = "enemy_dialogue",
					duration = 10,
					priority = 37,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Camera operational.",
								"Camera is in order.",
								"This place looks fine.",
								"Camera is working.",
								"Camera looks fine.",
							},
							{
								"No sign of tampering.",
								"",
								""
							},
							{
								"No sign of trespassers here.",
								"Nothing suspicious here.",
								"No sign of break-in here.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"Nothing out of the ordinary here.",
								"Everything's fine here.",
								"Everything's clear here.",
								"Everything's in order.",
								"Everything's in order here.",
								"Everything's peaches and cream.",
								"This place shows no sign of break-in.",
								"This place has no signs of trespassing.",
								"This place shows no sign of suspicious activity.",
								"This place shows no signs of trespassers.",
								"This place has no signs of trespassing.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"All is clear.",
								"Clear as glass here.",
								"Not a mouse is stirring.",
								"No sign of trespassing.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of break-in.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"I repeat, Camera is in order.",
								"Repeat, Camera looks fine.",
								"Repeat, Camera operational.",
								"This place is 10-26.",
								"",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b19 = {
					text = "Two-Three to Control. The Staircase looks clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Staircase is clear."
							},
							{
								"No sign of trespassers here.",
								"Nothing suspicious here.",
								"No sign of break-in here.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"Nothing out of the ordinary here.",
								"Everything's fine here.",
								"Everything's clear here.",
								"Everything's in order.",
								"Everything's in order here.",
								"Everything's peaches and cream.",
								"This place shows no sign of break-in.",
								"This place has no signs of trespassing.",
								"This place shows no sign of suspicious activity.",
								"This place shows no signs of trespassers.",
								"This place has no signs of trespassing.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"All is clear.",
								"Not a mouse is stirring.",
								"No sign of trespassing.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of break-in.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, Staircase is clear.",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b20 = {
					text = "Two-Three to Control. The Penthouse is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"The Penthouse is clear.",
								"Penthouse is clear."
							},
							{
								"No sign of trespassers here.",
								"Nothing suspicious here.",
								"No sign of break-in here.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"Nothing out of the ordinary here.",
								"Everything's fine here.",
								"Everything's clear here.",
								"Everything's in order.",
								"Everything's in order here.",
								"Everything's peaches and cream.",
								"This place shows no sign of break-in.",
								"This place has no signs of trespassing.",
								"This place shows no sign of suspicious activity.",
								"This place shows no signs of trespassers.",
								"This place has no signs of trespassing.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"All is clear.",
								"Not a mouse is stirring.",
								"No sign of trespassing.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of break-in.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"Repeat, the Penthouse is clear.",
								"Repeat, Penthouse is clear.",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b21 = {
					text = "Two-Three to Control. The Garage is clear.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 10,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"The Garage is clear.",
								"Garage is clear."
							},
							{
								"No sign of trespassers here.",
								"Nothing suspicious here.",
								"No sign of break-in here.",
								"Nothing to report.",
								"Nothing to report here.",
								"Nothing unusual in this area.",
								"Nothing out of the ordinary here.",
								"Everything's fine here.",
								"Everything's clear here.",
								"Everything's in order.",
								"Everything's in order here.",
								"Everything's peaches and cream.",
								"This place shows no sign of break-in.",
								"This place has no signs of trespassing.",
								"This place shows no sign of suspicious activity.",
								"This place shows no signs of trespassers.",
								"This place has no signs of trespassing.",
								"This place is all clear.",
								"This place is clear of trespassers.",
								"This place is 10-26.",
								"This place is A-OK.",
								"All is clear.",
								"Clear as glass here.",
								"Not a mouse is stirring.",
								"No sign of trespassing.",
								"No sign of suspicious activity here.",
								"No sign of trespassers.",
								"No sign of break-in.",
								"",
								"",
								"",
								"",
								"",
								"",
								"",
								"" 
							},
							{
								"I repeat, the Garage is clear.",
								"Repeat, the Garage is clear.",
								"All is clear.",
								"",
								"",
								"",
								"",
								""
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b22 = {
					text = "Two-Three to Control. Proceeding with search.",
					category = "enemy_dialogue",
					duration = 3,
					max_distance = 3000,
					line_variations = {
						standard_mode = {
							"I'll move on.",
							"Heading on.",
							"Moving on.",
							"Movin' on.",
							"Onto the next."
						}
					}
				},
				l2n_b23 = {
					text = "This is Two-Three. Can you buzz me in? Over.",
					category = "enemy_dialogue",
					priority = 37,
					duration = 7,
					max_distance = 3000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"Can you buzz me in?",
								"Open sesame!",
								"Buzz me in to the lobby, please.",
								"Can one of you guys buzz me in? Thanks."
							},
							{
								"Over."
							}
						}
					}
				},
				l2n_b24 = {
					text = "This is Two-Three. Sweep finished, all is clear. Over and out.",
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 3000,
					duration = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Two-Three to Control.",
								"Two-Three to Dispatch.",
								"Two-Three reporting.",
								"Two-Three here, reporting in.",
								"This is Two-Three, reporting in.",
								"Report.",
								"Reporting in.",
								"This is Two-Three."
							},
							{
								"My gut feeling says no-one's breaking into this place. [chuckles] My gut feeling's never wrong.",
								"This place is clear all over.",
								"This place is clear, inside and outside.",
								"This place is clear, from top to bottom.",
								"This place is clear, through and through.",
								"To be honest, I don't even know why we bother to do patrols 'round here.",
								"This entire place is tip-top.",
								"This entire place is in mint condition."
							},
							{
								"[exhales] I'm heading back.",
								"[relieved sigh] I'm outta here!",
								"I'm off!",
--										"I'm heading back to my bed.",
								"I'm heading back to station.",
								"Heading back to station.",
								"I'm headin' home.",
								"This place is dead anyways.",
								"I'm heading back to GenSec.",
								"Heading back to the GenSec station."
							},
							{
								"Ooover'n'out.",
								"Over and out.",
								"Over... and... out!",
								"Over and out!"
							}
						}
					}
				},
				l2n_i02 = {
					text = "attempting arrest",
					category = "enemy_dialogue",
					duration = 10,
					priority = 37,
					max_distance = 2000,
					line_variations = {
						standard_mode = {
							"Hold still!",
							"No sudden movements!",
							"NO SUDDEN MOVEMENT.",
							"Don't move a muscle!",
							"DON'T MOVE A MUSCLE!",
							"Don't even breathe!",
							"No sudden moves!",
							"NO SUDDEN MOVES!",
							"STAY WHERE YOU ARE!",
							"Don't even look at me!"
						}
					}
				},

				--cops/civs				
	--civs
		--
				
				["911_call"] = {
					category = "civilian_dialogue",
					max_distance = 2000,
					text = "Hello? 911? I need help, there's armed robbers here!",
					priority = 60
				},
				cm1_911_call = {
					text = "cm1_911_call",
					max_distance = 2000,
					category = "UNKNOWN",
					priority = 60
				},
				
			
				
				
				
				a02x_any = {
					text = "(panic)", --not kalm
					priority = 37,
					max_distance = 3000,
					category = "civilian_dialogue"
				},
				cm1_a03x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cf1_a03x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cf2_a03x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cf3_a02x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cf3_a03x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cf4_a02x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cf4_a03x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cf5_a02x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cf5_a03x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cm1_a01x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cm1_a01x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cm1_a02x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cm2_a01x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cm2_a01x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cm2_a02x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cm2_a03x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				cm2_x02a_any_3p = {
					text = "[death]",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
				a03x_any = {
					text = "(screaming in fear)",
					category = "civilian_dialogue",
					max_distance = 3000,
					priority = 37
				},
			
	
	--cops
				l1n_a06 = {
					text = "[idle]",
					category = "chatter",
					disabled = true
				},
				l1n_g90 = {
					category = "UNKNOWN",
					priority = 40,
					text = "???"
				},
				l1n_h01 = {
					category = "enemy_chatter",
					duration = 3,
					text = "(Freeing hostage)",
					max_distance = 1000,
					priority = 90
				},
				l1n_hr01 = {
					text = "[hurt]",
					category = "enemy_death",
					max_distance = 1500,
					priority = 90
				},
				l1n_hlp = {
					category = "enemy_chatter",
					text = "HELP!",
					max_distance = 700,
					priority = 90
				},
				l1n_mov = {
					text = "Move!",
					category = "enemy_chatter",
					max_distance = 1000,
					priority = 90
				},
				l1n_rdy = {
					category = "enemy_chatter",
					text = "Ready!",
					max_distance = 1000,
					priority = 99
				},
				l1n_t01 = {
					category = "enemy_chatter",
					text = "Looking for another way in.",
					max_distance = 1000,
					priority = 90
				},
				l1n_x01a_any_3p = {
					text = "[pain]",
					max_distance = 1500,
					category = "enemy_death"
				},
				l1n_x02a_any_3p = {
					text = "[death]",
					max_distance = 1500,
					category = "enemy_death"
				},

				l2d_rdy = {
					category = "enemy_chatter",
					text = "Ready!",
					max_distance = 1000,
					priority = 99
				},
				l2n_g90 = {
					category = "UNKNOWN",
					priority = 40,
					text = "???"
				},
				l2n_hlp = {
					category = "enemy_chatter",
					text = "HELP!",
					max_distance = 700,
					priority = 90
				},
				l2n_x01a_any_3p = {
					text = "[pain]",
					max_distance = 1500,
					category = "enemy_death"
				},
				l2n_x02a_any_3p = {
					text = "[death]",
					max_distance = 1500,
					category = "enemy_death"
				},
				l2n_lk3b = {
					category = "chatter",
					text = "(very panicked chatter)",
					priority = 90,
					max_distance = 1500,
					line_variations = {
						standard_mode = { --non-exhaustive
							"CHRIST!",
							"INSANE!",
							"HOLY SHIT!",
							"JEEZ!"
						}
					}
				},
				l2n_mov = {
					text = "(tactical chatter)",
					category = "enemy_chatter",
					priority = 90,
					line_variations = {
						standard_mode = {
							"I see one of 'em!",
							"I got contact!",
							"Contact!",
							"HARD contact!",
							"Takedown!",
							"DROP 'EM!",
							"FIIIRE!",
							"Fire at will!",
							"Take 'em down!",
							"LIGHT 'EM UP!",
							"HELP!",
							"Help!",
							"Let 'er rip!",
							"Go, GO!",
							"GO!",
							"Go, go, GO!",
							"Move!",
							"Move out!",
							"Shred 'em!",
							"Move, MOVE!",
							"Move, now!",
							"Move it!",
							"Forward!",
							"Cover me!",
							"Gimme cover!",
							"Formation!",
							"Take positions!",
							"Get ready!",
							"Ready up!",
							"Ready now!",
							"Ready!",
							"...Insane!",
							"Oh... SHIT!",
							"CHRIST ALMIGHTY!",
							"I'll be damned!",
							"Fuckin' hell!",
							"Holy SHIT!",
							"FUCK!"
						}
					}
				},
				l2n_rdy = {
					category = "enemy_chatter",
					text = "Ready!",
					max_distance = 1000,
					priority = 99
				},	
				l2n_s01x = {
					category = "enemy_dialogue",
					text = "Okay, okay! Just don't shoot!",
					priority = 40,
					max_distance = 1000,
					line_variations = {
						assault_mode = {
							"Alright! Just don't shoot!",
							"Okay, okay! Just don't shoot!"
						},
						standard_mode = {
							"Okay, okay! Don't shoot!",
							"Okay, just don't shoot!",
							"Okay! Just- just don't shoot!"
						}
					}
				},
				l2n_p01 = {
					text = "They have hostages! We need to delay the assault!",
					category = "enemy_chatter",
					max_distance = 1000
				},

				l3n_a06 = {
					text = "[idle]",
					category = "chatter",
					disabled = true
				},
				l3n_a07a = {
					text = "l3n_a07a",
					category = "UNKNOWN", --alerted?
					priority = 37,
					max_distance = 1500
				},
				l3n_civ = {
--					duration = 5,
					text = "Rescue the hostages",
					category = "enemy_chatter",
					priority = 90,
					max_distance = 700,
					line_variations = {
						standard_mode = {
							"Get the civilians!",
							"Get the canaries!",
							"Get the hostages!",
							"Get the civvies!"
						},
						DISABLED_assault_mode = {}
					}
				},
				l3n_c01 = {
					category = "enemy_chatter",
					text = "Contact!",
					max_distance = 700,
					priority = 90
				},
				l3n_d01 = {
					text = "Rescue the hostages",
					category = "enemy_chatter",
					priority = 90,
					max_distance = 700,
					line_variations = {
						standard_mode = {
							"Deploy smoke!",
							"Smoke 'em!",
							"Smoke 'em out!",
							"Smoke!"
						},
						DISABLED_assault_mode = {}
					}
				},
				l3n_h01 = {
					category = "enemy_chatter",
					duration = 3,
					text = "(Freeing hostage)",
					max_distance = 1000,
					priority = 90
				},
				l3n_hlp = {
					category = "enemy_chatter",
					text = "HELP!",
					max_distance = 700,
					priority = 90
				},
				l3n_hr01 = {
					text = "[hurt]",
					category = "enemy_death",
					max_distance = 1500,
					priority = 90
				},
				l3n_i01 = {
					duration = 1,
					text = "Freeze!",
					category = "UNKNOWN",
					max_distance = 1000,
					priority = 90
				},
				l3n_g90 = {
					category = "UNKNOWN",
					priority = 40,
					text = "???"
				},
				l3n_mov = {
					text = "Move!",
					category = "enemy_chatter",
					max_distance = 1000,
					priority = 90
				},
				l3n_rdy = {
					category = "enemy_chatter",
					text = "Ready!",
					max_distance = 1000,
					priority = 99
				},
				l3n_x01a_any_3p = {
					text = "[pain]",
					max_distance = 1500,
					category = "enemy_death"
				},
				l3n_x02a_any_3p = {
					text = "[death]",
					max_distance = 1500,
					category = "enemy_death"
				},

				l4n_a01 = {
					text = "(spotted heister)",
					category = "enemy_dialogue",
					priority = 90,
					max_distance = 1500,
					line_variations = {
						standard_mode = {
							"He's armed!",
							"FREEZE!",
							"STOP IT!",
							"He's got a gun!",
							"HOLD IT!",
							"Gun! GUN!",
							"He's got a weapon!",
							"He has a gun!"
						}
					}
				},
				l4n_g90 = {
					category = "UNKNOWN",
					priority = 40,
					text = "???"
				},
				l4n_h01 = {
					category = "enemy_chatter",
					duration = 3,
					text = "(Freeing hostage)",
					max_distance = 1000,
					priority = 90
				},
				l4n_hlp = {
					category = "enemy_chatter",
					text = "HELP!",
					max_distance = 700,
					priority = 90
				},
				l4n_i01 = {
					text = "(spotted heister!)",
					category = "enemy_dialogue",
					priority = 60,
					max_distance = 1500,
					line_variations = {
						standard_mode = {
							"Stop it!",
							"Stop!",
							"Hold it!",
							"Freeze!"
						}
					}
				},
				l4n_i03 = {
					text = "(cuffed heister)",
					category = "enemy_dialogue",
					priority = 60,
					max_distance = 1500,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"It's over...",
								"You're done.",
								"It's over, now...",
								"This ends now...",
								"You're done!"
							},
							{
								"You piece of shit!",
								"Scumbag!",
								"You son of a bitch!"
							},
							{
								"[mockingly] I hope you like prison food.",
								"You're going away for a loooong time.",
								"Get ready to do some hard time.",
								"I hope you drop the soap... a lot."
							}
						}
					}
				},
				l4n_lk3a = {
					text = "(panicked chatter)",
					category = "enemy_chatter",
					priority = 90,
					max_distance = 1500,
					line_variations = {
						standard_mode = {
							"Christ!",
							"Fuckin' hell!",
							"Christ almighty!"
						}
					}
				},
				l4n_mov = {
					text = "Move!",
					category = "enemy_chatter",
					max_distance = 1000,
					priority = 90
				},
				l4n_pos = {
					category = "enemy_chatter",
					text = "I'm in position.",
					max_distance = 1000,
					priority = 99
				},
				l4n_rdy = {
					category = "enemy_chatter",
					text = "Ready!",
					max_distance = 1000,
					priority = 99
				},
				l4n_s01x = {
					category = "enemy_dialogue",
					text = "Okay, okay! Just don't shoot!",
					priority = 40,
					max_distance = 1000,
					line_variations = {
						assault_mode = {
							"Alright! Just don't shoot!",
							"Okay, okay! Just don't shoot!"
						},
						standard_mode = {
							"Okay, okay! Don't shoot!",
							"Okay, just don't shoot!",
							"Okay! Just- just don't shoot!"
						}
					}
				},
				l4n_x01a_any_3p = {
					override_name = "(male)",
					text = "(screams, death gurgles)",
					priority = 37,
					category = "mission_dialogue"
				},
				l4n_x02a_any_3p = {
					text = "[death]",
					max_distance = 1500,
					category = "enemy_death"
				},

				fl1n_a23 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, there's signs of intruders here...",
					max_distance = 1500,
					priority = 37
				},
				fl1n_g90 = {
					category = "UNKNOWN",
					priority = 90,
					max_distance = 1500,
					text = "It's the clowns! The clowns from TV!"
				},
				fl1n_h01 = {
					category = "enemy_chatter",
					duration = 3,
					text = "(Freeing hostage)",
					max_distance = 1000,
					priority = 90
				},
				fl1n_x02a_any_3p = {
					text = "[death]",
					max_distance = 1500,
					category = "enemy_death"
				},

				lt2_c01 = {
					max_distance = 1500,
					priority = 90,
					category = "enemy_chatter",
					line_variations = {
						standard_mode = {
							"Mira, mira, there he is!",
							"I see one!",
							"Okay, I see one!",
							"I got one!",
							"I see one of 'em!",
							"Yo, there's one!",
							"Here!"
						}
					}
				},
				lt2_g90 = {
					category = "enemy_chatter",
					priority = 90,
					max_distance = 1500,
					line_variations = {
						standard_mode = {
							"I'm gonna fuck you up, man!",
							"These fuckers are going down!",
							"You must have shit for brains, coming here!",
							"I oughta kill you twice, gringo!",
							"This is the wrong town for you, amigo!",
							"Blood coming out your ears, fucker!",
							"I'm gonna make you bleed!",
							"[angry Spanish]"
						}
					}
				},

				taser_charge = {
					override_name = "SFX",
					category = "sfx",
					text = "(Taser charge)",
					max_distance = 4000,
					priority = 19
				},
				tsr_elite = {
					text = "(Elite Taser Entrance)",
					max_distance = 2000,
					category = "enemy_chatter",
					line_variations = {
						standard_mode = {
							"Elite Taser! Here to win this once and for all!",
							"Elite Taser! Stay clear!",
							"Elite Taser! Stand clear!",
							"Elite Taser! Stand back!",
							"Make way for the Elite Taser!",
							"Elite Taser! Going through!",
							"Elite Taser! Get out of the way!",
							"Elite Taser! Make way!"
						}
					},
					priority = 55
				},
				tsr_entrance = {
					text = "(Taser entrance)",
					category = "enemy_chatter",
					max_distance = 4000,
					priority = 55,
					line_variations = {
						standard_mode = {
							"Who ordered shock treatment?",
							"Who ordered a lightning bolt?!",
							"Who's AMPED?",
							"Make way!",
							"Taser! MOVE!",
							"Taser! Clear!",
							"Stay back!",
							"Fifty thousand volts here!",
							"Taser, going through?",
							"Coming through!",
							"Get out of the way!",
							"Stand clear!",
							"Flip the switch!",
							"Charged and ready! Bring 'em on!",
							"Charged and ready... let 'em come!",
							"Get out of the way!",
							"Make way for the Taser!",
							"I'M AMPED!",
							"Shock treatment prescribed!",
							"Charged and ready... where are they?!"
						}
					}
				},
				tsr_g90 = {
					text = "(Taser taunt)",
					category = "enemy_chatter",
					line_variations = {
						standard_mode = {
							"Acquiring targets!",
							"Almost at full power!",
							"Amped up!",
							"Amperage building!",
							"Approaching perpetrator!",
							"Bringin' the voltage!",
							"CHAAARGE!",
							"Charged and ready! Where are they?!",
							"Charged and ready... let 'em come!",
							"Charging up!",
							"Charging... charging!",
							"Coming through!",
							"Contact imminent!",
							"Engaging subject!",
							"Eyes on perp!",
							"Eyes on perp!",
							"Fifty thousand volts here!",
							"Gonna plug in!",
							"Got eyes on the perpetrator!",
							"High voltage!",
							"Hope you're insulated!",
--											"Hostile spotted!", --not sure
							"I got 'em!",
							"I got fifty thousand volts here with your name on 'em!",
							"I'll deal with this one!",
							"I'll take care of this one myself!",
							"I'm amped!",
							"I'm feelin' kinda ELECTRIC!",
							"I'm the fucking spark-man!",
							"Imminent contact!",
							"Just call me elec-man!",
							"Let's amp this shit up!",
							"Lightning bolt, lightning bolt, lightning bolt!",
							"Make way!",
							"Perp ahead!",
							"Perp in sight!",
							"Perp spotted!",
							"Perp targeted!",
							"Raising voltage!",
							"Set to 'stun!'",
							"Shock prepared!",
							"Shocking!",
							"Stay clear!",
							"Subject still mobile!",
							"Take the shot!",
--											"Taser got sent all those to kill!", --not sure what he says
							"Taser gun charged and ready!",
							"Taser! Get out of the way!",
							"Taser! Stand back!",
							"Taser, clear!",
							"Taser, going through!",
							"Taser, ready!",
							"Taser- stay clear!",
							"Taser... moved!",
							"This one belongs to me!",
							"Voltage to burn!",
							"Wattage at full!"
						}
					}
				},
				tsr_hr01 = {
					text = "[hurt]",
					category = "enemy_death",
					max_distance = 1500,
					priority = 90
				},
				tsr_post_tasing_taunt = {
					text = "(tasing taunt)",
					category = "enemy_chatter",
					max_distance = 4000,
					priority = 60
				},
				tsr_x01a_any_3p = {
					text = "[pain]",
					max_distance = 1500,
					category = "enemy_death"
				},
				tsr_x02a_any_3p = {
					text = "[pain]",
					max_distance = 1500,
					category = "enemy_death"
				},

				mdc_g90 = {
					text = "(Medic taunt)",
					category = "enemy_chatter",
					line_variations = {
						standard_mode = {
							"Don't let them escape!",
							"Go! Go!",
							"Get 'em!",
							"Cops ALWAYS win!",
							"They won't know what hit 'em!",
							"Fight the law... the law wins!",
							"Keep your heads down!",
							"C'mon, we're winning!",
							"We got 'em now!",
							"Advance! We have 'em cornered!",
							"End of the line for these crooks!",
							"Take 'em down!",
							"Let's waste 'em!",
							"Don't let them get away!",
							"Don't let them escape!",
							"These guys are fucked!",
							"Stay patient, and we'll take them!",
							"What goes around, comes around!",
							"No fear! Let's take 'em out!",
							"C'mon, c'mon!",
							"I got your back, guys!",
							"These assholes are goin' down!",
							"Eliminate hostiles!",
							"Try to surround them!",
							"See you in the prison medical ward!",
							"Backup, BACKUP!",
							"Are you sure you want to do this?",
							"They have no chance!",
							"Get 'em! GET 'EM!",
							"Make 'em regret getting up this morning!",
							"Watch it!"
						}
					}
				},
				mdc_heal = {
					text = "(healed cop)",
					category = "enemy_dialogue",
					max_distance = 4000,
					priority = 50
				},
				mdc_x02a_any_3p = {
					text = "[death]",
					max_distance = 1500,
					category = "enemy_death"
				},
				mdc_x01a_any_3p = {
					category = "enemy_chatter",
					text = "[pain]",
					max_distance = 1000,
					priority = 90
				},
		
				shd_x02a_any_3p_01 = {
					text = "[Shield death]",
					max_distance = 1500,
					category = "enemy_death",
					priority = 50
				},
				shield_identification = {
					text = "(Shield clanking)",
					category = "enemy_chatter",
					max_distance = 4000,
					priority = 55
				},

				bdz_entrance = {
					text = "(Bulldozer spawned)",
					priority = 60,
					category = "enemy_chatter",
					max_distance = 4000,
					line_variations = {
						standard_mode = {
							"WHO WANTS A PIECE OF ME?",
							"GONNA BREAK SOME SHIT!",
							"GONNA DROP ON THESE CRIMINALS LIKE A FUCKING PIANO!",
							"GET. OUT. OF. THE. WAY!",
							"DOZER'S HERE, AND READY FOR ACTION!",
							"CLOBBERIN' TIME!",
							"MAKE WAY FOR THE BULLDOZER!",
							"STAND BACK!",
							"OKAY, I'M HERE... WHO WANTS TO DIE?!"
						},
						assault_mode = {
							"BULLDOZER! GET OUT OF THE WAY!",
							"BULLDOZER! MOVE ASIDE!",
							"BULLDOZER! MAKE WAY!",
							"BULLDOZER GOIN' IN!",
							"BULLDOZER TIME!",
							"SHOW ME WHERE THEY ARE!",
							"BULLDOZER, COMING THROUGH!",
							"BULLDOZER IN THE HOUSE!",
							"DOZER IN THE HOUSE!",
							"DOZER! MOVE ASIDE!",
							"DOZER! STAND BACK!",
							"DOZER! STAY BACK!",
							"DOZER! GET OUT OF THE WAY!",
							"STAY BACK!",
							"STAND BACK!",
							"GOING TO WORK!",
							"GIVE ME SOME TIME TO WORK!", --unsure
							"ALRIGHT, WHERE ARE THEY?!",
							"ALRIGHT! WATCH... AND LEARN!",
							"ASS-KICKIN' TIME!",
							"MAKE WAY FOR THE DOZER!",
							"MAKE WAY FOR THE BULLDOZER!",
							"MOVE ASIDE! I GOT THIS!",
							"TIME FOR SOME PAYBACK!",
							"WHO WANTS A PIECE OF ME?!",
							"WHERE ARE YOU?!",
							"MOVE ASIDE!",
							"I GOT THIS!",
							"COME ON OUT WHEREVER YOU ARE!",
							"SHOW ME WHERE THEY ARE!",
							"OKAY, I'M HERE! WHO WANTS TO DIE?!"
						}
					}
				},
				bdz_g90 = {
					text = "(Bulldozer taunt)",
					category = "enemy_chatter",
					line_variations = {
						standard_mode = {
							"ALRIGHT! HERE, AND READY TO KICK ASS!",
							"ALRIGHT, WHERE ARE THEY?!",
							"BACK THE FUCK UP!",
							"BRINGING... THE PAIN!",
							"BULLDOZER IN THE HOUSE!",
							"BRINGING SOME HURT!",
							"BULLDOZER COMING THROUGH!",
							"BULLDOZER GOIN' IN!",
							"BULLDOZER! MAKE WAY!",
							"BULLDOZER! STAY BACK!",
							"COMING THROUGH!",
							"CAN'T STOP ME!",
							"'CAREER CRIMINALS,' MY ASS!",
							"COME ON OUT... WHEREVER YOU ARE!",
							"DEATH PENALTY IN THREE... TWO... ONE!",
							"DO YOU EVEN KNOW... HOW FUCKED YOU ARE?!",
							"DO YOUR WORST!",
							"DON'T KILL YOURSELF OR ANYTHING- THAT HONOR'S MINE!",
							"DON'T YOU THINK YOU SHOULD LEAVE?! NOW?!",
							"DON'T! MESS! WITH ME!",
							"DOZER! MAKE WAY!",
							"DOZER IN THE HOUSE!",
							"DOZER'S HERE AND READY FOR ACTION!",
							"ENGAGING TARGET!",
							"EYES ON TARGET!",
							"FIND SOMEWHERE GOOD TO HIDE!",
							"FUCKING AMATEURS!",
							"GET READY!",
							"GIMME SOME ROOM TO WORK!",
							"GIVE UP!",
							"GIVE UP... AND MAYBE I WON'T STOP A MUDHOLE IN YOUR ASS!",
							"GONNA BREAK SOME SHIT!",
							"GONNA DROP A BUILDING ON 'EM!",
							"GONNA SEND YOU TO HELL!",
							"GONNA SHOW YOU THE LIGHT AT THE END OF THE TUNNEL!",
							"GOT EYES ON TARGET!",
							"HAHA, SUCKERS!",
							"HERE TO END THIS!",
							"HERE COMES SOME FUCKING HURT!",
							"HIDE WHILE YOU CAN!",
							"HOW DO YOU THINK THIS IS GONNA END?!",
							"I BRING THE PAIN!",
							"I CAN'T WAIT TO GET MY HANDS ON YOU!",
							"I HEAR YOU!",
							"I GIVE THIS GUY FIVE SECONDS!",
							"I'VE GOT 'EM!",
							"I GOT THIS ONE!",
							"I GOT THIS!",
							"I'LL DEAL WITH THIS ONE!",
							"I'LL TAKE THIS ONE!",
							"I'LL TAKE CARE OF THIS ONE MYSELF!",
							"I'LL TAKE THIS ONE ALL ON MY OWN!",
							"I'LL PICK THESE SUCKERS APART!",
							"I'M THEIR PROBLEM NOW!",
							"I'M UNSTOPPABLE!",
							"I'MMA KICK YOUR ASS!",
							"JUST A MATTER OF TIME!",
							"JUST WAIT 'TIL I FIND YOU!",
							"KISS YOUR ASS GOODBYE!",
							"LET'S FINISH THIS!",
							"LET'S SEE WHAT YOU GOT!",
							"MAKE WAY FOR THE BULLDOZER!",
							"MAKE WAY FOR THE DOZER!",
							"MAKE WAY!",
							"MOVE ASIDE!",
							"MOVE ASIDE, I GOT THIS!",
							"NEXT BULLET'S GOT YOUR NAME ON IT!",
							"NOW YOU GOT MY ATTENTION... BIG MISTAKE!",
							"OH, I SEE 'EM NOW!",
							"OH, HE'S GONNA PAY!",
							"OKAY, I'M HERE! WHO WANTS TO DIE?!",
							"PICK 'EM, LAY 'EM DOWN!",
							"PLEASE... STAY ALIVE A LITTLE BIT LONGER... SO I CAN KILL YOU MYSELF!",
							"SHOOT 'EM UP!",
							"SHOW ME WHERE THEY ARE!",
							"SHOW ME WHAT YOU GOT!",
							"STAY BACK!",
							"STAND BACK!",
							"TANGO AHEAD!",
							"TANGO IN SIGHT!",
							"TANGO SPOTTED!",
							"TARGET AHEAD!",
							"THAT'S ALL YOU GOT?!",
							"THAT'S IT!",
							"THEY'RE STILL ALIVE!",
							"THIS GUY'S NO MATCH!",
							"THIS ONE BELONGS TO ME!",
							"THIS ONE'S MINE!",
							"THIS WON'T TAKE LONG!",
							"THIS... WON'T END WELL... FOR YOU!",
							"TIME FOR SOME PAYBACK!",
							"TIME TO SEND YOU TO HELL!",
							"TOTAL ANNIHILATION IN THREE... TWO... ONE!",
							"WANNA BANG HEADS?!",
							"WATCH ME CRUSH THIS GUY!",
							"WHAT'S THIS, AMATEUR HOUR?!",
							"WHO WANTS A PIECE OF ME?!",
							"WON'T BE LONG NOW!",
							"WORLD OF HURT, COMING UP!",
							"YOU ARE SO FUCKED!",
							"YOU CAN STILL GIVE UP... BITCH!",
							"YOU GOT NO CHANCE!",
							"YOU FUCKED UP, BIG TIME!",
							"YOU MADE A VERY BAD MISTAKE!",
							"YOU MADE A BAD CALL!",
							"YOU SHOULD'VE GIVEN UP BACK THERE!",
							"YOU STEPPED IN IT!",
							"YOU THINK YOU'RE BAD? YOU'RE NOTHIN'!",
							"YOU WON'T STOP ME!",
							"YOU'RE DEAD!",
							"YOU'RE GONNA PAY!",
							"YOU'RE GONNA WISH YOU'D STAYED HOME!",
							"YOU'RE IN DEEP SHIT, NOW!",
							"YOU'RE NO MATCH FOR ME!",
							"YOU'RE NOTHING TO ME!",
							"YOU'RE UP AGAINST THE WALL, AND I AM THE FUCKING WALL!"
						}
					}
				},
				bdz_x02a_any_3p = {
					text = "[Bulldozer death]",
					max_distance = 1500,
					category = "enemy_death",
					priority = 50
				},
				visor_lost = { --SEN-I-SOSHITSU
					text = "[lost visor]",
					priority = 60,
					duration = 5,
					max_distance = 4000,
					category = "enemy_chatter",
					line_variations = {
						standard_mode = {
							"MY DAMN VISOR!",
							"FUCK!",
							"MY VISOR!",
							"FUCKING HELL!",
							"I'M SCREWED!",
							"OH, SHIT!",
							"SHIT JUST GOT REAL!",
							"UH-OH!",
							"THAT DAMN VISOR!",
							"IMPRESSIVE... BUT FUTILE!",
							"TOO LITTLE... TOO LATE!",
							"HOLY SHIT!",
							"AW, FUCK!",
							"HAH! LIKE THAT WOULD STOP ME!",
							"I'LL PUT YOU DOWN, WITH OR WITHOUT MY VISOR!",
							"I'LL CRUSH YOU, WITH OR WITHOUT MY VISOR!",
							"I'LL FUCK YOU UP, VISOR OR NO VISOR!",
							"I'LL KICK YOUR ASS, VISOR OR NO VISOR!",
							"THAT WON'T STOP ME!"
						}
					}
				},

				cloaker_spawn = {
					text = "[Cloaker spawned]",
					category = "enemy_chatter",
					priority = 40
				},
				cloaker_taunt_during_assault = {
					text = "(Cloaker taunt)",
					category = "enemy_chatter",
					line_variations = {
						standard_mode = {
							"Alright, the safeword is 'police brutality.",
							"I got your DLC right here!",
							"Speak up! Can't hear you!",
							"Sometimes, wishes do come true!",
							"We call this a 'difficulty tweak!'",
							"Next time, check your corners!",
							"THIS is the point of no return!",
							"Didn't forget about me, did you?!",
							"You call this 'putting up a fight?!'",
							"I know, I know... I'm late.",
							"You asked for it! Really!",
							"You wanted me back, SO I'M BACK!",
							"Listen here, I've got this drum solo I've been working on!",
							"Miss me, didn't you?",
							"You call this 'resisting arrest?!'",
							"Ooh, that one's gonna hurt!",
							"Work smarter, not harder!",
							"I'm gonna beat the cellulites outta you!",
							"Stop hitting yourself, stop hitting yourself!",
							"I guess you're not as good as you thought!",
							"I'm gonna turn you inside-out!",
							"Better late than never!",
							"Not so tough now, huh?",
							"Try a little harder!",
							"Who's the clown now?!",
							"This might sting a little!"
						}
					},
					priority = 70
				},
				cloaker_taunt_after_assault = {
					text = "(Cloaker taunt)",
					category = "enemy_chatter",
					line_variations = {
						standard_mode = {
							"I bet you let yourself get beat up, just to hear what I have to say!",
							"We gotta do this more often.",
							"We gotta stop meeting like this, you know.", --WELL WHICH IS IT, CLOAKER
							"Not as tough as they told me!",
							"You got what was coming for ya!",
							"Now cry for mom to change your diapers!",
							"Wow, that was a nice workout. I think I'll have a protein drink and hit the shower.",
							"What's left if you beat the shit out of a piece of shit?!",
							"I expected better!",
							"You wear that shit in your pants proudly, like a badge of honor!",
							"Now, you can come back for more, any time you want!"
						}
					},
					priority = 70
				},
				rcloaker_taunt_during_assault = { --russian cloaker
					text = "(Cloaker taunt)",
					category = "enemy_chatter",
					priority = 70
				},
				rcloaker_taunt_after_assault = {  --russian cloaker
					text = "(Cloaker taunt)",
					category = "enemy_chatter",
					priority = 70
				},
				clk_c01x_plu = {
					text = "cloaker ???",
					category = "UNKNOWN"
				},
				cloaker_detect_christmas_mono = {
					text = "(FESTIVE CLOAKER CHARGE!)",
					priority = 11,
					category = "enemy_chatter"
				},
				cloaker_detect_christmas_stop = {
					text = "(Festive Cloaker charge stops)",
					category = "stops",
					duration = 2,
					stops_line = "cloaker_detect_christmas_mono"
				},
				cloaker_detect_mono = {
					text = "(CLOAKER CHARGE!)", --wololololo
					max_distance = 3000,
					priority = 11,
					category = "enemy_chatter"
				},
				cloaker_detect_stop = {
					text = "(Cloaker charge stops)",
					category = "stops",
					stops_line = "cloaker_detect_mono",
					remove_by_source = true,
					duration = 2,
					priority = 40
				},
				cloaker_presence_loop = { --needs max distance
					text = "(Cloaker idle)",
					priority = 40,
					max_distance = 1500,
					category = "enemy_chatter",
					loop_data = {
						loop_interval = -1 --constant
					}
				},
				cloaker_presence_stop = {
					text = "(Cloaker idle stops)",
					category = "stops",
					stops_line = "cloaker_presence_loop",
					remove_by_source = true,
					duration = 2,
					priority = 40
				},
				clk_punch_3rd_person_3p = {
					text = "(Cloaker lunge!)",
					max_distance = 1500,
					category = "enemy_dialogue",
					priority = 11
				},
		
				entrance = {
					priority = 60,
					max_distance = 4000,
					variants = {
						tank = {
							text = "(Bulldozer spawned)",
							category = "enemy_chatter",
							line_variations = { --copied from bdz_entrance
								standard_mode = {
									"ASS-KICKIN' TIME!",
									"BULLDOZER GOIN' IN!",
									"BULLDOZER TIME!",
									"BULLDOZER! STAY BACK!",
									"BULLDOZER'S HERE AND READY FOR ACTION!",
									"BULLDOZER! GET OUT OF THE WAY!",
									"CLOBBERIN' TIME!",
									"COME OUT AND PLAY!",
									"COMING THROUGH!",
									"DOZER! MAKE WAY!",
									"DOZER! GET OUT OF THE WAY!",
									"DOZER'S HERE, AND READY FOR ACTION!",
									"GET. OUT. OF. THE. WAY!",
									"GONNA BREAK SOME SHIT!",
									"GONNA BREAK SOME SHIT!",
									"GONNA DROP ON THESE SHITHEADS LIKE A FUCKING PIANO!",
									"MAKE WAY FOR THE BULLDOZER!",
									"OKAY, I'M HERE... WHO WANTS TO DIE?!",
									"SHOW ME WHERE THEY ARE!",
									"STAND BACK!",
									"WHO WANTS A PIECE OF ME?"
								},
								assault_mode = {
									"ALRIGHT! WATCH... AND LEARN!",
									"ALRIGHT, WHERE ARE THEY?!",
									"ASS-KICKIN' TIME!",
									"BULLDOZER GOIN' IN!",
									"BULLDOZER IN THE HOUSE!",
									"BULLDOZER TIME!",
									"BULLDOZER! GET OUT OF THE WAY!",
									"BULLDOZER! MAKE WAY!",
									"BULLDOZER! MOVE ASIDE!",
									"BULLDOZER, COMING THROUGH!",
									"COME ON OUT WHEREVER YOU ARE!",
									"DOZER IN THE HOUSE!",
									"DOZER! GET OUT OF THE WAY!",
									"DOZER! MOVE ASIDE!",
									"DOZER! STAND BACK!",
									"DOZER! STAY BACK!",
									"GIVE ME SOME TIME TO WORK!", --unsure
									"GOING TO WORK!",
									"I GOT THIS!",
									"MAKE WAY FOR THE BULLDOZER!",
									"MAKE WAY FOR THE DOZER!",
									"MOVE ASIDE! I GOT THIS!",
									"MOVE ASIDE!",
									"OKAY, I'M HERE! WHO WANTS TO DIE?!",
									"SHOW ME WHERE THEY ARE!",
									"SHOW ME WHERE THEY ARE!",
									"STAND BACK!",
									"STAY BACK!",
									"TIME FOR SOME PAYBACK!",
									"WHERE ARE YOU?!",
									"WHO WANTS A PIECE OF ME?!"
								}
							}
						},
						taser = {
							text = "(Taser spawned)",
							category = "enemy_chatter",
							line_variations = {
								max_distance = 4000,
								standard_mode = {
									"Who ordered shock treatment?",
									"Who ordered a lightning bolt?!",
									"Who's AMPED?",
									"Make way!",
									"Taser! MOVE!",
									"Taser! Clear!",
									"Stay back!",
									"Fifty thousand volts here!",
									"Taser, going through?",
									"Coming through!",
									"Get out of the way!",
									"Stand clear!",
									"Flip the switch!",
									"Charged and ready! Bring 'em on!",
									"Charged and ready... let 'em come!",
									"Get out of the way!",
									"Make way for the Taser!",
									"I'M AMPED!",
								}
							}
						},
						medic = {
							text = "(Medic spawned)",
							category = "enemy_chatter",
							line_variations = {
								standard_mode = {
									"Somebody order a Medic?",
									"Medic in the house!",
									"Painkiller in the house!",
									"Medic here to sort things out!",
									"Alright, who's got a boo-boo?",
									"Emergency!",
									"Got a band-aid here!",
									"Who's got a sore foot?",
									"Improv field hospital here!",
									"Medical officer, here!",
									"Ibuprofen in the house!",
									"Hurt, or heal?",
									"Medical support is here.",
									"I'm here. Let's do this!",
									"What's the situation?",
									"Okay, guys, I'm here.",
									"No pain, no gain!",
									"Who needs a hit?",
									"Comin' through!",
									"Who's got a bruise?",
									"Never fear, Medic is here!",
									"I got your wounded, guys!",
									"Let me take your pain away!",
									"Kill or cure- what's it gonna be?",
									"Keep calm- I got this!",
									"It looks like a surgery ward, there's blood all over!"
								}
							}
						}
					}
				},
				mdc_entrance = {
					text = "(Medic spawned)",
					priority = 60,
					category = "enemy_chatter",
					max_distance = 4000,
					line_variations = {
						standard_mode = {
							"Somebody order a Medic?",
							"Medic in the house!",
							"Painkiller in the house!",
							"Medic here to sort things out!",
							"Alright, who's got a boo-boo?",
							"Emergency!",
							"Got a band-aid here!",
							"Who's got a sore foot?",
							"Improv field hospital here!",
							"Medical officer, here!",
							"Ibuprofen in the house!",
							"Hurt, or heal?",
							"Medical support is here.",
							"I'm here. Let's do this!",
							"What's the situation?",
							"Okay, guys, I'm here.",
							"No pain, no gain!",
							"Who needs a hit?",
							"Comin' through!",
							"Who's got a bruise?",
							"Never fear, Medic is here!",
							"I got your wounded, guys!",
							"Let me take your pain away!",
							"Kill or cure- what's it gonna be?",
							"Keep calm- I got this!",
							"It looks like a surgery ward, there's blood all over!"
						}
					}
				},
				rmdc_entrance = {
					text = "(Russian Medic spawned)", --haha i am funni 
					priority = 60,
					max_distance = 4000,
					category = "enemy_chatter"
				},
				entrance_elite = {
					priority = 60,
					max_distance = 4000,
					category = "enemy_chatter",
					variants = {
						tank = {
							line_variations = {
								standard_mode = {
									"ELITE BULLDOZER TIME!",
									"ELITE DOZER, COMING THROUGH!",
									"ELITE DOZER! STAND BACK!",
									"ELITE DOZER! STAY BACK!",
									"ELITES! FORWARD!",
									"MAKE WAY FOR THE ELITE DOZER!",
									"ARE YOU SURE YOU CAN HANDLE THE ELITES?",
									"ELITE BULLDOZER! STAY BACK!",
									"ELITE BULLDOZER! MAKE WAY!",
									"ELITE DOZER! MOVE ASIDE!",
									"ELITE BULLDOZER COMING THROUGH!",
									"YOU'RE DEALING WITH THE ELITES NOW, SUCKERS!",
									"ELITE DOZER IN THE HOUSE!",
									"ELITE BULLDOZER! GET OUT OF THE WAY!"
								}
							}
						}
					}
				},
				cpa_a02_01 = {
					override_name = "[megaphone cop]",
					priority = 60,
					text = "Captain's just got here, time to turn this around!",
					category = "enemy_dialogue",
					line_variations = {
						standard_mode = {
							"The Captain has arrived in the AO!",
							"Captain's just got here, time to turn this around!",
							"Captain's got here, time to turn this around!",
							"The Captain how has operational control!",
							"The Captain is here! He has his operation!",
							"It's the Captain! Follow his lead!",
							"The Captain's here!"
						}
					}
				},
				cpa_a03_01 = {
					override_name = "[megaphone cop]",
					text = "Turret'll be here any second!",
					category = "enemy_dialogue",
					priority = 60,
					line_variations = {
						standard_mode = {
							"Just keep 'em occupied 'til the Turret gets here!",
							"Time to put the firepower on! Turret is en route!",
							"Turret's gonna be here any second!",
							"We got a Turret on the way!",
							"Alright! Got a Turret rolling in! This situation is about to change!"
						}
					}
				},
				cpa_a04_01 = {
					override_name = "[megaphone cop]",
					text = "Turret's arrived!",
					category = "enemy_dialogue",
					priority = 60,
					line_variations = {
						standard_mode = {
							"Guys, let the Turret cut them down!",
							"Turret is here! Time to change the game!",
							"It's the Turret!",
							"And now we have an Armored Turret!",
							"Turret got here!",
							"Turret is here! Advantage is ours now!",
							"The Turret arrived!",
							"Guys, the Turret's arrived!",
							"Here's the Turret!",
							"The Turret is here, and bringing the pain!"
						}
					}
				},
				cpw_a01 = {
					override_name = "Captain Winters",
					text = "Contact!",
					category = "enemy_dialogue",
					priority = 60,
					line_variations = {
						standard_mode = {
							"Target in sight!",
							"Target ahead!",
							"Target spotted!",
							"Targets confirmed!",
							"There! The PAYDAY Gang!",
							"That's a confirmed sighting!",
							"That's them, all right!",
							"They won't escape this time!",
							"They're in the AO!",
							"Eyes on contact!",
							"Got eyes on contact!",
							"Contact made!",
							"Green light to engage!",
							"Contact made, I repeat, contact is made!",
							"Confirmed contact, I repeat, confirmed contact!",
							"Positive ID!",
							"Positive contact!",
							"ID made! It's them!",
							"I got visual on the targets!"
						}
					}
				},
				cpw_a02 = {
					override_name = "Captain Winters",
					text = "Criminal down!",
					category = "enemy_chatter",
					priority = 60,
					line_variations = {
						standard_mode = {
							"I got the robber.",
							"Robber's down!",
							"Justice served.",
							"I knew we'd get them.",
							"Commissioner... we got one.",
							"Target down!",
							"No-one cheats justice for long.",
							"You got what you deserved.",
							"That's one of the PAYDAY Gang down!",
							"You're just a footnote in history.",
							"Let that be a lesson.",
							"One down.",
							"I expected more resistance.",
							"I expected a tougher fight.",
							"It always ends the same."
	--							"I thought you'd be tougher." --not sure i heard it right
						}
					}
				},
				cpw_a04 = {
					override_name = "Captain Winters",
					text = "Retreat!",
					category = "enemy_dialogue",
					line_variations = {
						standard_mode = {
							"Retreating! Cover me!",
							"Don't break! Ease back.",
							"Back! Fall back!",
							"I'm falling back!",
							"Pulling back!",
							"Pull back!",
							"Tactical withdrawal!"
						}
					}
				},
				cpw_a05 = {
					override_name = "Captain Winters",
					text = "Taking fire!",
					category = "enemy_chatter",
					priority = 60,
					line_variations = {
						standard_mode = {
							"All elements, close your profile!",
							"You guys trained for this!",
							"Tactical advance, watch your angles!",
							"Move in cover! Move in cover!",
							"Close the formation!",
							"Stay with your unit!",
							"Watch their fire!",
							"Watch your spacing!",
							"Tactical spacing!",
							"Tactical awareness at all times!",
							"Support your unit!",
							"I want to hear you men communicate!"
						}
					}
				},

				burndeath = {
					text = "[burn death]",
					max_distance = 1500,
					category = "enemy_death",
					priority = 90
				},
				tasered_3rd = { --loops
					text = "tasered_3rd",
					max_distance = 3000,
					category = "sfx",
					loop_data = {
						loop_interval = -1
					},
					priority = 55
				},
				tasered_3rd_stop = {
					text = "(tasing stops)",
					category = "stops",
					priority = 55
				},
				post_kill_taunt = {
					text = "post_kill_taunt",
					category = "enemy_chatter",
					max_distance = 4000,
					priority = 60
				},
				post_tasing_taunt = {
					text = "(tasing taunt)",
					category = "enemy_chatter",
					max_distance = 4000,
					priority = 60
				},
				tasered = {
					text = "(being tased!)",
					category = "sfx",
					priority = 15
				},
				tasing = {
					text = "(taser charging)", --tasing
					category = "UNKNOWN",
					priority = 17
				},
				heal = {
					text = "(healed cop)",
					category = "enemy_dialogue",
					max_distance = 4000,
					priority = 50
				},

				dsp_radio_buzz = {
					override_name = "SFX",
					text = "(idle pager buzz)", --nonalert, idle sound
					category = "sfx",
					max_distance = 1500,
					duration = 5,
					priority = 60
				},
				dsp_radio_query_1 = {
					text = "(pager ring, operator query)",
					category = "enemy_dialogue",
					max_distance = 1500,
					priority = 36,
					duration = 5
				},
				dsp_fooled_1 = {
					text = "(pager operator fooled)",
					max_distance = 1500,
					priority = 36,
					category = "enemy_dialogue"
				},
				mga_death_scream = { -- unused afaik
					override_name = "Megaphone Cop",
					text = "[muted scream, megaphone feedback]",
					category = "mission_dialogue",
					priority = 37
				},
				mga_deploy_snipers = {
					override_name = "Megaphone Cop",
					text = "Deploying snipers!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_generic_a = {
					override_name = "Megaphone Cop",
					text = "How's it going? Is everyone alright?",
					category = "mission_dialogue",
					priority = 10
				},
				mga_generic_b = {
					override_name = "Megaphone Cop",
					text = "Give up! There's no way you'll get away with this!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_generic_c = {
					override_name = "Megaphone Cop",
					text = "We're past negotiations- you die tonight!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_hostage_assault_delay = {
					override_name = "Megaphone Cop",
					text = "We know you took hostages!", --alt. "very clever, we're delayed"
					category = "mission_dialogue",
					priority = 10
				},
				mga_intro = {
					override_name = "Megaphone Cop",
					text = "This is the Washington Police, there is no way out!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_killed_civ_1st = {
					override_name = "Megaphone Cop",
					text = "You've killed a civilian! You're not helping me or yourself.",
					category = "mission_dialogue",
					priority = 10
				},
				mga_killed_civ_2nd = {
					override_name = "Megaphone Cop",
					text = "Multiple kills, you're way outta line! This is madness!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_leave = {
					override_name = "Megaphone Cop",
					text = "Fuck this, I'm hitting the golf course!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_robbers_clever = {
					override_name = "Megaphone Cop",
					text = "Impressive! But you still won't get away!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_thermite = {
					override_name = "Megaphone Cop",
					text = "Thermite to get into the vault? Ha! But now we have you trapped!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_vault_a = {
					override_name = "Megaphone Cop",
					text = "There's no way into the vault, give up!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_vault_b = {
					override_name = "Megaphone Cop",
					text = "That's a multilayer vault! Didn't think it'd be that easy did you?",
					category = "mission_dialogue",
					priority = 10
				},
				mga_vault_c = {
					override_name = "Megaphone Cop",
					text = "You've breached the vault, but now you're heavy and we're fast.",
					category = "mission_dialogue",
					priority = 10
				},
				mga_t01a_con_plu = {
					override_name = "Megaphone Cop",
					text = "We're willing to do a hostage trade.",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s01 = {
					override_name = "Megaphone Cop",
					text = "Listen up! This is the police!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s02 = {
					override_name = "Megaphone Cop",
					text = "We know you're in there",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s03 = {
					override_name = "Megaphone Cop",
					text = "We have you surrounded",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s04 = {
					override_name = "Megaphone Cop",
					text = "Make no mistake, we're in charge of this situation!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s05 = {
					override_name = "Megaphone Cop",
					text = "Resistance is futile, give up!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s06 = {
					override_name = "Megaphone Cop",
					text = "This is your last warning!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s07 = {
					override_name = "Megaphone Cop",
					text = "We will not give up until all the hostages are released!",
					category = "mission_dialogue",
					priority = 10
				},
				a01 = {
					text = "They've got a gun!",
					category = "enemy_dialogue",
					max_distance = 1500,
					priority = 70
				},
				a02 = {
					text = "Please stay back.",
					category = "mission_dialogue",
					max_distance = 1500,
					priority = 10
				},
				a03 = {
					text = "Sorry, this area is for personnel only.",
					category = "mission_dialogue",
					max_distance = 1500,
					priority = 10
				},
				a05 = {
					text = "Two-Four reporting in, all quiet here.",
					category = "enemy_dialogue",
					max_distance = 1500,
					priority = 37
				},
				a06 = {
					text = "{a06}",
					category = "UNKNOWN"
				},
				a07a = {
					text = "Alerted",
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 1500,
					line_variations = {
						whisper_mode = {
							"Wha-?",
							"Hm?",
							"Huh?",
							"What was that?"
						}
					}
				},
				a07b = {
					category = "enemy_dialogue",
					text = "(spots something suspicious)",
					priority = 37,
					max_distance = 1500,
					category = "enemy_dialogue",
					priority = 37,
					line_variations = {
						whisper_mode = {
							"That's weird...",
							"Strange..."
						}
					}
				},
				a08 = {
					category = "enemy_dialogue",
					text = "(spotted heister!)",
					priority = 37,
					category = "enemy_dialogue",
					priority = 37,
					max_distance = 1500,
					line_variations = {
						whisper_mode = {
							"Shit!",
							"Hey!",
							"Intruder!"
						}
					}
				},
				a09 = {
					category = "enemy_dialogue",
					text = "Sound the alarm!",
					priority = 37,
					max_distance = 1500,
					category = "enemy_dialogue",
					priority = 37,
					line_variations = {
						whisper_mode = {
							"Sound the alarm!",
							"Sound the alarm immediately!"
						}
					}
				},
				a10 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, there's a broken window here...",
					max_distance = 1500,
					priority = 37
				},
				a11 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, there's a dead body here...",
					max_distance = 1500,
					priority = 37
				},
				a12 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, I've spotted a dead officer...",
					max_distance = 1500,
					priority = 37
				},
				a13 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, I've spotted a tied up civilian...",
					max_distance = 1500,
					priority = 37
				},
				a14 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, I've spotted a tied up officer...",
					max_distance = 1500,
					priority = 37
				},
				a15 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, we've got a situation here...",
					max_distance = 1500,
					priority = 37
				},
				a16 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, we've got an officer signalling for help...",
					max_distance = 1500,
					priority = 37
				},
				a17 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, there's a security door that shouldn't be open here...",
					max_distance = 1500,
					priority = 37
				},
				a18 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, somebody set a fire over here...",
					max_distance = 1500,
					priority = 37
				},
				a19 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, I've got a bodybag over here...",
					max_distance = 1500,
					priority = 37
				},
				a20 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, I've spotted some kind of sentry gun over here...",
					max_distance = 1500,
					priority = 37
				},
				a21 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, I've spotted a trip mine...",
					max_distance = 1500,
					priority = 37
				},
				a22 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, I've spotted a suspicious bag...",
					max_distance = 1500,
					priority = 37
				},
				a23 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, there's signs of intruders here...",
					max_distance = 1500,
					priority = 37
				},				
				a24 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, somebody's been messing with the computer here...",
					max_distance = 1500,
					priority = 37
				},
				a25 = {
					category = "enemy_dialogue",
					text = "Two-Two reporting in, I've spotted some heavy drilling equipment here...",
					max_distance = 1500,
					priority = 37
				},
				amm = {
					category = "enemy_chatter",
					text = "They've brought extra ammo with them!",
					max_distance = 1500,
					priority = 90
				},
				att = {
					category = "enemy_chatter",
					text = "Weapons hot!", --fire at will, gogogo!
					max_distance = 700,
					priority = 90
				},
				b01 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Entrance is A-OK. Over.",
					max_distance = 1500,
					priority = 37
				},
				b02 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Hall A is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b03 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Hall B is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b04 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Hall C is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b05 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Hall D is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b06 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Roof is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b07 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Basement is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b08 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Ground Floor is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b09 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Second Floor is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b10 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Third Floor is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b11 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Pool Area is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b12 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Balcony is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b13 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Living Room is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b14 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Corridor is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b15 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Lobby is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b16 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Security Door is shut and locked, everything's fine. Over.",
					max_distance = 1500,
					priority = 37
				},
				b17 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Security Room is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b18 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, camera is working fine, no sign of tampering. Over.",
					max_distance = 1500,
					priority = 37
				},
				b19 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Staircase is all clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b20 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Penthouse is clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b21 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, Garage is clear. Over.",
					max_distance = 1500,
					priority = 37
				},
				b22 = {
					category = "enemy_dialogue",
					text = "Moving on.",
					max_distance = 1500,
					priority = 37
				},
				b23 = {
					category = "enemy_dialogue",
					text = "Two-Three to Control, could someone buzz me through the door?.",
					max_distance = 1500,
					priority = 37
				},
				b24 = {
					category = "enemy_dialogue",
					text = "Two-Three to Control, this whole place is clear, I'm going home. Over and out.",
					max_distance = 1500,
					priority = 37
				},
				b25 = {
					category = "enemy_dialogue",
					text = "Reporting in, glass shards everywhere! Signs of break in! Send reinforcements!",
					max_distance = 1500,
					priority = 37
				},
				b26 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, someone's been fiddling with this camera. Send backup!",
					max_distance = 1500,
					priority = 37
				},
				b27 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, I hear some kind of noise. Send backup!",
					max_distance = 1500,
					priority = 37
				},
				b28 = {
					category = "enemy_dialogue",
					text = "Two-Three reporting in, I'm outside the lobby. Over.",
					max_distance = 1500,
					priority = 37
				},
				bak = {
					category = "enemy_dialogue",
					text = "Watch your background, civilians on scene!",
					max_distance = 1500,
					priority = 37
				},
				burndeath = { --!
					category = "enemy_death",
					text = "[fire death]",
					max_distance = 700,
					priority = 90
				},
				burnhurt = {
					category = "enemy_chatter",
					text = "[fire hurt]",
					max_distance = 700,
					line_variations = {
						standard_mode = {
							"[panicked gasping on fire]",
							"[hyperventilating on fire]",
							"[screams on fire]"
						}
					}
				},
				c01 = {
					category = "enemy_chatter",
					text = "Contact!",
					max_distance = 700,
					priority = 90
				},
				ch1 = {
					category = "enemy_chatter",
					text = "Watch out for the trip mines!",
					max_distance = 700,
					priority = 90
				},
				ch2 = {
					category = "enemy_chatter",
					text = "Watch out for the sentry gun!",
					max_distance = 700,
					priority = 90
				},
				ch3 = {
					category = "enemy_chatter",
					text = "Argh! Some kind of jammer!",
					max_distance = 700,
					priority = 90
				}, --ecm feedback
				ch4 = {
					category = "enemy_chatter",
					text = "That maniac has a fucking SAW!",
					max_distance = 700,
					priority = 90
				},
				civ = {
					category = "enemy_chatter",
					text = "Get the hostages!",
					max_distance = 700,
					priority = 90
				},
				clr = {
					category = "enemy_chatter",
					text = "Area clear.",
					max_distance = 700,
					priority = 90
				},
				cn1 = {
					category = "enemy_dialogue",
					text = "(converted to joker)",
					max_distance = 700,
					line_variations = {
						standard_mode = {
							"Yeah... okay...",
							"You're going to hell for this."
						}
					},
					priority = 40
				},
				cr1 = {
					category = "enemy_chatter",
					text = "(to hostage) Hey, stay calm, we're getting you out.",
					max_distance = 1000,
					priority = 90
				},
				l1d_d01 = {
					category = "enemy_dialogue",
					text = "Deploy smoke.",
					max_distance = 1000,
					priority = 90,
					line_variations = {
						standard_mode = {
							"Smoke.",
							"Deploy smoke.",
							"Smoke 'em out.",
							"Smoke 'em."
						}
					}
				},
				d01 = {
					category = "enemy_dialogue",
					text = "Deploy smoke.",
					max_distance = 1000,
					priority = 90
				},
				d02 = {
					category = "enemy_dialogue",
					text = "Throwing a flashbang!",
					max_distance = 1000,
					priority = 60
				},
				e01 = {
					category = "enemy_chatter",
					text = "Disable that drill!",
					max_distance = 1000,
					priority = 90
				},
				e02 = {
					category = "enemy_chatter",
					text = "Disable their gear!",
					max_distance = 1000,
					priority = 90
				},
				e03 = {
					category = "enemy_chatter",
					text = "Disabling the power!",
					max_distance = 1000,
					priority = 90
				},
				e04 = {
					category = "enemy_chatter",
					text = "Do what you can to slow them down.",
					max_distance = 1000,
					priority = 90
				},
				e05 = {
					category = "enemy_chatter",
					text = "Drill is disabled, over.",
					max_distance = 1000,
					priority = 90
				},
				e06 = {
					category = "enemy_chatter",
					text = "Disabled their gear.",
					max_distance = 1000,
					priority = 90
				},
				gr1a = {
					category = "enemy_chatter",
					text = "Rescue team Alpha going in.",
					max_distance = 1000,
					priority = 90
				},
				gr1b = {
					category = "enemy_chatter",
					text = "Rescue team Bravo going in.",
					max_distance = 1000,
					priority = 90
				},
				gr1c = {
					category = "enemy_chatter",
					text = "Rescue team Charlie going in.",
					max_distance = 1000,
					priority = 90
				},
				gr1d = {
					category = "enemy_chatter",
					text = "Rescue team Delta going in.",
					max_distance = 1000,
					priority = 90
				},
				gr2a = {
					category = "enemy_chatter",
					text = "Assault team Alpha going in.",
					max_distance = 1000,
					priority = 90
				},
				gr2b = {
					category = "enemy_chatter",
					text = "Assault team Bravo going in.",
					max_distance = 1000,
					priority = 90
				},
				gr2c = {
					category = "enemy_chatter",
					text = "Assault team Charlie going in.",
					max_distance = 1000,
					priority = 90
				},
				gr2d = {
					category = "enemy_chatter",
					text = "Assault team Delta going in",
					max_distance = 1000,
					priority = 90
				},
				h01 = {
					category = "enemy_chatter",
					duration = 3,
					text = "(Freeing hostage)",
					max_distance = 1000,
					priority = 90
				},
				hlp = {
					category = "enemy_chatter",
					text = "HELP!",
					max_distance = 700,
					priority = 90
				},
				hr01 = {
					text = "[hurt]",
					category = "enemy_death",
					max_distance = 1500,
					priority = 90
				},
				i01 = {
					category = "enemy_chatter", --! enemy callouts?
					duration = 1,
					text = "Freeze!",
					max_distance = 1000,
					line_variations = {
						"Hold it!",
						"Freeze!",
						"Stop!",
						"Stop it!"
					},
					priority = 90
				},
				i02 = {
					category = "enemy_chatter",
					text = "No sudden movements!",
					max_distance = 1000,
					priority = 90
				},
				i03 = {
					category = "enemy_chatter",
					text = "This ends now!",
					max_distance = 1000,
					priority = 90
				},
				l01 = {
					category = "enemy_chatter",
					text = "Get those bags!",
					max_distance = 1000,
					priority = 90
				},
				lk3a = {
					category = "enemy_chatter",
					text = "Jeez!",
					max_distance = 1000,
					priority = 90
				},
				lk3b = {
					category = "enemy_chatter",
					text = "Fucking hell!",
					max_distance = 1000,
					priority = 90
				},
				m01 = {
					category = "enemy_chatter",
					text = "Cease fire, exit point!",
					max_distance = 1000,
					priority = 90
				},
				med = {
					category = "enemy_chatter",
					text = "There's a doctor bag! They must have a field medic!",
					max_distance = 1000,
					priority = 90
				},	
				mov = {
					text = "Move!",
					category = "enemy_chatter",
					max_distance = 1000,
					priority = 90
				},
				pos = {
					category = "enemy_chatter",
					text = "I'm in position.",
					max_distance = 1000,
					priority = 99
				},
				prm = {
					category = "enemy_chatter",
					text = "Wait for my signal.",
					max_distance = 1000,
					priority = 90
				},
				pus = {
					category = "enemy_chatter",
					text = "Rush them!",
					max_distance = 1000,
					priority = 90
				},
				r01 = {
					category = "enemy_chatter",
					text = "Roger that.",
					max_distance = 1000,
					priority = 90
				},
				rdy = {
					category = "enemy_chatter",
					text = "Ready!",
					max_distance = 1000,
					priority = 99
				},
				l1d_att = {
					category = "enemy_chatter",
					text = "Go!",
					max_distance = 1000,
					priority = 99,
					line_variations = {
						standard_mode = {
							"Go!",
							"Go! Go!"
						}
					}
				},
				rrl = {
					category = "enemy_chatter",
					text = "He's reloading!",
					max_distance = 1000,
					priority = 90
				},
				s01x = { --cop surrender
					category = "enemy_dialogue",
					text = "Okay, okay! Just don't shoot!",
					priority = 40,
					max_distance = 1000,
					line_variations = {
						assault_mode = {
							"Alright! Just don't shoot!",
							"Okay, okay! Just don't shoot!"
						},
						standard_mode = {
							"Okay, okay! Don't shoot!",
							"Okay, just don't shoot!",
							"Okay! Just- just don't shoot!"
						}
					}
				},
				t01 = {
					category = "enemy_chatter",
					text = "Looking for another way in.",
					max_distance = 1000,
					priority = 90
				},
				x01a_any_3p = {
					category = "enemy_chatter",
					text = "[pain]",
					max_distance = 1000,
					priority = 90
				},
				x02a_any_3p = {
					text = "[death]",
					max_distance = 1500,
					category = "enemy_death"
				},

--mission specific dialogue
				--no mercy
				Play_bil_nmh_01_01 = {
					override_name = "Bill",
					override_text_color = ClosedCaptions.color_data.l4d_bill,
					category = "mission_dialogue",
					priority = 10,
					line_variations = {
						standard_mode = {
							"Come on, ya stinkin' elevator...",
							"Don't break down on me, elevator...",
							"Alright, let's go!",
							"Let's move, people!"
						}
					}
				},
				Play_bil_nmh_01_02 = {
					override_name = "Bill",
					override_text_color = ClosedCaptions.color_data.l4d_bill,
					category = "mission_dialogue",
					priority = 10,
					line_variations = {
						standard_mode = {
							"They'd better let me smoke up there.",
							"Come, on, come on...",
							"Come, on, come on!",
							"Close, dammit!",
							"Let's go, let's go!"
						}
					}
				},
				Play_bil_nmh_01_03 = {
					override_name = "Bill",
					override_text_color = ClosedCaptions.color_data.l4d_bill,
					category = "mission_dialogue",
					priority = 10,
					line_variations = {
						standard_mode = {
							"They'd better let me smoke up there.",
							"Don't break down on me, elevator...",
							"Close, dammit!",
							"Close, dammit.",
							"Let's go, let's go!"
						}
					}
				},
				Play_bil_nmh_01_04 = {
					override_name = "Bill",
					override_text_color = ClosedCaptions.color_data.l4d_bill,
					category = "mission_dialogue",
					priority = 10,
					line_variations = {
						standard_mode = {
							"Let's go, people!",
							"Move it out!",
							"Let's move it out, people!",
							"Come on, let's go!",
							"Let's GO!",
							"Come on, let's go!"
						}
					}
				},
				Play_bil_nmh_01_05 = {
					override_name = "Bill",
					override_text_color = ClosedCaptions.color_data.l4d_bill,
					category = "mission_dialogue",
					priority = 10,
					line_variations = {
						standard_mode = {
							"Excuse me, sirs, this is your floor, so can you kindly get the HELL off of my elevator?",
							"Well come on, I don't have all day, get the hell off!",
							"This is your floor, not mine, hurry up and get the hell off.",
							"I think this is your floor."
						}
					}
				},
				Play_doc_nmh_a = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 20,
					line_variations = {
						standard_mode = {
							"Welcome. Let's start the round.",
							"I see you have your gloves on already. Great.",
							"Welcome. We've been expecting you. Shall we start the round?"
						}
					}
				},
				Play_doc_nmh_b = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 4,
					text = "First, let's look at Isolation B." --no variations for these
				},
				Play_doc_nmh_c = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 4,
					text = "Now, let's look at Isolation A."
				},
				--not sure what happened to c
				Play_doc_nmh_d = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 4,
					text = "Finally, let's look at Isolation C."
				},
				Play_doc_nmh_e = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 4,
					line_variations = {
						standard_mode = {
							"This man went into a coma-like state, sleeping in his bed last night. His wife brought him in when he didn't wake up this morning.",
							"This man was brought in, seemingly suffering from sun-stroke.",
							"This man was bit by a monkey at the Fairfield Zoo.",
							"This man was found unconscious in the street today.",
							"This man was being treated for pulmonary emphysema, when we discovered that this was not all he was suffering from.",
							"This man was in a single-car accident on the road to Riverside.",
							"This man collapsed during his morning jog.",
							"This man seems to be suffering from a severe type of food poisoning.",
							"This man came running into the hospital reception during lunch, and collapsed on the floor.",
							"This man came in this afternoon complaining of a strange rash on his neck.",
							"This man came back from a trip to Haiti feeling very ill.",
							"This man miraculously woke up at the morgue, returning from a prolonged cardiac arrest."
						}
					}
				},
				Play_doc_nmh_f = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 20,
					line_variations = {
						standard_mode = {
							"Let's check the blood pressures as well.",
							"Let's take another lap and check each patient's blood pressure, too.",
							"Let's take another round and look at the blood pressure of the patients, as well.",
							"Let's take another loop for a blood pressure check-up."
						}
					}
				},
				Play_doc_nmh_g = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 20,
					line_variations = {
						standard_mode = {
							"This patient has a blood pressure of 119 over 80.",
							"This patient has a blood pressure of 117 over 79.",
							"This patient has a blood pressure of 115 over 78.",
							"This patient has a blood pressure of 114 over 77.",
							"This patient has a blood pressure of 112 above 75.",
							"This patient has a blood pressure of 104 over 73.",
							"This patient has a blood pressure of 98 over 61.",
							"This patient has a blood pressure of 96 over 72.",
							"This patient has blood pressure of 95 over 66."
						}
					}
				},
				Play_doc_nmh_h = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 5,
					text = "If you need me, I'll be over there." --no variations
				},
				Play_doc_nmh_i = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					duration = 5,
					line_variations = {
						standard_mode = {
							"That's all I can tell you about the patients, doctor.", --two variations with only slight differences
							"That's all I can tell you about the patients, doctor..."
						}
					}
				},
				Play_doc_nmh_run_01 = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					priority = 10,
					duration = 20,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"This man went into a coma-like state, sleeping in his bed last night. His wife brought him in when he didn't wake up this morning.",
								"This man was brought in, seemingly suffering from sun-stroke.",
								"This man was bit by a monkey at the Fairfield Zoo.",
								"This man was found unconscious in the street today.",
								"This man was being treated for pulmonary emphysema, when we discovered that this was not all he was suffering from.",
								"This man was in a single-car accident on the road to Riverside.",
								"This man collapsed during his morning jog.",
								"This man seems to be suffering from a severe type of food poisoning.",
								"This man came running into the hospital reception during lunch, and collapsed on the floor.",
								"This man came in this afternoon complaining of a strange rash on his neck.",
								"This man came back from a trip to Haiti feeling very ill.",
								"This man miraculously woke up at the morgue, returning from a prolonged cardiac arrest."
							},
							{
								"Whatever he is suffering from, it is definitely not the Green Flu.",
								"Whatever he is suffering from, is definitely isn't any form of sepsis.",
								"We found traces of methamphetamine in his blood.",
								"We found traces of amphetamine in his blood.",
								"We found traces of several psychoactive substances in his blood.",
								"We found traces of cocaine in his blood.",
								"We detected abnormal levels of histamines in his blood. We haven't identified the allergy yet.",
								"He is suffering from epidural hematoma.",
								"He is suffering from cerebral edema.",
								"He is suffering from encephalitis.",
								"He is suffering from narcolepsy.",
								"He is suffering from epilepsy.",
								"He is showing symptoms of temporal arthritis.",
								"He is showing symptoms of temporal meningitis.",
								"He is showing symptoms of extreme exhaustion.",
								"He's probably suffered subarachnoid hemorrhage.",
								"He has recently been exposed to high levels of ionizing radiation.",
								"He's got SAH.",
								"I have reason to believe he has a brain tumor."
							},
							{
								"He's in a state of hypertensive emergency.",
								"His heart rate is abnormal.",
								"He has malignant hypertension.",
								"His heart rate is well above normal.",
								"His heart rate is well below normal.",
								"His heart rate is well above 140.",
								"His resting heart rate is 140.",
								"His resting heart rate is 130.",
								"His resting heart rate is 120.",
								"His resting heart rate is as high as 100, and rising steadily.",
								"His resting heart rate is 110.",
								"His heart rate is well below 30."
							}
						}
					}
				},
				Play_doc_nmh_run_02 = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					duration = 20,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"This man was bit by a monkey at the Fairfield Zoo.",
								"This man came running into the hospital reception during lunch, and collapsed on the floor.",
								"This man miraculously woke up at the morgue, returning from a prolonged cardiac arrest.",
								"This man seems to be suffering from a severe type of food poisoning.",
								"This man was brought in, seemingly suffering from sun-stroke.",
								"This man was found unconscious in the street today.",
								"This man came in this afternoon complaining of a strange rash on his neck.",
								"This man was in a single-car accident on the road to Riverside.",
								"This man went into a coma-like state, sleeping in his bed last night. His wife brought him in when he didn't wake up this morning.",
								"This man collapsed during his morning jog.",
								"This man came back from a trip to Haiti feeling very ill.",
								"This man was being treated for pulmonary emphysema, when we discovered that this was not all he was suffering from."
							},
							{
								"We'll have to keep him in isolation a while longer, but he'll have recovered soon.",
								"He has to stay isolated a little longer, but he will be okay.",
								"He is currently recovering and can be moved from the ICU quite soon.",
								"He won't have to remain under medical treatment for too long.",
								"While he isn't fully diagnosed yet, I am confident that he will be fully recovered shortly.",
								"He is responding well to the treatment, and will be out of the hospital in a matter of days."
							},
							{
								"His heart rate remains stable.",
								"His heart rate is stable.",
								"His heart rate is normal.",
								"His resting heart rate is stable.",
								"His resting heart rate is 60, and remains stable.",
								"His resting heart rate is 65.",
								"His resting heart rate is 70.",
								"His resting heart rate is 75.",
								"His resting heart rate is 80.",
								"His resting heart rate is 85.",
								"His resting heart rate is 90, but remains stable."
							}
						}
					}
				},
				Play_doc_nmh_run_03 = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					duration = 20,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"This man miraculously woke up at the morgue, returning from a prolonged cardiac arrest.",
								"This man was brought in, seemingly suffering from sun-stroke.",
								"This man was bit by a monkey at the Fairfield Zoo.",
								"This man came running into the hospital reception during lunch, and collapsed on the floor.",
								"This man seems to be suffering from a severe type of food poisoning.",
								"This man was found unconscious in the street today.",
								"This man came in this afternoon complaining of a strange rash on his neck.",
								"This man was in a single-car accident on the road to Riverside.",
								"This man went into a coma-like state, sleeping in his bed last night. His wife brought him in when he didn't wake up this morning.",
								"This man collapsed during his morning jog.",
								"This man came back from a trip to Haiti feeling very ill.",
								"This man was being treated for pulmonary emphysema, when we discovered that this was not all he was suffering from."
							},
							{
								"We found traces of botulinum toxin in his bloodstream.",
								"We found traces of tetrodotoxin in his blood.",
								"We found traces of tetraodontidae neurotoxin in his blood.",
								"We found traces of tetanus toxin in his bloodstream.",
								"We found traces of bufotoxin in his blood.",
								"We found traces of some advanced disassociative drugs in his blood.",
								"We found traces of fugu neurotoxin in his blood.",
								"We found traces of diphtheria venom in his bloodstream."
							},
							{
								"He also has an elevated white blood cell count.",
								"He also has a very low white blood cell count.",
								"He is also suffering from leukopenia.",
								"He is also suffering from leukocytosis.",
								"We've been giving him Fampridine, but his condition is deteriorating."
							},
							{
								"This is severe sepsis, no doubt.",
								"He's in full SIRS.",
								"He is not responding to any medical treatment.",
								"We're slowly losing him.",
								"All things combined, it's a medical condition I've never seen before."
							},
							{
								"He has malignant hypertension.",
								"His resting heart rate is well above 140.",
								"His resting heart rate is 140.",
								"His resting heart rate is 130.",
								"His resting heart rate is 120.",
								"His resting heart rate is 110.",
								"His resting heart rate is as high as 100, and rising steadily.",
								"His resting heart rate is well below normal.",
								"His heart rate is abnormal."
							}
						}
					}
				},
				Play_doc_nmh_run_04 = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					duration = 20,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"This man miraculously woke up at the morgue, returning from a prolonged cardiac arrest.",
								"This man was brought in, seemingly suffering from sun-stroke.",
								"This man was bit by a monkey at the Fairfield Zoo.",
								"This man came running into the hospital reception during lunch, and collapsed on the floor.",
								"This man seems to be suffering from a severe type of food poisoning.",
								"This man was found unconscious in the street today.",
								"This man came in this afternoon complaining of a strange rash on his neck.",
								"This man was in a single-car accident on the road to Riverside.",
								"This man went into a coma-like state, sleeping in his bed last night. His wife brought him in when he didn't wake up this morning.",
								"This man collapsed during his morning jog.",
								"This man came back from a trip to Haiti feeling very ill.",
								"This man was being treated for pulmonary emphysema, when we discovered that this was not all he was suffering from."
							},
							{
								"We found traces of bufotoxin in his blood.",
								"We found traces of botulinum toxin in his bloodstream.",
								"We found traces of tetrodotoxin in his blood.",
								"We found traces of tetraodontidae neurotoxin in his blood.",
								"We found traces of tetanus toxin in his bloodstream.",
								"We found traces of some advanced disassociative drugs in his blood.",
								"We found traces of fugu neurotoxin in his blood.",
								"We found traces of diphtheria venom in his bloodstream."
							},
							{
								"We've been giving him Fampridine, but his condition is deteriorating.",
								"We're slowly losing him.",
								"He's in full SIRS.",
								"He is not responding to any treatment.",
								"He is not responding to any medical treatment.",
								"All things combined, it's a medical condition I've never seen before.",
								"This is severe sepsis, no doubt."
							},
							{ --always ends with this
								"This could be what we call 'The Green Flu.'"
							}
						}
					}
				},
				Play_doc_nmh_run_05 = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					duration = 20,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"This patient has a blood pressure of 119 over 80.",
								"This patient has a blood pressure of 117 over 79.",
								"This patient has a blood pressure of 115 over 78.",
								"This patient has a blood pressure of 114 over 77.",
								"This patient has a blood pressure of 112 above 75.",
								"This patient has a blood pressure of 104 over 73.",
								"This patient has a blood pressure of 98 over 61.",
								"This patient has a blood pressure of 96 over 72.",
								"This patient has blood pressure of 95 over 66."
							},
							{
								"Whatever he is suffering from, it is definitely not the Green Flu.",
								"We're dealing with cancer metastasis in the brain, spreading from the lungs.",
								"Whatever he is suffering from, is definitely isn't any form of sepsis.",
								"We found traces of methamphetamine in his blood.",
								"We found traces of amphetamine in his blood.",
								"We found traces of several psychoactive substances in his blood.",
								"We found traces of cocaine in his blood.",
								"We detected abnormal levels of histamines in his blood. We haven't identified the allergy yet.",
								"He is suffering from epidural hematoma.",
								"He is suffering from cerebral edema.",
								"He is suffering from encephalitis.",
								"He is suffering from narcolepsy.",
								"He is suffering from epilepsy.",
								"He is showing symptoms of temporal arthritis.",
								"He is showing symptoms of temporal meningitis.",
								"He is showing symptoms of extreme exhaustion.",
								"He's probably suffered subarachnoid hemorrhage.",
								"He has recently been exposed to high levels of ionizing radiation.",
								"He's got SAH.",
								"I have reason to believe he has a brain tumor."
							},
							{
								"His condition is improving, thanks to the antibiotics.",
								"We've been giving him Fampridine, and his condition is steadily improving.",
								"We've given him Fampridine, and he's reacting positively to the treatment.",
								"The symptoms are not undeniable, though.",
								"However, the symptoms are not undeniable.",
								"He is slowly regaining consciousness, and I think his vital signs will be back to normal within hours."
							}
						}
					}
				},
				Play_doc_nmh_run_06 = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					duration = 20,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"This patient has a blood pressure of 119 over 80.",
								"This patient has a blood pressure of 117 over 79.",
								"This patient has a blood pressure of 115 over 78.",
								"This patient has a blood pressure of 114 over 77.",
								"This patient has a blood pressure of 112 above 75.",
								"This patient has a blood pressure of 104 over 73.",
								"This patient has a blood pressure of 98 over 61.",
								"This patient has a blood pressure of 96 over 72.",
								"This patient has blood pressure of 95 over 66."
							},
							{
								"We'll have to keep him in isolation a while longer, but he'll have recovered soon.",
								"He has to stay isolated a little longer, but he will be okay.",
								"He is currently recovering and can be moved from the ICU quite soon.",
								"He won't have to remain under medical treatment for too long.",
								"While he isn't fully diagnosed yet, I am confident that he will be fully recovered shortly.",
								"He is responding well to the treatment, and will be out of the hospital in a matter of days."
							}
						}
					}
				},
				Play_doc_nmh_run_07 = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					duration = 20,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"This patient has a blood pressure of 119 over 80.",
								"This patient has a blood pressure of 117 over 79.",
								"This patient has a blood pressure of 115 over 78.",
								"This patient has a blood pressure of 114 over 77.",
								"This patient has a blood pressure of 112 above 75.",
								"This patient has a blood pressure of 104 over 73.",
								"This patient has a blood pressure of 98 over 61.",
								"This patient has a blood pressure of 96 over 72.",
								"This patient has blood pressure of 95 over 66."
							},
							{
								"The sepsis in him is causing acute encephalitis.",
								"If I didn't know better, I'd say he is showing signs of early stage rabies.",
								"He is suffering from a combination of symptoms that I've never encountered before.",
								"Lately, he's been complaining about a headache, and has high fever. He's progressing into delirium."
							},
							{
								"We have reason to believe his condition is highly contagious, so he definitely stays in the ward.",
								"He has to remain isolated and we need to keep testing. Chest x-rays, stool analysis, spinal fluids...",
								"We have to keep him in isolation indefinitely and keep testing. Blood tests, urine, sputum cultures...",
								"Whatever he has, I suspect that it's airborne, so he stays in isolation."
							}
						}
					}
				},
				Play_doc_nmh_run_08 = {
					override_name = "Dr. Schneider",
					category = "mission_dialogue",
					duration = 20,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"This patient has a blood pressure of 119 over 80.",
								"This patient has a blood pressure of 117 over 79.",
								"This patient has a blood pressure of 115 over 78.",
								"This patient has a blood pressure of 114 over 77.",
								"This patient has a blood pressure of 112 above 75.",
								"This patient has a blood pressure of 104 over 73.",
								"This patient has a blood pressure of 98 over 61.",
								"This patient has a blood pressure of 96 over 72.",
								"This patient has blood pressure of 95 over 66."
							},
							{
								"The sepsis in him is causing acute encephalitis.",
								"If I didn't know better, I'd say he is showing signs of early stage rabies.",
								"He is suffering from a combination of symptoms that I've never encountered before.",
								"Lately, he's been complaining about a headache, and has high fever. He's progressing into delirium."
							},
							{
								"He's in a state of hypertensive emergency.",
								"His heart rate is abnormal.",
								"He has malignant hypertension.",
								"His heart rate is well above normal.",
								"His heart rate is well below normal.",
								"His resting heart rate is well above 140.",
								"His resting heart rate is 140.",
								"His resting heart rate is 130.",
								"His resting heart rate is 120.",
								"His resting heart rate is as high as 100, and rising steadily.",
								"His resting heart rate is 110.",
								"His heart rate is well below 30."
							}
						}
					}
				},
				l1n_a03 = {
					override_name = "Doctor",
					category = "mission_dialogue",
					priority = 10,
					line_variations = {
						standard_mode = {
							"Only employees are allowed here.",
							"I'm sorry. This area is only for personnel.",
							"Please. Only staff are allowed here.",
							"This area is staff only, I'm afraid."
						}
					}
				},

				--panic room
				Play_bnc_flt_01 = {
					category = "mission_dialogue",
					priority = 10,
					line_variations = {
						standard_mode = {
							"Get inside. It's straight ahead.",
							"[whistle] Hey, open up!"
						}
					}
				},
				Play_bnc_flt_02 = {
					category = "mission_dialogue",
					priority = 10,
					duration = 5,
					line_variations = {
						standard_mode = {
							"Gentlemen.",
							"They're here.",
							"You can go inside now. They're expecting you."
						}
					}
				},
				Play_dlr_flt_01 = {
					text = "Welcome. Put the money by the table.",
					duration = 5,
					category = "mission_dialogue",
					priority = 10
				},
				Play_dlr_flt_02 = {
					category = "mission_dialogue",
					priority = 10,
					duration = 5,
					line_variations = {
						standard_mode = {
							"You're messin' with me? Show me the money!",
							"Put your bag on the table, I'm waiting."
						}
					}
				},
				Play_dlr_flt_03 = {
					category = "mission_dialogue",
					duration = 6,
					priority = 10,
					override_name = "Gangster",
					override_text_color = ClosedCaptions.color_data.mobster1,
					text = "I'll get my main man Chavez to hook you guys up. You guys 'ang around.",
					line_variations = {
						standard_mode = {
							"I'll get my main man Chavez to hook you guys up. You guys 'ang around.",
							"I'll get my main man Chavez to fetch you guys' shipment. You guys 'ang around."
						}
					}
				},
				Play_ths_flt_01 = {
					category = "mission_dialogue",
					duration = 6,
					priority = 10,
					text = "Stay back, bro! You're not allowed past this point.",
					line_variations = {
						standard_mode = {
							"Don't take another step! You need to wait downstairs.",
							"Stay back, bro! You're not allowed past this point."
						}
					}
				},
				lt1_aes = {
					category = "mission_dialogue",
					priority = 10,
					line_variations = {
						standard_mode = {
							"The fuck is happening?!",
							"Are they cops? They're fucking cops!",
							"What the fuck is this?!",
							"Oh, fuck me sideways!",
							"Who let them in, eh, what the fuck?",
							"Shit!",
							"What are you doing here?!",
							"You the fuck said you could come in here?!",
							"Fuck!",
							"Who the hell do you think you are?",
							"Who is this, who the fuck are you?!"
						}
					}
				},
				lt2_aes = {
					category = "mission_dialogue",
					duration = 6,
					priority = 10,
					text = "The fuck is this?!",
					line_variations = {
						standard_mode = {
							"Who let them in?! What the fuck!",
							"What the fuck's happening?!",
							"Son of a fucking bitch!",
							"What the FUCK?!",
							"Fuck you think you're doin', man?!",
							"Fuck!",
							"Are they cops?! Are they fucking cops?!",
							"Shit!",
							"Who the fuck said you could come in?!",
							"Fuckin' A!",
							"Who the hell are you?!",
							"What the fuck is this!?"
						}
					}
				},
				
		--counterfeit
				Play_bkn_pal_01 = {
					override_name = "Sunbathing Party Guest",
					category = "mission_dialogue",
					priority = 37,
					text = "Ugh, what are you looking at?",
					line_variations = {
						"Ugh, what are you looking at?",
						"Get out of there, you're blocking the sun...",
						"Get out of there, you're blocking the sun!"
					}
				},
				Play_bkn_pal_02 = {
					override_name = "Sunbathing Party Guest",
					category = "mission_dialogue",
					text = "Get me some tanning lotion.",
					priority = 37,
					override_text_color = ClosedCaptions.color_data.neutral1, --this field is necessary for when voicelines are set to play through a source that is not a unit's sound() extension 
					line_variations = {
						"Get me some tanning lotion, will ya?",
						"Get me some tanning lotion, baby.",
						"Get me some tanning lotion."
					}
				},
				Play_bkn_pal_03 = {
					override_name = "Party 'Guest'",
					category = "mission_dialogue",
					text = "You should get us some weed, too.",
					priority = 37,
					override_text_color = ClosedCaptions.color_data.neutral1,
					line_variations = {
						"[flirtatious] Ooh, you should totally get us some weed, as well.",
						"Oh, and you should probably get us some weed, too."
					}
				},
				Play_bkn_pal_04 = {
					override_name = "Party 'Guest'",
					category = "mission_dialogue",
					text = "Mitchell, can we go shopping again?",
					priority = 37,
					line_variations = {
						standard_mode = {
							"Hey, Mitchell, can I go shopping again?",
							"Mitchell, can we go shopping again?"									
						}
					}
				},
				Play_bkn_pal_05 = {
					override_name = "Party 'Guest'",
					category = "mission_dialogue",
					text = "Mitchell, fix the pool, already!",
					priority = 37,
					line_variations = {
						standard_mode = {
							"Hey, Mitchell? When will the pool be ready?",
							"Fix that pool! I wanna take a swim!",
							"Fix that pool! I wanna take a swim! YESTERDAY!",
							"Mitchell! Get that pool fixed, okay?"
						}
					}
				},
				Play_mch_pal_01 = {
					override_name = "Mitchell",
					category = "mission_dialogue",
					text = "How do I make my money? Uh...",
					priority = 37,
					max_distance = 4000,
--					duration = 10,
					line_variations = {
						standard_mode = {
							"How do I make my money? ...publishing. [nervous chuckle] Yeah, publishing...",
							"I'm a self-made millionaire. When I run dry, well... I just make another million.",
							"[pensive] How do I make my money? Well, you could say I make a lot of it.",
							"[pensive] How do I make my money? Well, let's just say... let's just say I make a lot of it.",
							"You know wanna know how I make my money? Hard work. Right through the night.",
							"My money comes from... well, a sort of trust fund. I'd let you in, but... I don't trust you.",
							"Eh, my work is pretty dull, like a machine, but it pays well.",
							"How do I make my money? I just keep pressing. Yeah."
						}
					}
				},
				Play_mch_pal_02 = {
					override_name = "Mitchell",
					category = "mission_dialogue",
					text = "[boasting about his money]",
					priority = 37,
					max_distance = 4000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Yeah, yeah. The way I see it, I really wanted it, so I really deserved it, too. You know?",
								"Eh, I kinda like what I do, you know? And when I'm creative, I feel like I'm on top of the world, really, because, you know, how many guys can do what I do?",
								"Ever since I was a little kid, I always wanted to be a player.",
								"And I had this guy come up, you know, he wanted to buy the whole thing, but... I said, 'It's just money. it's not 'me,' you know?",
								"It was really just a matter of getting all my ducks in a row, you know?",
								"Getting all the pieces in place wasn't hard.",
								"Listen, you know, getting paid to do something you love? It's a dream, man.",
								"Making money ain't that hard."
							},
							{									
								"And you know, for a while, making money wasn't the problem- spending it was.",
								"You can make opportunities, but you need also to know when to swing for that once in a lifetime chance... and I. Swung. HARD.",
								"And when I cashed out, every other asshole did the same thing. But I was smart. First out of the game. Made a million bucks in a flash.",
								"But making money ain't about hard work. It's about knowing when to call your banker and say, 'sell.'",
								"Man, I love the smell of a fresh $100 bill, you know?",
								"I cashed OUT! Made a fucking million! two million! [scoffs] More!",
								"You see that movie where the guy has to spend like a billion dollars in a day? Something like that. Well, that motherfucker was me!",
								"For a while there, I was earning more per hour than the Benevolent Bank."
							}
						}
					}
				},
				Play_mch_pal_03 = {
					override_name = "Mitchell",
					category = "mission_dialogue",
					text = "[boasting about expensive hookers]",
					priority = 37,
					max_distance = 4000,
					line_variations = {
						standard_mode = {
							"I could have put the money in real estate. Instead, I'm putting it in real ASState.",
							"This is just one of the properties. I mean, of course, it's just a small thing I picked up on my way here once. You know, two or three years ago, whatever.",
							"These chicks... do you know how much that is, each day? But hey, it's worth it.",
							"We're gonna sail around the world. You see the boat over there? You know, put out a mil' for it. I dunno. Maybe we'll put it out to see this year. Eh, we'll see.",
							"...and I realized, what use is money if you ain't rollin' it up and sniffing powder off a hooker's ass?",
							"It's Mitchell! MITCHELL! Mitch! Ell! Now lemme hear you say it!",
							"So then I said to him, 'It's Mitchell! MITCHELL! Not 'Michelle'! I'm not fucking Canadian!",
							"All this ass around here. You know how much that is? But, uh... they're worth it. I mean, they can DANCE. And by 'dance'..."
						}
					}
				},
				Play_mch_pal_04 = {
					override_name = "Mitchell",
					category = "mission_dialogue",
					text = "[boasting about The King]",
					priority = 37,
					max_distance = 4000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"The King leans over, he says: 'Two for you, two for me.', You know, he's talking about super models, sweet sweet love.",
								"The king was the Top Dog! The Big Kahuna! The fucking KING, man!",
								"You know The King, right? Well if you need to ask, you don't know him.",
								"One supermodel on the 'D', another supermodel mixin' me a fine 'G&T'.",
								"Bought an original Gustav. The King rolled it and used powder to snort off of this hooker's ass. You know?",
								"I had myself a new Falcogini. Scratched it up driving out of a Time-Out!, left it by the road and walked away. [chuckles] Ain't no-one got time for a scratched up ride!",
								"The King.. you know The King. Man, that fat bastard sure loved to snort blow.",
								"Oh, you know me and the King? Yeah, we flew around town, picked up chicks left and right. You know? I was paying for most of the stuff, obviously."
							},
							{
								"This was the sort of shit that only money brings. It's a lifestyle!",
								"It was like that, from the moment we woke. All day, every day. Hookers and blow, hookers and blow.",
								"We rolled the year back! It was like '69 on the strip! The Caddy was low-riding 'cause of all the ass in the back.",
								"The King looks over and winks.",
								"That's how we rolled!",
								"Yeah, he was The King, but I was the fucking Caesar, you know?",
								"I mean, hey, he was royalty, you know?",
								"You gotta be a player, but you gotta rig the game, man!",
								"It was like the fucking 70s, man, you know? Blow, hookers... we had everything."
							},
							{
								"Fucking Homeric, man!",
								"Great days, you know?",
								"Out fucking standing!",
								"EPIC days.",
								"The times are a ragin', yeah?",
								"What a time to be alive.",
								"OVERKILL, man!",
								"Rocked my soul, you know?"
							}
						}
					}
				},
				Play_mch_pal_05 = {
					override_name = "Mitchell",
					text = "You guys are dressed pretty sharply for pool repairmen. I guess you got your overalls in those bags. I'll show you the leak.",
					priority = 10,
					max_distance = 4000,
					category = "mission_dialogue",
					override_text_color = ClosedCaptions.color_data.neutral1,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"You guys are dressed pretty sharply for pool repairmen. I guess you got your overalls in those bags.",
								"Pretty well dressed for repair guys. I guess you'll change before getting to work, huh?",
								"Pretty sharp threads for pool repair guys. [to party guests] Guys, hang on, I gotta show these guys down to the basement. [to heisters]"
							},
							{
								"Come with me.",
								"Follow me.",
								"I'll show you the leak."
							}
						}
					}
				},
				Play_mch_pal_06 = {
					override_name = "Mitchell",
					text = "It's just down here.",
					priority = 10,
					max_distance = 4000,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"It's just down here.",
							"Watch your step down here.",
							"Alright, down here."									
						}
					}
				},
				Play_mch_pal_07 = {
					override_name = "Mitchell",
					duration = 7,
					priority = 10,
					max_distance = 4000,
					text = "See those pipes, leaking down the walls! It's fucked! This is a $10,000 carpet!",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"You see it? Water, fuckin' running down the wall! Totally fucked, man!",
							"There! Fuckin' pissing all down the wall!",
							"Alright, you see those pipes? You know, leaking down the wall? Fucked!"
						}
					}
				},
				Play_mch_pal_08 = {
					override_name = "Mitchell",
					text = "Hey, I'm not paying you guys to hang around! Get down there!",
					priority = 10,
					max_distance = 4000,
					category = "mission_dialogue",
					duration = 7,
					line_variations = {
						standard_mode = {
							"Hey, I'm not paying you guys to hang around! Get down there!",
							"Hey, I'm not paying you guys to hang around! Get the FUCK down in the basement!",
							"Hey, stop scratching your balls and get down here!"
						}
					}
				},
				Play_mch_pal_09 = {
					override_name = "Mitchell",
					text = "Fix it, already!",
					category = "mission_dialogue",
					priority = 10,
					duration = 20,
					max_distance = 4000,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"C'mon, just do your thing and do it right.",
								"Look at this carpet! Just fucked, man!",
								"This is a $10,000 carpet, man, fix it!"
							},
							{
								"Alright. I got steaks on the barbie, chicks in the pool, no action. Come see me when you guys are done, okay?",
								"Alright, I gotta get back to the steaks. You know, it's like a hundred dollars a pop up there. Come see me when you're done, okay? And hurry up.",
								"Listen, the chicks wanna take a swim! Hurry the fuck up!",
								"The party's waiting for you jokers to fix your shit, okay?"
							}
						}
					}
				},
				Play_mch_pal_10 = {
					override_name = "Mitchell",
					text = "I hope it's free service.",
					priority = 10,
					max_distance = 4000,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"And I don't wanna see no bills written up for this.",
							"[annoyed] Oh, guys? I hope it's free service.",
							"And don't think about billing me for this shit."
						}
					}
				},
				Play_mch_pal_11 = {
					override_name = "Mitchell",
					text = "Aw, fuck!",
					priority = 10,
					max_distance = 2000,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Oh, fuck!",
							"Okay, you got me, you got me good.",
							"[groans] Shit! I guess I had it coming."
						}
					}
				},
				Play_mch_pal_12 = {
					override_name = "Mitchell",
					text = "Play_mch_pal_12",
					category = "mission_dialogue",
					max_distance = 2000,
					priority = 10,
					line_variations = {
						standard_mode = {
							"[groans, scoffs] 'Bodhi's Pool Repair'... Fuck, I should've known!",
							"It's the Feds, man! ...isn't it?",
							"[groans] COME ON!",
							"Shit! How did they get to us?",
							"I had a bad feeling about these guys.",
							"What gave us away?"
						}
					}
				},
				Play_mch_pal_13 = {
					override_name = "Mitchell",
					text = "Fucking clowns!",
					priority = 10,
					max_distance = 2000,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Fucking clowns! You shouldn't be here!",
							"[angry laugh] Fucking clowns!",
							"[angry laugh]"
						}
					}
				},
				Play_bqg_pal_01 = {
					override_name = "Party 'Guest'",
					text = "It's only $10,000 a day.",
					priority = 37,
					max_distance = 2000,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[flirtatious] C'mon, you can afford it, I'm sure!",
							"[sultry] Yeah, it's $10,000 a day.",
							"[sultry] Yeah, it's only $10,000 a day."
						}
					}
				},
				Play_bqg_pal_02 = {
					override_name = "Party 'Guest'",
					text = "You don't want us to leave, do you?",
					priority = 37,
					max_distance = 2000,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"You don't want us to... leave, do you? We're having so much fun together!",
							"You don't want us to leave, do you?"
						}
					}
				},
				Play_bqg_pal_03 = {
					override_name = "Party 'Guest'",
					text = "When these plumbers are gone, we can get this party started for real!",
					category = "mission_dialogue",
					priority = 37,
					max_distance = 2000,
					duration = 6,
					line_variations = {
						standard_mode = {
							"When these plumbers are gone, we can get this party started for real!",
							"Once pool fixers are gone, we can get this party started for real!"
						}
					}
				},
				Play_bqg_pal_04 = {
					override_name = "Party 'Guest'",
					text = "I'm fed up waiting for that meat!",
					category = "mission_dialogue",
					priority = 37,
					max_distance = 2000,
					duration = 6,
					line_variations = {
						standard_mode = {
							"I'm fed up waiting for that meat!",
							"[impatiently] Will those steaks ever be ready?",
							"Hey Mitchell?! I said 'medium rare', not 'well done'! How long could it take?!"
						}
					}
				},
				Play_cm1_pal_01 = {
					override_name = "Party 'Guest'",
					category = "mission_dialogue",
					duration = 6,
					max_distance = 2000,
					priority = 37,
					text = "My friend wants another $10k for the party supplies.",
					line_variations = {
						standard_mode = {
							"She, uh, wants another $10k to do... that thing.",
							"Hey, uh, my buddy has the blow. Wants $10k for it.",
							"THAT chick? She'll do it, but wants another $10k."
						}
					}
				},
				Play_cm1_pal_02 = {
					override_name = "Party 'Guest'",
					category = "mission_dialogue",
					duration = 6,
					max_distance = 2000,
					priority = 37,
					text = "Someone's gonna notice all this spending.",
					line_variations = {
						standard_mode = {
							"Someone's gonna notice all this spending.",
							"Oh, we shouldn't have spent so much money so quickly...",
							"We're pissing a lot of cash. Someone's gonna notice."
						}
					}
				},
				Play_cm1_pal_03 = {
					override_name = "Party 'Guest'",
					category = "mission_dialogue",
					text = "Yeah, so... anyway...",
					priority = 37,
					max_distance = 2000,
					duration = 5,
					line_variations = {
						standard_mode = {
							"Yeah, so... anyway...",
							"[groans] Shit...",
							"Man..."
						}
					}
				},
				Play_cm2_pal_01 = {
					override_name = "Mitchell's friend",
					category = "mission_dialogue",
					text = "It's all in the basement, man. Go on, help yourself.",
					priority = 37,
					max_distance = 2000,
					duration = 5,
					line_variations = {
						standard_mode = {
							"It's all in the basement, man. Go on, help yourself.",
							"Downstairs, brother. Go get a loan.",
							"It's all in the base. Man, c'mon, help yourself."
						}
					}
				},
				Play_cm2_pal_02 = {
					override_name = "Mitchell's friend",
					category = "mission_dialogue",
					text = "Play_cm2_pal_02",
					priority = 37,
					max_distance = 2000,
					duration = 5,
					line_variations = {
						standard_mode = {
							"It's free money, brother!",
							"It's not like we, uh... can't get more, right?",
							"Hey, stay cool, brother!"
						}
					}
				},
				Play_pil_pal_01 = {
					text = "Who are those people?",
					category = "mission_dialogue",
					priority = 37,
					max_distance = 1000,
					line_variations = {
						standard_mode = {
							"[Russian accent] What the hell are you doing here?",
							"[Russian accent] Who the fuck are those people?",
							"[Russian accent] Who are those people?",
							"[Russian accent] You better hurry up and fix that leakage!",
							"[Russian accent] You better hurry up and fix that leakage... [mujik]!"
						}
					}
				},
				Play_pil_pal_02 = {
					text = "Somebody fetch me a drink.",
					category = "mission_dialogue",
					priority = 37,
					max_distance = 1000,
					line_variations = {
						standard_mode = {
							"[Russian accent] Somebody fetch me a drink.",
							"[Russian accent] Do you have anything stronger, 'homie'?"
						}
					}
				},
				Play_pil_pal_03 = {
					text = "[angry Russian]",
					priority = 37,
					max_distance = 1000,
					category = "mission_dialogue"
				},
				cft_piano_music = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					max_distance = 700,
					text = "[classical piano music]"
				},
				
		--undercover		
				Play_txm_man_01 = {
					override_name = "Taxman",
					category = "mission_dialogue",
					priority = 10,
					text = "It's close by, but I want to see the funds.",
					line_variations = {
						standard_mode = {
							"It's close by, but I want to see the funds.",
							"It's... it's somewhere close, but I want to see the funds.",
							"It's... it's somewhere close. I want to see the funds.",
							"It's nearby. Can I see the funds?"
						}
					}
				},
				Play_txm_man_02 = {
					override_name = "Taxman",
					category = "mission_dialogue",
					priority = 10,
					text = "Great. I'll go get the server.",
					line_variations = {
						standard_mode = {
							"Nice. I'll get the server.",
							"Excellent. I'll get the server.",
							"Great. I'll go get the server."
						}
					}
				},
				Play_txm_man_03 = {
					override_name = "Taxman",
					category = "mission_dialogue",
					priority = 10,
					text = "Where are you taking me?",
					line_variations = {
						standard_mode = {
							"Huh? Where the fuck am I?",
							"Where are you taking me?"
						}
					}
				},
				Play_txm_man_04 = {
					override_name = "Taxman",
					category = "mission_dialogue",
					priority = 10,
					text = "No, I won't move! Too much shooting!",
					line_variations = {
						standard_mode = {
							"No, I won't move! Too much shooting!",
							"No! Too much firing!",
							"No! I'm afraid!",
							"They're shooting at me!",
							"No, there's too much shooting!"
						}
					}
				},
				Play_txm_man_05 = {
					override_name = "Taxman",
					priority = 10,
					category = "mission_dialogue",
					text = "I know what you guys are after, but I won't give it to you."
				},
				Play_txm_man_06 = {
					override_name = "Taxman",
					text = "Resisting interrogation",
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[teeth gritted in pain] Fuck you guys!",
							"[teeth gritted in pain] The Feds are here, you can fuck off!",
							"Hey, fuck you!",
							"Do your worst!",
							"Fuck you! Fuck ALL OF YOU!",
							"[laughs mockingly] It's binary! 101110010101001!",
							"I'll NEVER tell you!",
							"I'll never tell you!",
							"[groans in pain] Fuck... you!",
							"Nothing! I'll say NOTHING!",
							"[groans in pain] Fuck you!",
							"You won't get a WORD out of me!",
							"No fucking way!",
							"You won't make it anyway!",
							"[groans in pain] ...No!",
							"You'll never get out! Feds are everywhere!",
							"NO!",
							"No you won't! I ain't sayin' nada!"
						}
					}
				},
				Play_txm_man_07 = {
					override_name = "Taxman",
					text = "Giving in to interrogation",
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[weakly] Enough!",
							"[coughs] Okay! [continues coughing] Okay, okay...",
							"[hoarsely] Okay... easy, easy!"
						}
					}
				},
				Play_txm_man_08a = {
					duration = 6,
					override_name = "Taxman",
					priority = 10,
					category = "mission_dialogue",
					text = "The login... is MercyKill. Capital'M', capital 'K'."
				},
				Play_txm_man_08b = {
					duration = 7,
					override_name = "Taxman",
					priority = 10,
					category = "mission_dialogue",
					text = "The account is 'Starbreezer'! It's 'Starbreezer'! [gritting teeth in pain] FUCK!"
				},
				Play_txm_man_08c = {
					duration = 8,
					priority = 10,
					override_name = "Taxman",
					category = "mission_dialogue",
					text = "[hoarsely] The password is SYGON. All... capital letters. [groaning in pain] Agh, FUUUCK!"
				},
				Play_txm_man_09 = {
					override_name = "Taxman",
					text = "(interrogation resistance failing)",
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[groaning in pain] I won't... say... another... syllable!",
							"[groaning in pain] You won't get another WORD out of me!",
							"[groaning in pain] I told you too much already!",
							"[groaning in pain] You hit like a girl!"
						}
					}
				},
				Play_txm_man_10 = {
					override_name = "Taxman",
					text = "(being interrogated)",
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"No more!",
							"[cries out in pain]",
							"Guys, can't we work something out?",
							"Stop it!",
							"What? Just leave me alone!",
							"D-don't kill me!",
							"Please!"
						}
					}
				},
				Play_txm_man_11 = {
					override_name = "Taxman",
					text = "[burning alive]",
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[burning alive inside limo, pounding on doors]",
							"[muffled screaming]",
							"[screaming in excruciating pain]"
						}
					}
				},
				Play_txm_man_12 = {
					override_name = "Taxman",
					text = "[coughing]",
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[coughing]",
							"[violent coughing]",
							"[weakly coughing]"
						}
					}
				},
				Play_txm_man_13 = {
					override_name = "Taxman",
					category = "mission_dialogue",
					priority = 10,
					text = "[cries out in pain]"
				},
				
			--hoxton revenge
				Play_hct_hb3_01 = {
					override_name = "The Rat",
					priority = 10,
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(finally, you're opening the timelock!)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Are you guys finally bringing me some real food, instead of these fried pig assholes? I'm fucking starving in here!",
							"Finally! Did you bring me some magazines? There's not a whole lot to do in here.",
							"Goddammit, are you farting in the air supply? Can I come out now?"
						}
					}
				},
				Play_hct_hb3_02 = {
					override_name = "The Rat",
					priority = 10,
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(impatiently waiting for timelock)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Fuck the timelock! Let me out already, I need a goddamn smoke! [smoker's cough]",
							"Tick-tock... [scoffs] You fancy you endless layers of bullshit! I want some fresh air, dammit!",
							"[frustrated groan] Stupid timelock. You feds are paranoid motherfuckers. I'm tired of sitting in this fucking metal box."
						}
					}
				},
				Play_hct_hb3_03 = {
					override_name = ClosedCaptions.unit_names.hector_boss,
					override_text_color = ClosedCaptions.color_data.boss,
					priority = 10,
					text = "No... it can't be you!",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"No... it can't be you!",
							"How did you...?! Cocksuckers!",
							"Oh, shit... it's YOU!"							
						}
					}
				},
				Play_hct_hb3_04 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					priority = 10,
					text = "(swearing at heisters)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Alright then... I'll slit your fucking throats, you clown assholes!",
							"Oh, so the clowns have come to play? Well, I'm not scared! You're going to die here, you know!",
							"[singsong] Come to me, clowns... you think I'm scared of you?! Fuck you! [voice cracks] Fuck you!"					
						}
					}
				},
				Play_hct_hb3_05 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting heisters)",
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Time to say adios... adios to you! To that fuckface, Bain... say... 'ADIOS!'",
							"Time to say goodbye! You were useful... for a while. But now? ADIOS, clown fucks!",
							"It's a shame we had to part this way. You were good tools, I'll give you that. But in the end... just tools."
						}
					}
				},
				Play_hct_hb3_06 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					priority = 10,
					text = "Come! Come on! Open the door! I have a 'surprise' for you!",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Come! Come on! Open the door! I have a 'surprise' for you!",
							"Alright then! [deep sniffing] All fucking right then!",
							"You know, if you even manage to take this door down, I got a little surprise for you 'putas'!"
						}
					}
				},
				Play_hct_hb3_07 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					priority = 10,
					text = "HEEEEERE'S HECTOR!",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"SAY 'HOLA' TO MY LITTLE FRIENDS!",
							"HEEEEEEE'S HECTOR!",
							"READY OR NOT, HERE I COME!"
						}
					}
				},
				Play_snippet_hb3_01 = {
					override_name = "Tape Recording",
					priority = 10,
					max_distance = 700,
					text = "(incriminating tape recording of The Rat)",
					category = "mission_dialogue",
					duration = 29,
					line_variations = {
						standard_mode = {
							"\nINTERVIEWER: [amused] Is it true? You're getting access to Crime.net?\nTHE RAT: Fuck you!\nINTERVIEWER: Are you familiar with Bain's crew, the PAYDAY clowns?\nTHE RAT: I've seen the news. First World Bank. Very impressive.\nINTERVIEWER: Well, Hector, maybe they've been giving the Bureau quite the headache. We can make good things happen for you IF...\nTHE RAT: [sighs]\nINTERVIEWER: ...you help us... to get closer to them.\nTHE RAT: Rat them out, you mean? What could you possibly offer me? [tape clicks off]"
						}
					}
				},
				Play_snippet_hb3_02 = {
					override_name = "Tape Recording",
					priority = 10,
					max_distance = 700,
					text = "(incriminating tape recording of The Rat)",
					category = "mission_dialogue",
					duration = 50,
					line_variations = {
						standard_mode = {
							"\nINTERVIEWER: I'm getting impatient, Hector. Look. I know you're connected to Bain. if you want this little 'arrangement' of ours to continue, you'd better give me something on the clowns.\nTHE RAT: Fuck you, dog.\nINTERVIEWER: This dog needs a bone. Or this dog will hump your leg, amigo.\nTHE RAT: [sighs] I can give you one of them, but that's all. I still need them to take care of a few things.\nINTERVIEWER: We want Dallas.\nTHE RAT: No. He's the leader. It'll have to be another. I'll be in touch.\nINTERVIEWER: It'd better be soon. Your ass is on the line here.\nTHE RAT: Yeah, yeah...\nINTERVIEWER: You wanna do time? I'll let every lowlife in Mount Olivet have a piece of your ass. [tape clicks off]"
						}
					}
				},
				Play_snippet_hb3_03 = {
					override_name = "Tape Recording",
					priority = 10,
					max_distance = 700,
					text = "(incriminating tape recording of The Rat)",
					category = "mission_dialogue",
					duration = 29,
					line_variations = {
						standard_mode = {
							"\nINTERVIEWER: We have him in custody.\nTHE RAT: The English one, yes?\nINTERVIEWER: Yes. They call him 'Hoxton.' Tough son of a bitch. Biting and spitting... almost got away!\nTheRat: That's him. ...Then I trust this matter is settled? You got what you wanted.\nINTERVIEWER: 'SETTLED?' Jesus Christ, Hector. Nothing is settled. This is only the start. Only a matter of time before the public demands the heads of ALL of these fucking clowns... And with your help, I intend to deliver. [tape clicks off]"
						}
					}
				},
				Play_snippet_hb3_04= {
					override_name = "Tape Recording",
					priority = 10,
					max_distance = 700,
					text = "(incriminating tape recording of The Rat)",
					category = "mission_dialogue",
					duration = 29,
					line_variations = {
						standard_mode = {
							"\nINTERVIEWER: You've had your fun. But it's over now, you hear? The Mendozas were on our payroll too, you know! You fucking piece of shit, you work for us, Hector! We OWN you! That rivalry shit gets left at the border! THE RAT: The Mendozas disrespected me! They deserved-\nINTERVIEWER: Jesus Christ, do you ever listen to yourself? The public wants blood, Hector! They want the PAYDAY Gang on death row, and if you don't wanna share a cell with those bastards, you'd better give me something I can work with! [tape clicks off]"
						}
					}
				},
				Play_snippet_hb3_05 = {
					override_name = "Tape Recording",
					priority = 10,
					max_distance = 700,
					duration = 23,
					text = "(incriminating tape recording of The Rat)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"\nTHE RAT: It's a white box van you'll be looking for. Meat truck. They'll be inside with the product.\nINTERVIEWER: Won't Bain be suspicious? It might look like a setup.\nTHE RAT: [sighs] I'm losing millions in product on this. He won't doubt me! You just worry about how you'll stop the clowns when they realize what's going on.\nINTERVIEWER: Don't worry, we'll have them completely surrounded. What're they gonna do? Try to shoot their way out? [tape clicks off]"
						}
					}
				},
				Play_snippet_hb3_06 = {
					override_name = "Tape Recording",
					priority = 10,
					max_distance = 700,
					duration = 45,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"\nINTERVIEWER: You heard about the incident at the Courthouse? [pause] They got Hoxton back.\nTHE RAT: [scoffs] And you let them waltz right into your fucking headquarters?! Do they know about me?\nINTERVIEWER: We're not stupid, Hector. Nothing points to you directly.\nTHE RAT: [exasperated sigh]\nINTERVIEWER: But if we allow them time to dig through all the data, they'll put two and two together, and they might figure out why that meat truck of yours was conveniently surrounded.\nTHE RAT: [groans] Shit! Putas! Fucking putas! They'll know!\nINTERVIEWER: Hector, we're running out of time. I've prepared a safehouse. It'll keep you protected while you work with my agents to build a case against the clowns. From what I've learned about them over the month, I'd say your life depends on it.\nTHE RAT: ...Putas. [tape clicks off]"
						}
					}
				},
			--first world bank
				Play_ism_fwb_01 = {
					override_name = "Insider",
					override_text_color = ClosedCaptions.color_data.neutral1,
					priority = 10,
					text = "You need to find another code. We can't use mine, or they'll know it was me.",
					category = "mission_dialogue",
					duration = 10,
					line_variations = {
						standard_mode = {
							"Uhhh, is this thing on? [pause] I can get you through the gates, but only after you find a four-digit keycode. We can't use mine, or they'll know it was me.",
							"Hello? [pause] I can open the gates, but we can't go using my code on the keypad. You need to find another.",
							"Can you hear me? [pause] The gates require a keycode. Can't use mine, or I'm dead, so you need to find a four-digit code."
						}
					}
				},
				Play_ism_fwb_02 = {
					override_name = "Insider",
					duration = 4,
					priority = 10,
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "Coming from Floor 2, heading to the gates. See you there." --no variations
				},
				Play_ism_fwb_03 = {
					override_name = "Insider",
					duration = 5,
					priority = 10,
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "[to guards] My clients are ready to enter the vault. You're not needed here right now. Go for a walk, or something.",
					line_variations = {
						standard_mode = {
							"[to guards] The manager asked me to tell you to do the rounds. I'll be here for a while. Go on, now.",
							"[to guards] My clients are ready to enter the vault. You're not needed here right now. Go for a walk, or something.",							
							"[to guards] You guys can take a smoke break, or grab a coffee. I'll be here for a while."
						}
					}
				},
				Play_ism_fwb_04 = {
					override_name = "Insider",
					duration = 5,
					priority = 10,
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "I'm waiting at the gates! Hurry up!",
					line_variations = {
						standard_mode = {
							"The guards are gone. Get to the gates!",
							"[impatiently] I'm waiting at the gates! Hurry up!",
							"Get over to the gates. Let's get this done.",
							"Right, the gates are clear. Get over here!",
							"Okay, I'm at the gates. Meet me there.",
							"Ready whenever you are. I'm at the gates.",
							"Hey, I'm at the gates. Get over here!"
						}
					}
				},
				Play_ism_fwb_05 = {
					override_name = "Insider",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 5,
					priority = 10,
					text = "The vault is just beyond here. You got that code?",
					line_variations = {
						standard_mode = {
							"Okay, the code will open these gates. The vault is on the other side.",
							"The gates protect the vault area. You have the code, right?",
							"The vault is just beyond here. You got that code?"
						}
					}
				},
				Play_ism_fwb_06 = {
					override_name = "Insider",
					override_text_color = ClosedCaptions.color_data.neutral1,
					duration = 4,
					priority = 10,
					category = "mission_dialogue",
					text = "Looks good.", --opened the gate
					line_variations = {
						standard_mode = {
							"It's an older code, but it checks out.",
							"So far so good!",
							"Looks good."
						}
					}
				},
				Play_ism_fwb_07 = {
					override_name = "Insider",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 5,
					priority = 10,
					text = "Looks good.", --opened the gate
					line_variations = {
						standard_mode = {
							"You're through. But I saw nothing, right?",
							"Okay. Time to get to the front, and act normal.",
							"It's open. And I didn't see anything.",
						}
					}
				},
				Play_ism_fwb_08 = {
					override_name = "Insider",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 5,
					priority = 10,
					text = "You guys all done? Alright. Follow me.",
					line_variations = {
						standard_mode = {
							"You guys all done? Alright. Follow me.",
							"Right. Follow me and we'll get you out. Hope you got what you wanted.",
							"So, that's it? You got what you came for? C'mon, follow me."
						}
					}
				},
				Play_ism_fwb_09 = {
					override_name = "Insider",
					duration = 10,
					priority = 10,
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "I guess that you... wait, wait, tell me nothing. I'm just an innocent bystander. This way.",
					line_variations = {
						standard_mode = {
							"[whisper] You got it? Nevermind, I don't want to know. Just... follow me.",
							"I guess that you... wait, wait, tell me nothing. I'm just an innocent bystander. This way.",
							"So did you... uhh, better not tell me. Less I know, you know? [pause] C'mon."
						}
					}
				},
				Play_ism_fwb_10 = {
					override_name = "Insider",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 6,
					priority = 10,
					text = "Alright. Head through the opposite office, and head down. C'mon, get out of here!",
					line_variations = {
						standard_mode = {
							"Through here. Through the next office, and work your way down. Good luck.",
							"Just head through here, and pass through the office on the other side. Make your way down to the basement. Hurry!",
							"Alright. Head through the opposite office, and head down. C'mon, get out of here!"
						}
					}
				},
				Play_ism_fwb_11 = {
					override_name = "Insider",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					text = "What?! Oh, come on! I'm out of here!",
					line_variations = {
						standard_mode = {
							"What the fuck! We didn't even get close...",
							"I- I didn't agree to this! And I'm out of here!",
							"What?! Oh, come on! I'm out of here!",
							
						}
					}
				},
				Play_ism_fwb_12 = {
					override_name = "Insider",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					text = "We were close, but... time to bail. [pause] I still get my cut, right?",
					line_variations = {
						standard_mode = {
							"We were close, but... time to bail. [pause] I still get my cut, right?",
							"We got pretty far, but... I gotta scram. [pause] You guys give me my cut later, right?"
						}
					}
				},
				Play_bm_fwb_01 = {
					override_name = "Bank Manager",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 8,
					priority = 37,
					max_distance = 1500,
					loop_data = {
						loop_interval = 10,
						loop_interval_min = 10,
						use_random_variations = true
					},
					text = "(talking on phone and being a dick in general)",
					line_variations = {
						standard_mode = {
							"So, uh, they took me into HR at the head office again. It turns out you can't tell a grandmother to suck a bag of- shit, they might be listening.",
							"She DOESN'T?! Well, how does she keep in touch with the rest of the world?",
							"Heyyy, good work on that report!",
							"Spent the weekend polishing the Longfellow. Took the chief's wife out for a spin. Let her polish the... [chuckles] You know it, man.",
							"Uh, how long did that report take? An hour? [pause] [intense voice] BILL 'EM FOR TEN.",
							"[condescendingly] A student comes in, looking to RENEGOTIATE their loan! [pause] I know! [laughs] What an idiot.",
							"First thing I did when that bailout came through was buy a Longfellow! Hey- I'm supporting the auto industry!",
							"Hey- you see that woman asking for a loan for the pasta restaurant? Sure would like to make a 'deposit' there! [sleazy laugh]",
							"Well... you know how it is. You smile, nod, tell them to sign on the dotted line, and you have their soul, bro!",
							"Yeah, yeah- [laughs] told them it was an 'accounting error!'",
							"Yeah, a loan for HEATING! So I said, 'can't the orphans just huddle closer together?'",
							"Told a guy who wanted a loan, we couldn't, under F.T.S. regulations. [pause] F.T.S.? 'Fuck. That. Shit!'"
						}
					}
				},
				Play_bm_fwb_02 = {
					override_name = "Bank Manager",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 8,
					priority = 37,
					max_distance = 1500,
					loop_data = {
						loop_interval = 10,
						loop_interval_min = 10,
						use_random_variations = true
					},
					text = "(talking on phone and being a dick in general)",
					line_variations = {
						standard_mode = {
							"I could give two shits about someone's college tuition! [pause] Well, if you give me $50,000 for shits...",
							"I don't care if your crippled kids have diph-fucking-theria!",
							"Look, you pay back the loan, or you lose the house! I mean it, Mom!",
							"Look, Mother Superior, you either pay the $300, or we're breaking your legs!",
							"You want charity? You're gonna get it! Cause you're headed right to welfare, sister!",
							"How many times do I have to tell you? We're a bank! We're not supposed to be 'trusted!'",
							"I think we can make more cuts, yeah. We don't need all these... [disdainfully] ...tellers. Who gives a rat's ass if people sit in a queue for an hour?",
							"Yes, I understand, we offered you those terms under the Veteran Program. But we no longer recognize the Vietnam 'Incident' as a real conflict."
							
						}
					}
				},
				Play_bm_fwb_03 = {
					override_name = "Bank Manager",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 8,
					priority = 37,
					max_distance = 1500,
					loop_data = {
						loop_interval = 20,
						loop_interval_min = 10,
						use_random_variations = true
					},
					text = "(talking on phone and being a dick in general)",
					line_variations = {
						standard_mode = {
							"Investing in banks is as safe as housing! And I mean nice housing, with bricks and everything!",
							"Well, I would describe my management style as... bringing new synergy to the... boardroom... dynamic... of parallel... styling.",
							"It's a pleasure to talk to the Financial Times in London! Oh, oh... London, Kentucky.",
							"Of course! We have a very diverse workforce! In fact, I just got out of a conference with our Latin division! [under breath] 'Empty the bin, Miguel,' I said.",
							"Our competitors were hit hard in the crunch, but we weathered most of it, since our chairman buried the money in his yard.",
							"Oh, yes, I assure your readers that the First World Bank is here to stay. We have strong investments in the Columbian submarine industry.",
							"I'm sorry, I can't comment on the rumors of investment from a Chinese bank. But I, for one, would welcome our Asian overlords.",
							"The financial world has never been healthier. We only laid off ten employees in the last day."
						}
					}
				},
				Stop_bm_fwb_01 = {
					stops_line = "Play_bm_fwb_01",
					category = "stops"
				},
				Stop_bm_fwb_02 = {
					stops_line = "Play_bm_fwb_02",
					category = "stops"
				},
				Stop_bm_fwb_03 = {
					stops_line = "Play_bm_fwb_03",
					category = "stops"
				},
				Play_be2_fwb_01 = {
					max_distance = 700,
					duration = 7,
					override_name = "Bank Customer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "(customer asking for funding for awful ideas)",
					loop_data = {
						loop_interval = 0.5
					},
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Damn! Was kinda bankin on you sayin' 'yeah.'",
								"Uh! Oh, uh! You sure I can't change your mind? What if you, uh... [spooky, hypnotic voice] look into my eyes...",
								"Was bankin' on you sayin' 'yes'... I'll try again later.",
								"You're missin' out on a golden opportunity!",
								"This coulda been your chance to make at least... uh... a billion dollars!",
								"Oho, you're sure? Cause... I kinda spent the money already.",
								"I was hopin' you'd say 'yes.' The money could get my underwear back.",
								"I think you're pissin' up the wrong tree here."
							},
							{
								"\nBANK EMPLOYEE: I appreciate that times are difficult- First World Bank truly does- but with regret, we cannot sanction a loan of $10,000 on a promise to pay it back when... Fat Pat's insurance comes through.",
								"\nBANK EMPLOYEE: Unfortunately, we cannot extend your credit line to cover incidental costs like, uh... hookers and blow.",
								"\nBANK EMPLOYEE: Unfortunately, I have doubts that you're serious about your plan to market and manufacture something like... 'Fart Crackers.",
								"\nBANK EMPLOYEE: I'm sorry, but I don't think there's much demand for Confederate flag bedsheets.",
								"\nBANK EMPLOYEE: I'm sorry, we're not able to offer unguided tours of the premises. And especially not 'the room where all the money's kept.'",
								"\nBANK EMPLOYEE: I'm sorry... no. I don't think the pigs would appreciate that. Even if they're dead.",
								"\nBANK EMPLOYEE: [embarrassed chuckle] Uh, no, this isn't that kind of bank. I think you want the one attached to the hospital. Or that bar down the road.",
								"\nBANK EMPLOYEE: What if I come back... and bring salsa?",
								"\nBANK EMPLOYEE: I'm afraid not. We cannot sanction a loan to buy out our bank."
							}
						}
					}
				},
				Stop_be2_fwb_01 = {
					stops_line = "Play_be2_fwb_01",
					category = "stops"
				},
				Play_mc1_fwb_01 = {
					text = "(customer asking for funding for awful ideas)",
					override_name = "Bank Customer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					duration = 7,
					category = "mission_dialogue",
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"So, business plan to observe myself eating lobster and drinking champagne for 60 years? It's a 'no?' Not even for science?",
								"Now- now, if I understand you, you don't wanna give me some money to provide capital for an operation to run smokes outta Mexico?",
								"Now- now, if I understand, as it pertains to my business idea for free bar for my friends... your answer is 'no?'",
								"So, lemme get this straight. I want to build a tower to the moon, and you're sayin' 'no?'",
								"So lemme get this straight. You're not interested in funding my idea for a TV show: 'Big Brother?'",
								"Okay, lemme get this straight. You ain't gonna loan me the money to turn my car into a submarine?",
								"So... you're sure? You don't wanna invest in a campaign to make bananas less banana-shaped?",
								"So what you're telling me is... if I have this straight... what you're sayin' is, you ain't investin' in a pager business?",
								"So, it's a 'no' on a loan to buy a salad bar called 'Boogers?'"
							},
							{
								"Listen. To. My. Lips. 'NO.'",
								"[impatient] Please, step away.",
								"[sarcastic] Tempting! ...But, no.",
								"Have you considered asking at Harvest&Trustee?",
								"[exasperated] For the thousandth time... we're not interested.",
								"[clipped tone] Yes. But no. Very definitely 'no.'",
								"Perhaps you should apply at the Benevolent Bank.",
								"Have you tried Roberts?"
							}
						}
					},
					loop_data = {
						loop_interval = 0.5
					}
				},
				Stop_mc1_fwb_01 = {
					stops_line = "Play_mc1_fwb_01",
					category = "stops"
				},

--big bank				
				teller_customer_dialog_approve = {
					text = "(civilian's grant request approved by teller)",
					override_name = "Bank Teller",
					category = "civilian_dialogue",
					priority = 40,
					max_distance = 500, --these are actually really irritating and large so i reduced the range from 1500
					duration = 35,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Hi!",
								"Hello!",
								"Welcome!"
							},
							{
								"How may I be of assistance?",
								"How can I be of help?",
								"How may I help you?",
								"What's your business today?"
							},
							{
								"\nCUSTOMER: How's it going? I need three hundred thousand dollars, for my time machine research project.",
								"\nCUSTOMER: Hello, ma'am, I need a loan for three hundred grand cause I wanna start a white shark petting zoo.",
								"\nCUSTOMER: Yeah, hi ma'am. I need three hundred thousand because I'm gonna build an Olympic standard high diving pool inside my apartment. [pause] And... open it up for the public.",
								"\nCUSTOMER: Hey, I got a private space program going, and I just need a couple of hundred thousand dollars, and then I can put the first American on the sun!",
								"\nCUSTOMER: Yeah, hello! I'm looking for a loan of three hundred thousand so I can build solar road... around my block!",
								"\nCUSTOMER: [clears throat] Hello. I need three hundred, because I'm developing a lightsaber.",
								"\nCUSTOMER: Hi! I was thinking... I want to borrow three hundred thousand dollars to buy gas, and then later, when the gas prices have gone up... I'll sell it! At a profit!"
							},
							{
								"\nBANK TELLER: Oh...",
								"\nBANK TELLER: Um,",
								"\nBANK TELLER: Umm...",
								"\nBANK TELLER: Hm. Um..."
							},
							{
								"I must say. This... sounds like a fantastic project!",
								"that sounds like a brilliant idea!",
								"brilliant. This is definitely something we can grant a loan for."
--								"I regret to inform you that you'll have to find backing for this enterprise elsewhere.", --i think this variation was not meant to be here but oh well
							},
							{
								"\nCUSTOMER: Okay, that's so cool!",
								"\nCUSTOMER: Wonderful! That'll shut up my non-believer friends!",
								"\nCUSTOMER: I can't believe it! That's great!",
								"\nCUSTOMER: Right on, nice!",
								"\nCUSTOMER: [relieved laugh] And to think I'd almost given up on this idea!"
							},
							{
								"\nBANK TELLER: I'll book a meeting for you, so that you can talk more about this with one of my colleagues.",
								"\nBANK TELLER: I'll set you up for a meeting with one of my associates.",
								"\nBANK TELLER: I'll set up a meeting so that you can talk more about this with my colleagues.",
								"\nBANK TELLER: I'll set up a meeting where we can go over these great ideas of yours.",
								"\nBANK TELLER: We'll set up a meeting where we can go over this idea of yours.",
								"\nBANK TELLER: Let's set up a meeting so that you can explain your idea in greater detail."
							}
						}
					}
				},
				teller_customer_dialog_deny = {
					text = "(civilian's grant request rejected by teller)",
					category = "civilian_dialogue",
					override_name = "Bank Teller",
					priority = 40,
					max_distance = 500,
					duration = 35,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Hi!",
								"Hello!",
								"Welcome!"
							},
							{
								"How may I be of assistance?",
								"How may I help you?",
								"What's your business today?"
							},
							{
								"\nCUSTOMER: How's it going? Uh, I need three hundred thousand dollars, for my time machine research project.",
								"\nCUSTOMER: Hi, I need a loan for three hundred grand cause I wanna start a white shark petting zoo.",
								"\nCUSTOMER: Yeah, hi ma'am. I need three hundred thousand because I'm gonna build an Olympic standard high diving pool inside my apartment. [pause] And... open it up for the public.",
								"\nCUSTOMER: Hey, I got a private space program going, and I just need a couple hundred thousand dollars, and then I can put the first American on the sun!",
								"\nCUSTOMER: Uh, hello! I'm looking for a loan of three hundred thousand so I can build solar road... around my block!",
								"\nCUSTOMER: [clears throat] Hello. I need three hundred, because I'm developing a lightsaber.",
								"\nCUSTOMER: Hi! I was thinking... I want to borrow three hundred thousand dollars to buy gas, and then later, when the gas prices have gone up... I'll sell it! At a profit!"
							},
							{
								"\nBANK TELLER: Oh...",
								"\nBANK TELLER: Um,",
								"\nBANK TELLER: Umm...",
								"\nBANK TELLER: Hm. Um..."
							},
							{
								"unfortunately, that doesn't sound like something this bank would like to be involved in.",
								"sorry, that doesn't sound like something we would grant a loan for.",
								"I regret to inform you that you'll have to find backing for this enterprise elsewhere.",
								"sorry. That's not something we can support."
							},
							{
								"\nCUSTOMER: Uh huh. Alright.",
								"\nCUSTOMER: Oh, okay. Thanks anyway.",
								"\nCUSTOMER: [disappointed] Well, okay.",
								"\nCUSTOMER: Well... alright. Bye.",
								"\nCUSTOMER: [disappointed] Alright, then.",
								"\nCUSTOMER: Okay, uh huh. [dejected] See ya."
							},
							{
								"\nBANK TELLER: [sincerely] Have a good day.",
								"\nBANK TELLER: Have a great day.",
								"\nBANK TELLER: Bye!",
								"\nBANK TELLER: [sarcastic] ...buh-bye."
							}
						}
					}
				},
				teller_bank_next = {
					text = "(Next customer, please.)",
					category = "civilian_dialogue",
					override_name = "Bank Teller",
					priority = 40,
					max_distance = 500,
					duration = 4,
					line_variations = {
						standard_mode = {
							"Next.",
							"Next?",
							"Next, please!",
							"Next, please."
						}
					}
				},
				big_bank_phone_call = {
					text = "phone ringing!",
					category = "sfx",
					override_name = "SFX",
					priority = 40,
					max_distance = 3000,
					loop_data = {
						loop_interval = -1
					}
				},
				big_bank_phone_call_pickup = {
					text = "phone answered",
					override_name = "SFX",
					category = "stops",
					stops_line = "big_bank_phone_call",
					priority = 40
				},
				Play_gensec_conversation_ending_1 = {
					override_name = "Phone Call",
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"\nBAIN: Good afternoon! This is the Benevolent Bank! You're speaking to Martin!",
								"\nBAIN: Good afternoon! Benevolent Bank! Martin speaking!",
								"\nBAIN: Good afternoon! You're through to the benevolent! This is Martin!"
							},
							{
								"\nJEN: Jen over at GenSec here. So, we detected an unscheduled activation of the timelock there. Everything okay?",
								"\nJEN: This is Jen at GenSec. Our systems picked up an unscheduled activation of your timelock.there  I'm just calling to confirm everything is fine?",
								"\nJEN: Hi, this is Jen, I'm calling from over at GenSec. We registered an unscheduled activation of the timelock, I'm just calling to make sure everything is alright?"
							},
							{
								"\nBAIN: Oh! What, really? The schedule says... uh... Goddammit! You know... You know, someone screwed up the schedule. Anyway, yeah, everything is fine here. Thanks for being so diligent.",
								"\nBAIN: We had a schedule conflict. Major accountholder showed up a day early. A big account from, uh... Mumbai.",
								"\nBAIN: Oh, yeah. the manager was showing the system to his new assistant. An early bit of key and lock, he calls it.",
								"\nBAIN: You don't say? Well, according to the schedule- aww, goddammit, looks like the calendar is messed up! Someone screwed up the pooch!",
								"\nBAIN: Don't worry about it. The manager was just stepping his new assistant through the process. No problems here, at least not with the lock.",
								"\nBAIN: Is that a fact? Let me just, uh... aw, I see it. The calendar is messed up! Everything is fine. It'll take a while to sort this, so maybe... just ignore any alerts from us today.",
								"\nBAIN: Aw, yeah, that! The manager was showing the system off to his new PA! I guess the timelock isn't the only thing that's gonna get an unscheduled activation!"
							},
							{
								"\nJEN: Ah, I see. Sure, that happens. Okay, just try to call us beforehand next time.",
								"\nJEN: Alright, I hear you. Just... try to keep us in the loop next time.",
								"\nJEN: Got it, no problem. Just keep us informed."
							},
							{
								"\nBAIN: Sure, thanks for keeping us safe. [hangs up]",
								"\nBAIN: You got it. You guys are doing a great job! [hangs up]",
								"\nBAIN: of course, thanks for being understanding. Take care. [hangs up]"
							},
							{
								"You're in the clear, gang!",
								"You're clear, gang!",
								"Sucker fell for it!",
								"Phew! Looks like we dodged that one."
							}
						}
					}
				},
				Play_gensec_conversation_ending_2 = {
					override_name = "Phone Call",
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"\nBAIN: Good afternoon! This is the Benevolent Bank! You're speaking to Martin!",
								"\nBAIN: Good afternoon! Benevolent Bank! Martin speaking!",
								"\nBAIN: Good afternoon! You're through to the Benevolent! This is Martin!"
							},
							{
								"\nJEN: Jen over at GenSec here. So, we detected an unscheduled activation of the timelock there. Everything okay?",
								"\nJEN: This is Jen at GenSec. Our systems picked up an unscheduled activation of your timelock. I'm just calling to confirm everything is fine?",
								"\nJEN: Hi, this is Jen, I'm calling from over at GenSec. We registered an unscheduled activation of the timelock, I'm just calling to make sure everything is alright?"
							},
							{
								"\nBAIN: Oh! What, really? The schedule says... uh... Goddammit! You know... You know, someone screwed up the schedule. Anyway, yeah, everything is fine here. Thanks for being so diligent.",
								"\nBAIN: We had a schedule conflict. Major accountholder showed up a day early. A big account from, uh... Mumbati.",
								"\nBAIN: Oh, yeah. the manager was showing the system to his new assistant. An, uh, early bit of key and lock, he calls it.",
								"\nBAIN: Just a schedule conflict. Had a major accountholder turn up out of the blue.",
								"\nBAIN: You don't say? Well, according to the schedule- aww, goddammit, looks like the calendar is messed up! Someone screwed up the pooch!",
								"\nBAIN: Don't worry about it. The manager was stepping his new assistant through the process. No problem here, at least not with the lock.",
								"\nBAIN: Is that a fact? Let me just, uh... aw, I see it. The calendar is messed up! Everything is fine. It'll take a while to sort this, so maybe... just ignore any alerts from us today.",
								"\nBAIN: Aw, yeah, that! The manager was showing the system off to his new PA! I guess the timelock isn't the only thing that's gonna get an unscheduled activation!"
							},
							{
								"\nJEN: Hmm... listen, I'm gonna send an officer over to check on things. Standard procedure.",
								"\nJEN: This doesn't sound right. I'd better send an officer over to check it out."
							},
							{
								"\nBAIN: No, no. No! Uh, there's no need for that.",
								"\nBAIN: Hang on, I don't want to waste your time. Everything is fine.",
								"\nBAIN: Hey, look, everything is fine here. You don't need to do that."
							},
							{
								"\nJEN: Sorry. Procedure. What was your name again?",
								"\nJEN: It's procedure. And, uh, who am I talking to again?",
								"\nJEN: Standard operating procedure. [suspicious] Who is this?"
							},
							{
								"\nBAIN: Uh... Alan... Watson! [hangs up] Stay sharp, clowns! GenSec are coming!",
								"\nBAIN: Uh... David! Uh, Jones! [hangs up] Gang, you're going to have company!",
								"\nBAIN: Uh... John... Smith. [hangs up] Keep an eye out, gang! Company is coming!"
							}
						}
					}
				},
			--framing frame
				--day 2
				Play_dlr_framing_stage2_01 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] Good day. [pause] Uh, we're pleased to negotiate with you, but... you're gonna do it our way, or not at all."
				},
				Play_dlr_framing_stage2_02 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] Put all the paintings on the table in the train car. Stand by for my contact."
				},
				Play_dlr_framing_stage2_03 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] Nine paintings! Excellent."
				},
				Play_dlr_framing_stage2_04 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] We count eight paintings! Very, very good."
				},
				Play_dlr_framing_stage2_05 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] We count seven paintings. Good, good."
				},
				Play_dlr_framing_stage2_06 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] So that's six paintings. Good."
				},
				Play_dlr_framing_stage2_07 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] Okay, we got five paintings here. Good."
				},
				Play_dlr_framing_stage2_08 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] Four paintings... that's, uh, not much, but we'll take it."
				},
				Play_dlr_framing_stage2_09 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] Great. Now, our client, he prefers not to take any chances when it comes to things of a 'legally questionable' nature. So, if you could just all get into the train car... thank you."
				},
				Play_dlr_framing_stage2_10 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] It's not that we don't trust you. We just need to be sure that nothing... untoward... would happen."
				},
				Play_dlr_framing_stage2_11 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] This is purely a safety precaution."
				},
				Play_dlr_framing_stage2_12 = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "[over phone] Alright. Our dealer is here. Hold on for a second."
				},
				Play_ph1_trade1_loud = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Okay! Throw me the paintings, and you'll get your money!"
				},
				Play_ph1_trade2_loud = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Alright! Throw me the bags, and you'll get your money!",
					line_variations = {
						standard_mode = {
							"Alright! Throw me the bags, and you'll get your money!",
							"Okay! Throw me the bags, and you get the delivery!",
							"Okay! Let's trade!"
						}
					}
				},
				Play_ph1_trade3_loud = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "You deliver, then I deliver!",
					line_variations = {
						standard_mode = {
							"You deliver, then I deliver!",
							"Get the bags to me!",
							"Throw me the bags!",
							
						}
					}
				},
				Play_ph1_trade4_loud = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "C'mon, already! We need more bags!",
					line_variations = {
						standard_mode = {
							"We're wasting our time! This is less than we agreed on!",
							"C'mon, already! We need more bags!",
							"C'mon! We need more than that!"
						}
					}
				},
				Play_ph1_trade5_loud = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Great! Money's coming down!",
					line_variations = {
						standard_mode = {
							"Great! Money's coming down!",
							"Great! We got it!",
							"Thanks! Here's your cash!"							
						}
					}
				},
				Play_ph1_trade6_loud = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Doors are open for you! Me, I'm leaving!"
				},
				Play_ph1_trade7_loud = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Oh, SHIT! This wasn't the deal! We are OUTTA HERE!",
					line_variations = {
						standard_mode = {
							"Oh, SHIT! This wasn't the deal! We are OUTTA HERE!",
							"Ah, SHIT! This wasn't the deal! We're outta here!"
						}
					}
				}, 
				--8 doesn't exist
				Play_ph1_trade9_loud = {
					override_name = "Art Buyer",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "That's everything! Nice doing business with you, gentlemen!"
				},
				
--hoxton breakout
		--day 1
				Play_rb5_hb1_01 = {
					override_name = "Hoxton",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Fuck me, talk about making an entrance!",
					duration = 7,
					line_variations = {
						standard_mode = {
							"Ye bloody wankers, you took your time, didn't ya?",
							"Fuck me, talk about making an entrance!",
							"Well, fuck me sideways! It's the motherfucking PAYDAY Gang!",
							"Yes! YES! Now it's time to see helmets flying!",
							"I recognize the two of you. But where's my old fucking mask!",
							"Fuck, that was some explosion!",
							"Fuck me, me ears are bollocksed! Was that C4 or a demolition charge?!",
							"To quote Churchill: 'Fuckin' 'ell, that was loud!'"
						}
					}
				},
				Play_rb5_hb1_02 = {
					override_name = "Hoxton",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Bollocks to the Safehouse! We're going somewhere else- trust me.",
					duration = 5,
					line_variations = {
						standard_mode = {
							"Bollocks to the Safehouse! We're going somewhere else- trust me.",
							"Dunno what Bain was thinking, but we're making a detour. I've got something in mind.",
							"Nevermind the sodding Safehouse. I've got a plan, and you lads want to help me, RIGHT?"
						}
					}
				},
				Play_rb5_hb1_03 = {
					override_name = "Hoxton",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Some Judas fuck sold me- I know they did. But who?!",
					duration = 7,
					line_variations = {
						standard_mode = {
							"I'm sure someone betrayed me. It had to be an informer. But who?!",
							"I was set up, lads, I know it. Someone ratted me out.",
							"Someone ratted me out, and I know it wasn't Matt, because I know all of his secrets by now.",
							"Some fucking cunt snitched! I need to find out who!",
							"Some twat sold me to the feds, fellas, I'm sure of it!",
							"There's a traitor! Close to the group- or INS it! I know there is.",
							"Some shitbag ratted on me! Don't know who, but I'm sure.",
							"I know I was betrayed. I'll FIND who fucking did it."							
						}
					}
				},
				Play_rb5_hb1_04 = {
					override_name = "Hoxton",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "I said, IT'S FUCKING PAYDAY MOTHERFU-",
					duration = 15,
					line_variations = {
						standard_mode = {
							"Well, well, well. So who's the fourth musketeer? This wanker's your little brother, Dallas?",
							"Wolf- what you did with that Bulldozer back there was a bit... I think you need help, mate.",
							"I dunno how many times I've saved your life, Chains, and this is how you repay me? You could get me a limo, at the very fuckin' least.",
							"Dallas, your little brother should give my name back, and call himself 'Houston!'",
							"Dallas, I thought we were pals! Does a pal leave his BFF in jail? Wanker!",
							"At least in the nick I didn't have Bain yapping in my ear like a lil' needy dog! 'Get the drill,' my arse!",
							"Couldn't get a proper brew in that place- all 'green tea' and 'earl grey' bollocks. Where's the GOLD?!",
							"Fuckin 'ell lads. Think about going straight! You don't want to be around Hazelton on Thursdays. Two words: fucking kinky night.",
							"John motherfuckin' Wick! Didn't think I'd see your face again.",
							"You call yourself 'Hoxton,' right? More like 'Houston'- cause you've just got a fuckin' problem!",
							"Well, fuck me sideways, if it isn't John Wick! I thought you'd got out...? How's the family? ...what, did I say something bad?",
							"Ah, I'll miss the sleight I left behind. Mickey the Squid, Dirty Alan, heh, Fish Fingers- good lads.",
							"Someone remind me to send some ciggies back to the sleight in Hazelton- and a cake of shite for the guards. Wankers!",
							"Admit it- you tossers missed my beautiful English accent, didn't you? [mockingly] Did you? Wankers!",
							"So, what'd I miss while I was away?",
							"Chains, I thought I could count on you! Wanker!",
							"Second, I want a proper bath! Third, a beer! Fourth- the cathouse! But first- well, keep driving!",
							"I'm gonna missing givin' that arsehole Roscoe a sound thrashing! Hey, maybe we could break him out, too!",
							"Glad to be out of that shit hole. Fuckin' Hazelton. No place for a proper English gentleman, you know?",
							"Feels good to be outside. The fresh air, the birds... the bullets and explosions, and all that shite.",
							"I'm not gonna miss that prison food, I'll tell you that much. Shite on a fucking shingle!", 
							"Wolf- you've been barking up the wrong tree for years! And NOW you find me!",
							"Did me first dint at Strangeways... just got me last. I'm not going back, lads.",
							"How's Sheffield Wednesday doing? All we got in there was news about HOCKEY. Fucking girls' game, that is.",
							"Dallas? Where the fuck were YOU? I was waiting like a princess in a goddamn tower!"
						}
					}
				},
				Play_rb5_hb1_05 = {
					override_name = "Hoxton",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "I said, IT'S FUCKING PAYDAY MOTHERFU-"
				},
				Play_dr1_hb1_01 = {
					override_name = "Twitch",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Gotcha! Movin'!",
					duration = 3,
					disabled = true, --this line has in-game subtitles
					line_variations = {
						standard_mode = {
							"Here we go!",
							"Gotcha! Movin'!",
							"Okay, okay, I'm on it!",
							"It took you long enough! Let's go!"
						}
					}
				},
				Play_dr1_hb1_02 = {
					override_name = "Twitch",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Can you guys move that?!",
					duration = 3,
					line_variations = {
						standard_mode = {
							"God DAMMIT! Can you guys move that?!",
							"Can't move forward! What do we do?",
							"What the hell?! A little help?!"							
						}
					}
				},
				Play_dr1_hb1_03 = { --unused afaik
					override_name = "Twitch",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "Keep 'em offa me!",
					priority = 10,
					duration = 6,
					line_variations = {
						standard_mode = {
							"You gotta keep 'em offa me, goddammit!",
							"They're shootin' me up over here!",
							"I told you to fuckin' PROTECT ME! I'm gettin' fired at, here!"
						}
					}
				},
				Play_dr1_hb1_04 = {
					override_name = "Twitch",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "Get this gate open!",
					priority = 10,
					duration = 4,
					line_variations = {
						standard_mode = {
							"[impatient] Get this SHIT open!",
							"Hey! Get this gate open!",
							"Hurry and open the gate!"
						}
					}
				},
				Play_dr1_hb1_05 = {
					override_name = "Twitch",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					priority = 10,
					text = "Get these bollards OUTTA MY WAY!",
					duration = 4,
					line_variations = {
						standard_mode = {
							"Shit, bollards are up?! Fix it!",
							"Get these bollards OUTTA MY WAY!",
							"We gotta clear these bollards! And be 'we,' I mean 'you!' and by 'you,' I mean 'HEY, ASSHOLES!'"
						}
					}
				},
				Play_dr1_hb1_06 = {
					override_name = "Twitch",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "Get him in the back!",
					priority = 10,
					duration = 3,
					line_variations = {
						standard_mode = {
							"Get him in the back!",
							"C'MON, GET HIM IN!",
							"I'm here, get him in!",
							
						}
					}
				},
				Play_dr1_hb1_07 = {
					override_name = "Twitch",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "Cops ahead!",
					priority = 10,
					duration = 3,
					line_variations = {
						standard_mode = {
							"Christ! We got cops!",
							"[exasperated] Fucking cops!",
							"Cops ahead!"
						}
					}
				},
				Play_dr1_hb1_08 = {
					override_name = "Twitch",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "Keepin' my foot off the gas. Make sure you guys keep the road safe and clear.",
					duration = 6,
					priority = 10,
					line_variations = {
						standard_mode = {
							"Gonna keep it slow, so you guys with the guns can stay with me.",
							"Keepin' my foot off the gas. Make sure you guys keep the road safe and clear.",
							"We'll move at your pace. Just keep the road clear of cops!",
							
						}
					}
				},
				Play_rb5_hb2_01 = {
					override_name = "Hoxton",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "Get inside, lads! Got work to do.",
					duration = 4,
					priority = 10,
					line_variations = {
						standard_mode = {
							"Get inside, lads! Got work to do.",
							"Get a shufty on, lads. Chop fucking chop.",
							"Move! Last one in's a knob." -- not quite right
						}
					}
				},
				Play_rb5_hb2_02 = {
					override_name = "Hoxton",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					text = "Get inside, lads! Got work to do.",
					duration = 4,
					priority = 10,
					line_variations = {
						standard_mode = {
							"Get inside, lads! Got work to do.",
							"Get a shufty on, lads. Chop fucking chop.",
							"Move! Last one in's a knob." -- not quite right
						}
					}
				},
				
			--rats (day 2)
				--some of these aren't used, i think, but may as well
				ict1_tra = {
					text = "'ey, yo, what up. Aight, here's the deal. Put the stuff in the car, THEN we'll give you what you're after.",
					duration = 7,
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Yo, sup homes.",
								"Yo, yo, YO, what's up?",
								"Ay, yo, what up?",
								"Ay, yo."
							},
							{
								"Yo, listen here.",
								"Aight, check it out, here's what I want you to do:",
								"Aight, check it, this is what the deal is:",
								"This is the deal, right here:"
							},
							{
								"Put the delivery in the car...",
								"Put the stuff in the car.",
								"Put the wares in the car.",
								"Put the product in the car"
							},
							{
								"Then, we'll trade.",
								"Then, you get what you came here for. Aight?",
								"Then, when it's done, we'll give you what you want.",
								"THEN, we'll give you what you came here for."
							}
						}
					}
				},
				ict2_tra = {
					text = "Put the bags in the pickup truck, and we'll do the trade.",
					duration = 5,
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"Hey, let's skip the formalities.",
								"Hey, yo!",
								"Sup, homes."
							},
							{
								"Here's what I want you to do:",
								"Here's the deal:",
								"Listen here:"
							},
							{
								"Put the stuff in the car,",
								"Put the wares in the car,",
								"Put the delivery in the car...",
								"Put the product in the car,"
							},
							{
								"then we'll trade.",
								"when it's done, we'll give you what you want.",
								"and you'll get what you came here for.",
								"and we'll give you what you're after."
							}
						}
					}
				},
				ict2_lsc = {
					text = "Hey, yo! You got no business here, this is OUR place!",
					duration = 5,
					priority = 10,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Hey, man! The deal ain't here! Turn around! This place is ours!",
							"Hey! The deal's not goin' down in here! So get lost.",
							"Hey, yo! You got no business here, this is OUR place!",
							"[chuckles] Oho, no! You ain't comin' in here! Nah, nah. We do our deals outside."
						}
					}
				},
				ict2_lsc_2 = {
					text = "My associate is ready for you. Just go to the apartment to make the deal.",
					category = "mission_dialogue",
					priority = 10,
					duration = 5
				},
				ict2_lsc_3 = {
					text = "We got your money right here. The info is in the safe. I'll open it! No funny shit, or you die.",
					category = "mission_dialogue",
					priority = 10,
					duration = 5
				},
				ict2_lsc_4 = {
					text = "Head up to the apartment. My associate has the info, and the cash to pay for the extra meth.",
					category = "mission_dialogue",
					priority = 10,
					duration = 5
				},
				ict2_lsc_5 = {
					text = "Yo! The info is in the safe. I'll open it for you!",
					category = "mission_dialogue",
					priority = 10,
					duration = 5
				},
				Play_ga2_rats_stage2_01 = {
					text = "They're trying to fuck with us! Take 'em down!",
					category = "mission_dialogue",
					priority = 10,
					duration = 4
				},
				Play_ga2_rats_stage2_02 = {
					text = "NOW! Hit these bastards!",
					category = "mission_dialogue",
					priority = 10,
					duration = 3
				},
				Play_ga2_rats_stage2_03 = {
					text = "Shit! What was the code for the safe? We need to burn those files!",
					priority = 10,
					category = "mission_dialogue"
				},
				Play_ga2_rats_stage2_04 = {
					text = "Hey, man, the deal ain't here! Turn around! This place is ours!", --thanks rex, i could not decipher this line for the life of me
					category = "mission_dialogue",
					priority = 10,
					duration = 4
				},
				Play_ga2_rats_stage2_05 = {
					text = "Man, we got your money right here. The info is in the safe. I'll open it! No funny shit, or you die.",
					category = "mission_dialogue",
					priority = 10,
					duration = 7
				},
				Play_ga2_rats_stage2_06 = {
					text = "Yo! The info is in the safe. I'll get it open for you.",
					category = "mission_dialogue",
					priority = 10,
					duration = 5
				},
				
			--heat street
				Play_mtt_run_01 = {
					text = "You're not getting me this time! Fuck you!",
					category = "mission_dialogue",
					override_name = "Matt Roscoe",
					override_text_color = ClosedCaptions.color_data.boss, --should it be neutral1 green to match later?
					duration = 5,
					priority = 10,
					line_variations = {
						standard_mode = {
							"You're not getting me this time!",
							"Catch me if you can!",
							"Fuck you!"
						}
					}
				},
				Play_mtt_run_02 = {
					text = "(hacking, coughing) Wait! Don't kill me! I have information about Jiro that he will want to hear!",
					category = "mission_dialogue",
					override_name = "Matt Roscoe",
					override_text_color = ClosedCaptions.color_data.boss,
					duration = 7,
					priority = 10,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"(hacking, coughing)"
							},
							{
								"Wait! No! Don't kill me!",
								"Stop! Don't kill me!"
							},
							{
								"I know stuff! I have information about Jiro's son!",
								"I have information that Jiro will want to hear!",
								"I have information! I know someone who Jiro will want to talk to! It's about his son!"
							}
						}
					}
				},
				Play_mtt_run_04 = { --3 does not exist
					text = "[muffled] Forget it! The cops will get you before you get me!",
					category = "mission_dialogue",
					override_name = "Matt Roscoe",
					override_text_color = ClosedCaptions.color_data.boss,
					duration = 5,
					priority = 10,
					line_variations = {
						standard_mode = {
							"[muffled] Forget it! The cops will get you before you get me!",
							"[muffled] Fuck you guys! I'll let the cops kill you all!",
							"[muffled] Kiss my ass, guys! KISS! MY! FUCKIN'! ASS!",
							"[muffled] Fuck you guys! FUCK! YOU!"
						}
					}
				},
				Play_mtt_run_06 = { --5 also does not exist
					text = "[extended muffled screaming, burning]",
					category = "mission_dialogue",
					override_name = "Matt Roscoe",
					priority = 10,
					override_text_color = ClosedCaptions.color_data.boss,
					duration = 20
				},
				
			--goat simulator heist day 1		
				Play_cpg_pt1_01 = {
					text = "Leave the damn goats alone, clown!",
					override_name = "Megaphone cop",
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Leave the damn goats alone, clown!",
							"Abducting goats is a federal offense!",
							"Put the goats down!",
							"Put the goat on the floor and your hands in the air!",
							"That goat to belongs to Uncle Sam now, asshole!",
							"You're not leaving here with the goats, asshole!",
							"That goat is an important witness! Drop it! NOW!",
							"Drop the goat, lawbreaker!",
							"Lower the goat, or we shoot!",
							"Step away from the goat, asshole!"
						}
					}
				},
				Play_pln_ko1_01 = {
					text = "All personnel, get ready for drop.",
					category = "mission_dialogue",
					priority = 10,
					duration = 5,
					override_name = "Murkywater Intercom"
				},
			--go bank
				Play_btm_cs1_01 = {
					override_name = "Bank Teller",
					category = "civilian_dialogue",
					priority = 37,
					max_distance = 2000,
					text = "(talking with Roberts Bank customer)",
					line_variations = {
						whisper_mode = {
							"Is there anything else I can help you with, ma'am? Would you be interested in an auto loan?",
							"Roberts Bank is happy to help you, sir.",
							"I'm sorry you feel that way, ma'am.",
							"Good afternoon, sir. How may I help you?",
							"Absolutely, sir, not a problem. Would you like all of that in twenties?",
							"And if you could sign here, here, and here... here, and here, and your initials here... and sign here.",
							"Would you like a zip bag with that, sir? Only $1.50.",
						}
					}
				},
				Play_btf_cs1_01 = {
					override_name = "Bank Teller",
					category = "civilian_dialogue",
					priority = 37,
					max_distance = 2000,
					text = "(talking with Roberts Bank customer)",
					line_variations = {
						whisper_mode = {
							"I'm sorry you feel that way, ma'am.",
							"Is there anything else I can help you with, ma'am? Would you be interested in an auto loan?",
							"Absolutely, sir, not a problem.",
							"Roberts Bank is happy to help you, sir.",
							"And if you could sign here, here, and here... here, and here, and sign here.",
							"I'd be happy to help you. One moment, please.",
							"Good afternoon, sir. How may I help you?"
						}
					}
				},
				Play_bkm_cs1_01 = {
					override_name = "Bank Teller",
					category = "civilian_dialogue",
					priority = 37,
					max_distance = 2000,
					text = "(talking with Roberts Bank customer)",
					line_variations = {
						whisper_mode = {
							"Yes, ma'am, we offer an international wire transfer at a very reasonable rate.",
							"Yes, ma'am, we offering international wire transfers at a very reasonable rate.",
							"A new account! We can, uh, get right on that.",
							"A new account! We can get that sorted right away."	
						}
					}
				},
				Play_bkm_cs1_02 = {
					override_name = "Bank Teller",
					category = "civilian_dialogue",
					priority = 37,
					max_distance = 2000,
					text = "(talking with Roberts Bank customer)",
					line_variations = {
						whisper_mode = {
							"[coughing]",
							"[coughing]",
							"[to self] Why do they think I give a fuck about the money? Why do they?",
							"[to self] Why can't anyone else do shit around here? It's all about 'me, me, me. Money, money, money.'",
							"[to self] Some people think it's so easy. 'Just open the vault. Just open a valve, for fuck's sake, and the money pours out.' It's not that easy!",
							
						}
					}
				},
				Play_gsc_cs1_10 = { --two pager gensec guards, in the event that the gensec loot truck spawns
					--override_name = "GenSec Driver",
					text = "Wait here with the truck. I'll be right back.",
					category = "mission_dialogue",
					priority = 37,
					line_variations = {
						whisper_mode = {
							"This won't take long. Don't let anyone borrow the keys to the truck.",
							"Wait here. I'll be right back.",
							"It's a quiet neighborhood. You'll be fine. I'll be right back."
						}
					}
				},
				Play_blm_cs1_01 = { --blackmailer
					text = "(Throw a bag of money over the yellow wall by Jimbo's, or I call the cops!)",
					category = "mission_dialogue",
					override_text_color = ClosedCaptions.color_data.boss,
					priority = 37,
					duration = 17,
					line_variations = {
						whisper_mode = {
							"I know what's going on over there, and I want a slice of that pie. Load a bag with money and toss it over the yellow wall near Jimbo's, the auto repair shop. You hear me? And I see one bag crossing the street... I'll call the cops.",
							"Hey assholes! You wanna keep my fingers off 911? Then throw a money bag over the yellow wall by the auto repair shop! Do it, NOW! And I see one of you motherfuckers trying to get a bag across the street? I'm going to the cops.",
							"You don't know me... but I see what you're up to. And I want IN. Throw some money over the yellow wall by Jimbo's. And none of you guys better try and cross the road. Uh-uh. Or I'll call the cops. You hear me?"
						}
					}
				},
				Play_csf_cs1_01 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					duration = 7,
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						whisper_mode = {
							"I need to talk to someone about my 401k."
						}
					}
				},
				Play_csf_cs1_02 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					duration = 7,
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						whisper_mode = {
							"Yeah, how much money do I got in there? How much?",
							"Yeah, how much money do I got there? How much?"
						}
					}
				},
				Play_csf_cs1_03 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					duration = 9,
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						whisper_mode = {
							"Hi, I just saw a show, and a bank got robbed. And I want to move my money to a bank that doesn't get robbed."
						}
					}
				},
				Play_csm_cs1_01 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					duration = 6,
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						whisper_mode = {
							"I wanted to ask if you guys offer financing for automobiles."
						}
					}
				},
				Play_csm_cs1_02 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					duration = 6,
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						whisper_mode = {
							"Hey. I'm having trouble with my account on the computer. Do I... internet?"
						}
					}
				},
				Play_csm_cs1_03 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					category = "mission_dialogue",
					duration = 15,
					priority = 37,
					line_variations = {
						whisper_mode = {
							"Yeah, there's a charge on my credit card the wife can't see. Uhh... I was in Mexico, and...",
							"Yeah, there's a charge on my credit card the wife can't see. Uhh... I was in Mexico, and... hmm, well...",
							"Yeah, uh... there's a charge on my credit card the wife can't see. Well, I was in Mexico, and, uh... one thing led to another, well... I gave in.",
							"Yeah, uh... there's a charge on my credit card the wife can't see. Well, I was in Mexico, and... uh... hm...",
							"Yeah, there's a charge on the credit card the husband can't see. Uh, I was in Mexico, and... yeah... [stressed sigh]"
						}
					}
				},
				Play_csk_cs1_01 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(customer asking for bank assistance)",
					category = "mission_dialogue",
					duration = 15,
					priority = 37,
					line_variations = {
						whisper_mode = {
						 --non-exhaustive. there are many of these.
							"Congratulations! You've won a trip to the Hugeass islands! You know, H-U-G-E-A-S-S Islands, in a contest you never signed up for, and we're calling just to annoy you...",
							"Do you think you'll have a good day today? I wouldn't 'bank' on it.",
							"Hello cheerfully, I saw this little commercial on tv, and they told me to call you. So... what are you wearing?",
							"Hello. I was wondering if you offer safety deposit boxes, as I have loads of my family jewels I am looking to deposit. My name is Jack Nofalak, please get back with me as soon as possible.",
							"Hi, this is a complaint, concerning my latest bank statement. My payment to 'Touching Feet' is supposed to read 'Touch MY Feet'.",
							"Hello, I'd like to inquire about making a deposit about my goldfish. You rejected me last time but I've put some pennies in it so it's alright.",
							"[thick accent] Hello, may I please speak with a manager? My name is Prince Abir-Imshadi from Nigeria, and I would love to make a deposit to your finance institution.",
							"Uh, hello, this is Richard Jackson. I work with the security company that delivers the money every week. I believe I MAY have left a sandwich in one of your deposit boxes the other day? Thanks.",
							"Is your car running? Cause if it is, you'd better go catch it.",
							"[elderly voice] Have you seen Alfie? He's probably out of food by now. So if you start to smell anything, my safety deposit box is number 3-5-7.",
							"Hello, what time does the bank close? Because I'd like to make a large withdrawal later.",
--							"Hello? Send a transport truck fast! My neighbor's swimming pool exploded into a fountain of cash! It's raining everywhere! Quick, before those clowns pick it all up!", --i didn't catch the whole thing
							"Hey this is just to let you know we've [] for your vault code, 0-0-0-0, so please get that changed before anyone attempts to open it.",
							"Hey, it's Jake Bishop again, I left a sandwich in my safety deposit box when I was in earlier today. If you can find it, get that back, my wife's gonna divorce me.", --holy shit dude
							"Hi there, i was just calling to make sure, uh... you guys... you guys still have all that money in your vault? Be a shame if something were to happen to it.",
							"Hi there, thank you very much for those four extra zeroes on my cheque! So I should go now so that I do not miss my Miami plane!",
							"Hi, this is Ryan from Bodhi's Pool Repair. We got a call about some filthy cash that needs a quick run to the laundry. Our team of specialists will be out there in an hour. Thank you for being a loyal customer.",
							"I kind of missed my last loan payment, and I can't really pay you guys. Do you guys take Time-Out! gift cards?",
							"Knock knock. [pause] ...hey. Knock knock. [longer pause] Ah, screw you.",
							"Oooh yeeee, brother, this is the call of DESTINY, and I'm your host, MACHO MAN! You're goin' NOWHERE, cause I got you for three minutes, three minutes of PLAYTIIIIIME- hey, where you goin'?",
							"Hey... it's Jim the Dog. I was wondering if I could make any... de-PAW-sits? [awkward silence]",
							"So... if a tree falls, and no-one eats the turtles before the eclipse happens, do it make yogurt fall from the pockets of the elderly? ...Maybe. Just maybe.",
							"Uh, hello, this is Harvest&Trustee, right? Listen, I need to set up some security deposit boxes with you guys. I have... SO MANY cheese sandwiches I need to store. Could you set me up? Oh, yeah, and I have this book about Rome. That's... gotta be worth something, right?",
							"Hi, I'm calling about getting a loan modification? If I don't qualify, could I just have the access code for the vault? Probably not. Figured I'd ask. Have a nice day.",
							"Hi, this is David, I called earlier to see if I could come by to deposit my Goldfarbs I mean... [pause] ...gold bars. I guess you guys are... a little... busy... right now. I guess I'll call later.", --these are so good 
--							"Well... [unintelligible] I want to start a small business. Here's the deal. I'll start a big one, and wait for six months.",
							"[elderly voice] Where is it? Where did you leave my chinchilla? I know you have it, somewhere, and I'm gonna come down there, and I'm gonna find it!",
							"Yeah, I'm calling to see how much you guys are offering now for, uh, deposits. [immature laughter] [pause] Oh, God, I called the wrong bank again.",
							"Yo, Steven. It's me, Striker. You left me at the roller rink. Dude, if you don't come back and get me, I'm gonna have to call your sister. Yeah."
--							"hello, i have an important note to mister bean: [swedish] (vi [] [] [] inte [] [] [])", --unintelligible							
						}
					}
				},

			--prison nightmare
				Play_big_clk_help_01 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(creating fire hazard)",
					category = "mission_dialogue",
					duration = 7,
					priority = 37,
					line_variations = {
						standard_mode = {
							"LET'S CRANK THE HEAT UP!",
							"HOT FOOT! [laughs evilly]",
							"COME SIT BY MY FIRE!"
						}
					}
				},
				Play_big_clk_help_02 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting heisters)",
					category = "mission_dialogue",
					duration = 7,
					priority = 37,
					line_variations = {
						standard_mode = {
							"YOU WON'T LIKE THIS! [laughs evilly]",
							"DON'T LOOK SO MISTY EYED!",
							"I HAVE A LITTLE PRESENT FOR YA!"
						}
					}
				},
				Play_big_clk_help_03 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(creating giant drill hazard)",
					category = "mission_dialogue",
					duration = 7,
					priority = 37,
					line_variations = {
						standard_mode = {
							"I WANT YOU TO THINK OF ME AS YOUR... 'DRILL SERGEANT!' [laughs evilly]",
							"CAN YOU FEEL THE EARTH MOVING? NO? WELL, WHAT ABOUT NOW!?",
							"[imitating drill]"
						}
					}
				},
				Play_big_clk_help_04 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(creating Snipers hazard)",
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					line_variations = {
						standard_mode = {
							"WELL, LOOK WHAT WE HAVE HERE!",
							"THIS IS THE LONG ARM OF THE LAW!",
							"LET ME PULL SOME RABBITS OUT OF MY HAT!",
							"PETER PIPER PICKED A PECK OF... SNIPERS!"
						}
					}
				},
				Play_big_clk_help_05 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					category = "mission_dialogue",
					duration = 3,
					priority = 37,
					text = "DOZER... CATCH!" --no variations
				},
				Play_big_clk_help_06 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(coming down to be the hazard)",
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					line_variations = {
						standard_mode = {
							"OKAY, THAT'S IT! I'M COMING DOWN THERE!",
							"DAMMIT, I NEED SOME EXERCISE!",
							"I'M COMIIIING!"
						}
					}
				},
				Play_big_clk_help_07 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting heisters)",
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					line_variations = {
						standard_mode = {
							"I'M A BULLETSPONGE! CALL ME BOB!",
							"I'M GONNA GIVE THAT WHEEL A KICK!",
							"CHANGE YOUR DIAPERS YET?!"
						}
					}
				},
				Play_big_clk_help_08 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					category = "mission_dialogue",
					duration = 3,
					priority = 37,
					text = "HA! THERE!"
				},
				Play_big_clk_help_09 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting heisters about wheel)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"THIS IS GONNA TAKE A WHILE! [laughs evilly]",
							"IT'S THE WHEEL OF MISFORTUNE!",
							"YES... YES! PLAY MY LITTLE GAME!",
							"SO...? YOU WANNA PLAY, THEN?",
							"KEEP ON SPINNIN'... KEEP ON SPINNIN'!"
						}
					}
				},
				Play_big_clk_help_10 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting heisters about bad wheel spin)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"OH, THAT REALLY PUT A... 'SPIN' ON THINGS!",
							"OH... [chuckles] YOU'RE GONNA LIKE THIS!",
							"SPIN HARDER NEXT TIME! [evil laugh]",
							"YOU HAVE CHOSEN... POORLY." --funni indiana jones reference
						}
					}
				},
				Play_big_clk_help_11 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting heisters about broken wheel drill)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"[mockingly] AW... MY WHEEL BROKE! BOOHOOHOO...",
							"HAHA, YOU CAN'T EVEN DO IT PROPERLY!"
						}
					}
				},
				Play_big_clk_help_12 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting heisters about surviving halfway)",
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					line_variations = {
						standard_mode = {
							"HALF TIME NOW... C'MON, MAGGOTS!",
							"HALFWAY LINE... DON'T STOP NOW! [chuckles]",
							"YOU LASTED HALFWAY... WILL YOU LAST TIL THE END? I DON'T THINK SO!"
						}
					}
				},
				Play_big_clk_help_13 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(frustrated about heister success)",
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					line_variations = {
						standard_mode = {
							"WHAT?! NO! DAMN YOU!",
							"[screams in frustration] YOU MUST HAVE BEEN CHEATING!",
							"DAMMIT! SHOWS YOU CAN'T TRUST MACHINERY!",
							"THE WHEEL BETRAYED ME!",
							"YOU WON THIS ONE... BUT I'LL GET YOU IN THE END!"
						}
					}
				},
				Play_big_clk_help_14 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(frustrated about heisters stealing cloaker gold)",
					category = "mission_dialogue",
					duration = 3,
					priority = 37,
					line_variations = {
						standard_mode = {
							"[panicked] WHAT ARE YOU DOING?!",
							"WHAT?! YOU OPENED IT?!",
							"THAT'S MINE!",
							"STOP! NO!"
						}
					}
				},
				Play_big_clk_help_15 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(vows revenge for stolen cloaker gold)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"I'LL GET YOU FOR THIS!",
							"YOU DARE STEAL FROM ME?",
							"HURRY! SOON, YOU DIE!",
							"BETTER HIDE IT WELL... YOU LITTLE RATS!",
							"MY MONEY... MY MONEY!",
							"NO-ONE LIKES THIEVES!",
							"I'M COMING FOR YOU... SOON!",
							"[panicked] STOP... STOP!"
						}
					}
				},
				Play_big_clk_help_16 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(mocking heister failure)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"THAT'S IT... BITCHES! [evil laugh]",
							"I LOVE TO SEE YOU FAIL!",
							"[mockingly] AWWW... THAT'S TOO BAD!",
							"TIME'S UP... LOSERS!",
							"[mockingly] YOU COULDN'T DO ANY BETTER?!"
						}
					}
				},
				Play_big_clk_help_17 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting heisters to continue)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"MOUSE OR LION! WHAT'S IT GONNA BE?",
							"WHO DARES, WINS! ...OR DIES!",
							"C'MON... STAY AND PLAY!",
							"WILL YOU RUN AWAY? OR STAY?",
							"AWWW... DON'T LEAVE ME JUST YET!"
						}
					}
				},
				Play_big_clk_help_18 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(sending minions after leaving heisters)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"STOP THEM!",
							"COME BACK AND PLAY!",
							"DON'T LET THEM ESCAPE!",
							"KILL THEM, MY MINIONS!",
							"SURROUND THEM! KILL THEM!",
							"THERE IS NO WAY OUT!"
						}
					}
				},
				Play_big_clk_help_19 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(spawning a drill)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"HERE'S A DRILL FOR YA!",
							"YES! THIS... IS A DRILL!",
							"[mockingly] GUYS... THE THERMAL DRILL! GO GET IT!"
						}
					}
				},
				Play_big_clk_help_20 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(threatening heisters with train puns)", --i like the ambiguity of this because he could either be threatening the heisters who are on the train, or threatening the heisters by using the hazard of train puns, even though it's not really a pun
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"YOU'LL NEVER GET ACROSS!",
							"MIND THE GAP!",
							"TICKETS PLEASE!",
							"A BRIDGE TOO FAR, MOTHERFUCKERS!",
							"LAST STATION... BITCHES!",
							"ENJOY THE RIDE... [evil laughter]"
						}
					}
				},
				Play_big_clk_help_21 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting trapped heisters on train)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"UH OH, SEEMS YOU'RE STUCK HERE!",
							"DON'T GET OFF YET... [evil laughter]",
							"NO WAY OUT!",
							"[evil laughter] YOU'RE TRAPPED NOW!",
							"END OF THE LINE, BITCHES!"
						}
					}
				},
				Play_big_clk_help_22 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(angry about heisters damaging train)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"YOU FUCKING CHEATS!",
							"WHAT DID YOU DO TO MY TRAIN?!",
							"NOOOO!"
						}
					}
				},
				Play_big_clk_help_23 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(scaring heisters)",
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					line_variations = {
						standard_mode = {
							"GETTING CATS OUT OF TREES? MORE LIKE RIPPIN' BRAINS OUT OF SKULLS!",
							"YOU'RE JUST MAGGOTS!",
							"COME! COME, LITTLE MICE! CAT WANTS TO PLAY!",
							"YOU REALLY THINK YOU HAVE A CHANCE HERE?",
							"THIS IS MY WORLD!",
							"COME TO THE GALLOWS! COME!",
							"THIS IS WHERE ALL YOUR DREAMS COME TRUE! [evil laughter]",
							"ARE YOU SCARED YET?",
							"GET READY FOR CAPITAL PUNISHMENT!",
							"I'LL MAKE YOU WISH YOU WERE DEAD!",
							"CRIMINAL FILTH!",
							"IN MY WORLD, EVERYONE'S IN PRISON!",
							"CRIME DOESN'T PAY!",
							"YOU CAN'T ESCAPE FROM HERE!",
							"THERE'S NO ESCAPE!",
							"BRING THE PAIN!",
							"BITCHES!",
							"YOU REALLY THINK YOU HAVE A CHANCE HRRE?!",
							"[evil laughter] YOU'LL NEVER GET OUT OF HERE!",
							"THE LAW... ALWAYS WINS!",
							"[screaming]", -- ???
							"[roaring]", --????
							"THREE STRIKES... YOU'RE OUT!",
							"I OWN YOU NOW!",
							"WELCOME TO HELL!",
							"COME PLAY! [evil laughter]",
							"YOUR CRIME CAREER IS OVER... OVER!",
							"THIS IS MY DOMAIN! I RULE HERE!",
							"YOU WANT TO WAKE UP, DON'T YOU? WELL, POOR YOU!",
							"THINK THIS IS BAD?! YOU SHOULD SEE THE FOOD!",
							"FUCK YOU!"
						}
					}
				},
				Play_big_clk_help_24 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(taunting)",
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					line_variations = {
						standard_mode = {
							"NOW, WATCH ME MESS UP YOUR FUN!",
							"(singsong) HEY ASSHOLES! WATCH ME!",
							"YOU READY FOR A DIFFICULTY TWEAK?"
						}
					}
				},
				Play_big_clk_help_25 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(spawning Headless Dozer hazard)",
					category = "mission_dialogue",
					duration = 4,
					priority = 37,
					line_variations = {
						standard_mode = {
							"LOOK, MOM- NO HEAD!",
							"SAY HELLO TO MY HEADLESS LITTLE FRIEND!"
						}
					}
				},
				Play_big_clk_help_26 = {
					override_name = "NecroCloaker",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "[wailing] YOU'RE USELESS... USELESS!",
					category = "mission_dialogue",
					duration = 5,
					priority = 37
				},
			--breakin' feds
				Play_npc_tag_poi_01 = {
--					override_name = "FBI Agent",
					text = "(incredibly boring meeting dialogue)", --I don't know if I have it in me to log these variations
					category = "mission_dialogue",
					max_distance = 2000,
					duration = 25,
					priority = 37
				},
				Stop_npc_tag_poi_01 = {
					category = "stops",
					remove_by_source = true,
					stops_line = "Play_npc_tag_poi_01"
				},
				Play_gar_tag_01 = {
					text = "(phone call with mayor)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[muffled] Garrett speaking. Yes? ...Hello, mister Mayor. ...no, not yet. I... was under the impression that you didn't want-- I see. Well... [clears throat] ...no sir, we do not presently have anything due on the PAYDAY Gang. [under breath] Moron. [normal voice] No sir, uh, not at all. Yes... yes? perhaps. Uh... no... yes. Uh, I'm not certain. Yes? [sighs] Alright, sir. [indistinct]"
						}
					},
					duration = 4,
					priority = 45
				},
				Play_gar_tag_02 = {
					text = "(phone call with Sergeant)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[muffled] Hello, Sergeant? Did you get the things I requested? Good, thank you. I'll be leaving within the hour or so; wait 15 minutes before following. Yes, I should be fine. You'll know if something goes wrong. With a little luck we'll be able to shut this down tonight. [pause] There is some truth to that, Sergeant. But we serve where we are needed. I appreciate your support. I will not forget it. Goodbye.",
							"[muffled] Sergeant Panem? You prepare the things I requested? Good, thank you. I want to be sure these 'Kataru' people will not be able to pull one over on us. Once I've left the office, wait 15 minutes before following. Yes, you'll know if something goes wrong. I want to shut this down tonight so that McKendrick can get off our backs. We serve where they ask us to, Sergeant. I appreciate your support in this matter. Goodbye."
						}
					},
					duration = 4,
					priority = 35
				},
				--3 does not exist i guess
				Play_gar_tag_04 = {
					text = "(answering prank call)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[answering phone] Commissioner Garrett speaking. What? Is this a joke? GOODBYE.",
							"[answering phone] Hello? Who is this, please? Yes? Well, no thank you."
						}
					},
					duration = 4,
					priority = 36
				},
				Play_gar_tag_05 = {
					text = "(muffled frustration)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[muffled] What now?",
							"[muffled] Oh, dammit!"
						}
					},
					duration = 3,
					priority = 36
				},
				Play_gar_tag_06 = {
					text = "Again? Damn electricians...", --no variations
					category = "mission_dialogue",
					duration = 3,
					priority = 36
				},
				Play_gar_tag_07 = {
					text = "This one... uh... [mumbling to self] No, lemme see... there! Okay. [sighs] Should do it.", --no variations
					category = "mission_dialogue",
					duration = 8,
					priority = 36
				},			
				Play_gar_tag_08 = {
					text = "[muffled] Will I ever get a moment of peace?",
					category = "mission_dialogue",
					duration = 8,
					priority = 36
				},
				Play_gar_tag_09 = {
					text = "(Hey, who was just in my office?)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[muffled] Alright... who was just in my office?!",
							"[muffled] Hey! Who was pokin' around in my office just now?"
						}
					},
					duration = 4,
					priority = 36
				},
				Play_gar_tag_10 = {
					text = "[muffled] Alright... now where were we?", --no variations
					category = "mission_dialogue",
					duration = 4,
					priority = 36
				},
				Play_gar_tag_11 = {
					text = "[muffled, reading] Uh... 'Mister Garrett.. okay, when you get a chance, can you please come down to... [indistinct mumbling] trying to come up with a strategy...' Oh... [groans] oh, dammit to hell! Amateurs!", --no variations
					category = "mission_dialogue",
					duration = 25,
					priority = 36
				},
				Play_gar_tag_12 = {
					text = "(grumbling to self)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[grumbles] Make me wait another minute! Oh... [continues grumbling]",
							"[groans] Dammit! Where is he?"
						}
					},
					duration = 4,
					priority = 36
				},
				Play_gar_tag_13 = {
					text = "Now, dammit!", --no variations
					category = "mission_dialogue",
					duration = 3,
					priority = 36
				},
				Play_gar_tag_14 = {
					text = "[muffled] What the...?", --no variations
					category = "mission_dialogue",
					duration = 3,
					priority = 36
				},
				Play_gar_tag_15 = {
					text = "(spotted delicious Chimichanga)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[delighted] Ooohh...",
							"[delighted] Hello... what's this?"
						}
					},
					duration = 3,
					priority = 36
				},
				Play_gar_tag_16 = {
					text = "(complaining about Chimichanga-induced digestive stress)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[muffled] Oh, goddammit, Pedro, you used the cheap cannolini again, didn't you?",
							"[muffled] Agh, damned Pedro and all his chimichangas..."
						}
					},
					duration = 3,
					priority = 36
				},
				Play_gar_tag_17 = {
					text = "(spotted office intruder!)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"HEY! Get out of there! EMERGENCY!" --no variations
						}
					},
					duration = 3,
					priority = 36
				},
				Play_gar_tag_18 = {
					text = "(urgently commandeering bathroom)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Hello? Open the door at once!"
						}
					},
					duration = 3,
					priority = 36
				},
				Play_gar_tag_19 = {
					text = "(spotted heister!)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"Alert! Intruder in the building!",
							"Hey! You there!",
							"Hey! You there! STOP!",
							"STOP! Intruders!"
						}
					},
					duration = 4,
					priority = 36
				},
				Play_gar_tag_20 = {
					text = "(pain)",
					category = "mission_dialogue",
					line_variations = {
						standard_mode = {
							"[groans in pain]",
							"[grunts in pain]",
							"[pained grunt]"
						}
					},
					duration = 2,
					priority = 36
				},

			--biker heist
				Play_bkl_brn_01 = {
					text = "(biker aggro)",
					category = "mission_dialogue",
					max_distance = 1500,
					line_variations = {
						standard_mode = {
							"Payback!",
							"Retribution time.",
							"Witness me!",
						}
					}
				},
				Play_mch_brn_01 = {
					text = "[muffled yelling for help through gag]",
					category = "mission_dialogue",
					priority = 37
				},
				Stop_mch_brn_01 = {
					category = "stops",
					stops_line = "Play_bkl_brn_01"
				},
			--diamond heist	
				laser_hum_right = {
					category = "sfx",
					override_name = "SFX",
					text = "[right laser hums]",
					loop_data = {
						loop_interval = -1
					},
					priority = 37,
					max_distance = 700
				},
				laser_hum_left = {
					category = "sfx",
					override_name = "SFX",
					text = "[left laser hums]",
					loop_data = {
						loop_interval = -1
					},
					priority = 37,
					max_distance = 700				
				},
				dah_party_music = {
					category = "sfx",
					override_name = "SFX",
					text = "[party music]",
					loop_data = {
						loop_interval = -1
					},
					priority = 37,
					max_distance = 700
				},
				dah_party_music_stop_stealth = {
					category = "stops",
					stops_line = "dah_party_music",
					priority = 37
				},
				dah_party_music_stop = {
					category = "stops",
					stops_line = "dah_party_music",
					priority = 37
				},
				elevator_ding_dh = {
					category = "sfx",
					override_name = "SFX",
					text = "[elevator dings]",
					duration = 3,
					priority = 37,
					max_distance = 1000		
				},
				alarm_dah = {
					category = "sfx",
					override_name = "SFX",
					text = "[alarm rings]",
					duration = 30,
					priority = 37
				},
				dah_npc_impact_glass_01 = {
					category = "sfx",
					override_name = "SFX",
					text = "[body impacts glass]",
					priority = 37,
					duration = 3
				},
				mute = { --???
					category = "UNKNOWN"
				},
				str_car_fire = {
					override_name = "SFX",
					category = "sfx",
					max_distance = 700,
					priority = 50
				},
				car_alarm_on = {
					override_name = "SFX",
					category = "sfx",
					text = "[car alarm beeping]",
					priority = 50,
					max_distance = 700,
					loop_data = {
						loop_interval = -1
					}
				},
				car_alarm_on_fade_out = {
					category = "stops",
					stops_line = "car_alarm_on"					
				},
				glace_secondary_explosion = {
					override_name = "SFX",
					category = "sfx",
					text = "[large explosion]",
					priority = 37			
				},
		--hell's island
				bph_lever_down = {
					override_name = "SFX",
					category = "sfx",
					text = "[lever pulled]",
					priority = 37
				},
				bph_prison_buzzer = {
					override_name = "SFX",
					category = "sfx",
					text = "[buzzer sounds]",
					priority = 37
				
				},
		--scarface mansion
				Play_sec_fri_01 = {
					text = "(talking on phone)",
--					override_name = "Head of Security", --disabled because it'll cause a weird discrepancy when he dies and shows "Bolivian Security" in that caption
					category = "mission_dialogue",
					priority = 37,
					duration = 4,
					line_variation = {
						whisper_mode = {
							"Yeah, boss. All's quiet down here.",
							"No, no, it ain't like that. Yeah, he's downtown. [pause] Okay make sure he gets it.",
							"Yes? [pause] No, man. Nothing going on here.",
							"Yeah, baby! [pause] No, I'm working! See you tomorrow.",
							"Boss? Yeah. No, it's real quiet down here.",
							"Hey, listen. Remember, you get the merchandise in here early, or the boss won't be happy."
						}
					}
					
				},
				Play_bos_fri_01 = {
					text = "(angered by painting destruction)",
					category = "mission_dialogue",
					priority = 37,
					duration = 4,
					line_variation = {
						standard_mode = {
							"What are you doing to my paintings?!",
							"You people have no respect for art! NO RESPECT!",
							"HEY! That's priceless art!"
						}
					}
				},
				Play_bos_fri_02 = {
					text = "(angered by property destruction)",
					category = "mission_dialogue",
					priority = 37,
					duration = 5,
					line_variation = {
						standard_mode = {
							"YOU'RE DESTROYING MY THINGS OUT OF ENVY, HUH? MOTHERFUCKER!",
							"STOP DESTROYING MY THINGS!",
							"NO! STOP THAT!",
							"HEY! MY STUFF!",
							"HEY! THAT'S MINE! LEAVE IT ALONE!",
							"MOTHERFUCKERS! STOP THAT!",
							"BARBARIANS ARE WHAT YOU ARE! BARBARIANS!",
							"YOU GOT NO RESPECT, PENDEJOS!",
							"DON'T DESTROY MY THINGS!",
							"HEY! WHAT ARE YOU DOING TO MY STUFF?!",
							"HEY! THAT'S EXPENSIVE!"
						}
					}
				},
				Play_bos_fri_03 = {
					text = "(angered by car destruction)",
					category = "mission_dialogue",
					priority = 37,
					duration = 4,
					line_variation = {
						standard_mode = {
							"I CAN'T BELIEVE YOU DESTROYED MY CAR!",
							"MY CAR!",
							"NOT MY FUCKING CAR! MOTHERFUCKERS!",
							"YOU FUCKED MY CAR, BASTARDS!",
							"FUUUUCK! MY CAR!",
							"YOU DON'T DESTROY A MAN'S CAR! YOU JUST DON'T DO THAT, YOU HEAR?!",
							"NOT MY CAR! FUCK YOU! FUCK YOU, PENDEJOS!"
						}
					}
				},
				Play_bos_fri_04 = {
					text = "(threatening to come out and attack)",
					category = "mission_dialogue",
					priority = 37,
					duration = 4,
					line_variation = {
						standard_mode = {
							"Fuck you! I'm coming out to destroy you!",
							"Argh, you fuckers! I'm coming for you!",
							"You wanna play rough? Okay, SAY HELLO TO MY LITTLE FRIEND!",
							"Motherfuckers! Now you did it! You made me mad!",
							"Okay, that's it! You fucking did it!"
						}
					}
				},
				Play_bos_fri_05 = {
					text = "(threatening heisters)",
					category = "mission_dialogue",
					priority = 37,
					duration = 4,
					line_variation = {
						standard_mode = {
							"I will BURY you!",
							"You made your last mistake!",
							"This... is where you die!",
							"What the hell are you doing?!",
							"You came here to DIE, you bastards!",
							"I'll fuck you up!",
							"No-one fucks with me and lives!",
							"Come on, you bastards!",
							"You shouldn't have made me MAD!",
							"Who sent you?!",
							"No-one attacks the Sosas and lives!",
							"You guys are fucking with the wrong people!",
							"Ernesto Sosa will outlive you ALL!",
							"I'm gonna break you!",
							"I'll KILL you!",
							"DIE, you bastards!",
							"I'm ERNESTO SOSA, motherfuckers!",
							"Do you know who I am?!"
						}
					}
				},
				Play_bos_fri_06 = {
					text = "(taunting heisters from inside mansion)",
					category = "mission_dialogue",
					priority = 37,
					duration = 5,
					line_variation = {
						standard_mode = {
							"You can't take me! I'm Ernesto Sosa, and you're going DOWN!",
							"Hey, you bastards! You forgot to make an appointment!",
							"You're not gonna like it when I get angry, eh?",
							"Who sent you bastards? You're fucking amateurs!",
							"You can't touch me! I got protection!",
							"Hey, pendejos? I fucked your mothers! All of them!",
							"[laughs] Motherfuckers! Whatchu gonna do, huh?",
							"Go home, you bastards! You can't get in here!",
							"Hey, motherfuckers... you ain't got no chance!",
							"You think you can take me down, eh? Think again!",
							"Don't make me come down there, eh?"							
						}
					}
				},
		--reservoir dogs
			--day "2" (timeline wise; day 1 gameplay wise)
				Play_mrb_rvd_03 = {
					text = "Why don't we play with our little squeaky toy here while we wait? Okay, doughnut boy, I'm gonna take this off, and you're gonna talk, capiche? Who set us up?",
					override_name = "Mr. Blue",
					override_text_color = ClosedCaptions.color_data.mrblue,
					category = "mission_dialogue",
					priority = 37,
					duration = 9
				},
				Play_mrb_rvd_03c = {
					text = "Hey... look... I'm just following orders! I don't know nothin'!\nMR BLUE:I don't think you're bein' honest, little pig. ",
					override_name = "Policeman",
					override_text_color = ClosedCaptions.color_data.mrblue,
					line_variations = {
						recombinable = true,
						standard_mode = {
							{
								"[shaky] Hey... look... they don't tell me anything, man.",
								"[crying] C'mon, man... I don't know what you're talking about.",
								"[crying] Please, man... I'm just a rookie.",
								"[shaky] Hey, man... I'm just followin' orders. I don't know nothin'."
							},
							{
								"\nMR BLUE: You had one chance and you blew it.",
								"\nMR BLUE: Now, why don't I believe you? Maybe I should just plug this guy.",
								"\nMR BLUE: I don't think you're bein' honest, lil' pig. Maybe I'll just cap ya.",
								"\nMR BLUE: If you're not gonna talk, I'm just gonna go ahead and shoot ya."
							}
						}
					},
					category = "mission_dialogue",
					priority = 37,
					duration = 8
				},
				Play_mrp_rvd_04 = {
					text = "(complaining that heisters were slow)",
					category = "mission_dialogue",
					override_name = "Mr. Purple",
					override_source_id = "mrp",
					override_text_color = ClosedCaptions.color_data.mrpurple,
					max_distance = 1500,
					priority = 37,
					duration = 6,
					line_variations = {
						standard_mode = {
							"JESUS H. GODDAMN CHRIST, that took long!",
							"The FUCK took so long, man?!",
							"Shit, man, I'm dyin' out here! What'd you do, stop for a hot dog?!"
						}
					}
				},
				Play_mrp_rvd_05 = {
					text = "[groaning in pain]",
					category = "mission_dialogue",
					override_name = "Mr. Purple",
					override_source_id = "mrp",
					override_text_color = ClosedCaptions.color_data.mrpurple,
					max_distance = 1500,
					priority = 37,
					line_variations = {
						standard_mode = {
							"[grunting in pain]",
							"[groaning in pain]",
							"[pained grunt]"
						}
					}
				},
				Play_mrp_rvd_06 = {
					text = "(What happened back there?!)",
					category = "mission_dialogue",
					override_name = "Mr. Purple",
					override_source_id = "mrp",
					override_text_color = ClosedCaptions.color_data.mrpurple,
					max_distance = 1500,
					priority = 37,
					duration = 7,
					line_variations = {
						standard_mode = {
							"The fuck happened back there?! No way the cops knew we were there that fast!",
							"Some weird shit happenin' on this job, man!",
							"Someone please tell me if we got anything worth a damn out of that place!",
							"I swear I was bein' followed for a while, and not by cops, either!",
							"Someone better explain this shit to me!",
							"Goddamn cops knew we were gonna be there! Too many of them for a simple diamond job! Civvies, too!"
						}
					}
				},
				Play_mrp_rvd_07 = {
					text = "(Fuck this shit, I'm out!)",
					category = "mission_dialogue",
					override_name = "Mr. Purple",
					override_source_id = "mrp",
					override_text_color = ClosedCaptions.color_data.mrpurple,
					max_distance = 1500,
					priority = 37,
					duration = 8,
					line_variations = {
						standard_mode = {
							"Fuck this shit, man.",
							"If we get out of this one, I might just leave this fuckin' town.",
							"Ain't never seen a job this screwed!",
							"Right now I wish I was some other guy on some other job.",
							"Wish I were at a burger joint with my girl right now.",
							"Man... I could really use a beer.",
							"[angry] So what's it like in D.C., huh? All those scumbag politicians on the payroll keep the cops off your asses?",
							"Diamond jobs always turn into fuckin' bloodbaths. Heard they had to scrape a guy off the floor with a shovel once 'cause of all the dried blood."
						}
					}
				},
				Play_mrp_rvd_08 = {
					text = "(Are we sure this mess isn't the PAYDAY Gang's fault?)",
					category = "mission_dialogue",
					override_name = "Mr. Purple",
					override_source_id = "mrp",
					override_text_color = ClosedCaptions.color_data.mrpurple,
					max_distance = 1500,
					duration = 6,
					priority = 37,
					line_variations = {
						standard_mode = {
							"So what do you really know about these PAYDAY guys? Can't imagine this shit is our fault.",
							"This PAYDAY Gang Cabo brought in. We sure this isn't their mess?"
						}
					}
				},
				Play_mrb_rvd_05 = {
					text = "(Are we sure this mess isn't the PAYDAY Gang's fault?)",
					category = "mission_dialogue",
					override_name = "Mr. Blue",
					override_text_color = ClosedCaptions.color_data.mrpurple,
					max_distance = 1500,
					priority = 37,
					line_variations = {
						standard_mode = {
							"Bain's always been a stand-up guy, from what I've heard. Hope you get it sorted.",
							"Remember the old days, when heists didn't need computers? Back then, you knew who to trust.",
							"'S never good to lose your boss. Hope you guys get it sorted.",
							"Diamonds are just bad luck, man.",
							"Feeling good there, doughnut boy?",
							"Exciting stuff, this betrayal business. You guys get it a lot?",
							"I think that burger I had for lunch isn't sittin' right.",
							"This betrayal shit almost makes me wanna go back to prison."
						}
					}
				},
		--green bridge
				Play_kzo_glc_01 = {
					text = "I didn't know my brothers had arranged for my escape! This is a pleasant surprise!",
					category = "mission_dialogue",
					override_name = "Giant",
					priority = 36,
					duration = 7
				}
			}
		}
	},
	event_ids = {}
}