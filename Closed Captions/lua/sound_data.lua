ClosedCaptions._sounds = {
	languages = {
		english = {
			vo_special = { --there exit character-specific variants for most of these, but we'll burn that bridge when we come to it
				["f11@_sin"] = { --macroized
					text = "$CHARACTER_NAME! Help me up!",
					caps = true,
					macro = "character_name",
					priority = 37
				},
				["f13@_sin"] = { --macroized
					text = "$CHARACTER_NAME, come uncuff me!",
					macro = "character_name",
					priority = 37
				},
				["f21@_sin"] = { --macroized
					text = "$CHARACTER_NAME, follow me!",
					macro = "character_name",
					priority = 37
				},
				["Play_ban_i20@"] = {
					override_name = "Bain",
					category = "contractor_vo",
					text = "$CHARACTER_NAME, you're the last one standing! It's all up to you!",
					macro = "character_name",
					priority = 37
				}
			},
			vo = {
				pickup_ammo = {
					override_name = "SFX",
					text = "picked up ammo",
					category = "sfx",
					override_source_id = true, --if true, generates a new source_id (which will not replace any existing voiceline captions); else if any other non-nil value, uses this as source_id
					duration = 1,
					priority = 25
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
				wp_ace_pick_up = {
					override_name = "SFX",
					text = "picked up Throwing Card",
					override_source_id = true,
					duration = 25,
					category = "sfx"
				},
				radio = {
					override_name = "SFX",
					text = "radio plays",
					priority = 40,
					loop_data = {
						loop_interval = -1
					},
					category = "sfx"
				},
				christmas_radio = {
					override_name = "SFX",
					text = "radio plays Christmas music",
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
					category = "sfx"
				},
				jukebox_shuffle = {
					override_name = "SFX",
					text = "(radio music plays)",
					max_distance = 1500,
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
--				server_noise_loop_stop = { --this does not, in fact, work
--					stops_line = "server_noise_loop",
--					category = "stops"
--				},
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
				ammo_bag_drop = {
					override_name = "SFX",
					text = "(bag placed)",
					priority = 37,
					category = "sfx"
				},
				door_wooden_kicked_in = {
					override_name = "SFX",
					text = "(door kicked open)",
					priority = 37,
					category = "sfx"
				},
				metal_door_knock = {
					override_name = "SFX",
					text = "(door knocking)",
					override_source_id = "metal_door",
					priority = 37,
					category = "sfx"
				},
				metal_door_open = {
					override_name = "SFX",
					text = "(door opens)",
					override_source_id = "metal_door",
					priority = 37,
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
				wp_arrow_placeholder_pick_up = {
					override_name = "SFX",
					text = "picked up Arrow",
					override_source_id = true,
					duration = 1,
					priority = 25,
					category = "sfx"
				},
				trip_mine_sensor_alarm = {
					override_name = "SFX",
					category = "sfx",
					duration = 2,
					priority = 25,
					text = "[Trip mine sensor triggered]"
				},
				trip_mine_explode = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 25,
					text = "[Trip mine explosion]"
				},
				trip_mine_beep_armed = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 26,
					text = "[Trip mine activated]"
				},
				trip_mine_arm = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 26,
					text = "[Trip mine set to Explosive Mode]"
				},
				trip_mine_disarm = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 26,
					text = "[Trip mine set to Sensor Mode]"
				},
				trip_mine_attach = {
					override_name = "SFX",
					category = "sfx",
					duration = 1,
					priority = 26,
					text = "[Trip mine placed/warmup]"
				},
				trip_mine_beep_explode = {
					override_text = "SFX",
					category = "sfx",
					duration = 1,
					priority = 25,
					text = "[Trip mine explosion triggered!]"
				},
				flashbang_beep = {
					override_name = "SFX",
					text = "flashbang beeping",
					duration = 1,
					priority = 11,
					category = "sfx",
					disabled = false
				},
				toilet_flush = {
					override_name = "SFX",
					text = "(toilet flushing)",
					priority = 38,
					category = "sfx"
				},
				hand_dryer_on = {
					override_name = "SFX",
					text = "(hand dryer whirring)",
					loop_data = {
						loop_interval = -1
					},
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
				fire_sprinkler_start = {
					override_name = "SFX",
					text = "(fire sprinkler activates)",
					priority = 38,
					category = "sfx"
				},
				fire_hiss = {
					override_name = "SFX",
					text = "(fire hisses)",
					priority = 38,
					category = "sfx"
				},
				large_fire_stop = { --needs a stops_line
					override_name = "SFX",
					text = "(fire stops)",
					priority = 38,
					category = "sfx"
				},
				npc_crowd_scream_01 = {
					override_name = "SFX",
					text = "(crowd screaming)",
					priority = 38,
					category = "sfx"
				},
				goat_fan_woosh = {
					override_name = "SFX",
					text = "(Goat riding the fan)",
					priority = 38,
					category = "sfx"
				},
				goat_hang_scaffold = {
					override_name = "SFX",
					text = "(Goat bleats from scaffolding)",
					priority = 38,
					category = "sfx"
				},
				goat_kick = {
					override_name = "SFX",
					text = "(Goat kicks!)",
					priority = 38,
					category = "sfx"
				},
				goat_sleep = {
					override_name = "SFX",
					text = "(Goat snores, bleats)",
					priority = 38,
					category = "sfx"
				},
				goat_says_meh = {
					override_name = "SFX",
					text = "(Goat bleats)",
					priority = 38,
					category = "sfx"
				},
				goat_says_meh_loop = {
					override_name = "SFX",
					text = "(Goat bleating)",
					priority = 38,
					category = "sfx",
					loop_data = {
						loop_interval = 5,
						use_random_loop_interval = true
					}
				},
				goat_lick = {
					override_name = "SFX",
					text = "(Goat licks)",
					priority = 38,
					category = "sfx"
				},
				goat_headbutt = {
					override_name = "SFX",
					text = "(Goat headbutts)",
					priority = 38,
					category = "sfx"
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
				hos_alarm = {
					override_name = "SFX",
					text = "(hospital alarm!)",
					category = "sfx",
					duration = 30
				},
				hos_wardrobe_change = {
					text = "[clothes rustling]",
					override_name = "SFX",
					duration = 5
				},
				hos_fake_sentry_place = {
					text = "[fake sentry placed]",
					override_name = "SFX",
					duration = 3
				},
				hos_crowd_walla = {
					text = "[hospital din]",
					override_name = "SFX",
					duration = 30,
					loop_data = {
						loop_interval = -1
					}
				},
				hos_crowd_walla_stop = {
					category = "stops",
					stops_line = "hos_crowd_walla"
				},
				hos_pa_announcement_all = {
					override_name = "SFX",
					text = "(hospital PA announcement)",
					duration = 5,
					category = "sfx"
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
				hlp_keycard_box_appear = {
					override_name = "SFX",
					text = "(keycard box poof)",
					duration = 2,
					category = "sfx"
				},
				hlp_poof_big = {
					override_name = "SFX",
					text = "(loud poof, sparkles)",
					duration = 2,
					category = "sfx"
				},
				hos_witch_cry_loop_01 = {
					override_name = "Witch",
					override_text_color = ClosedCaptions.color_data.l4d_witch,
					text = "[Witch Groans Softly]", --directly from l4d2
					priority = 50,
					is_locationless = true,
					loop_data = {
						loop_interval = 3,
						use_random_loop_interval = true
					},
					category = "sfx"
				},
				Play_howl_reverb = {
					override_name = "SFX",
					text = "(spooky howl)",
					priority = 50,
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
				inside_container = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "(cargo container clanking)"
				},
				container_drop = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "(cargo container drops)"
				},
				kick_open_container = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "(cargo container opens)"
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
				melee_hit_body = {
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
					category = "sfx"
				},
				player_hit_permadamage = {
					override_name = "SFX",
					text = "(health damaged!)",
					priority = 11,
					category = "sfx"
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
				vial_break_2d = {
					override_name = "SFX",
					text = "(vial breaks)",
					priority = 20,
					category = "sfx"
				},
				queue_beep = {
					override_name = "SFX",
					text = "(bank queue beep)",
					priority = 50,
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
				flashbang_explode_sfx_player = {
					override_name = "SFX",
					text = "(flashbang explodes!)",
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
				nine_lives_skill = {
					override_name = "SFX",
					text = "(nine lives skill activates!)",
					priority = 11,
					category = "sfx"
				},
				art_galley_alarm_on_slow_fade = {
					override_name = "SFX",
					text = "[ALARM KLAXON]",
					priority = 37,
					duration = 60,
					category = "sfx"					
				},
				alarm_museum_on_slow_fade = {
					override_name = "SFX",
					text = "[ALARM KLAXON]",
					duration = 30,
					priority = 37,
					category = "sfx"
				},
				card_reader_first_card = {
					override_name = "SFX",
					text = "keycard machine beeps",
					duration = 3,
					priority = 37,
					category = "sfx"
				},
				card_reader_second_card = {
					override_name = "SFX",
					text = "keycard machine beeps rapidly",
					duration = 3,
					priority = 37,
					category = "sfx"
				},
				alarm_countdown_loop = {
					override_name = "SFX",
					text = "[Slow alarm countdown ticking]",
					category = "sfx",
					loop_data = {
						loop_interval = -1 --constant
					},
					priority = 37
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
				bag_light_drop = {
					override_name = "SFX",
					text = "[light bag placed]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				bag_medium_drop = {
					override_name = "SFX",
					text = "[medium bag placed]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				bag_heavy_drop = {
					override_name = "SFX",
					text = "[heavy bag placed]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				phone_01_no_answer = {
					override_name = "SFX",
					text = "[phone ringing]",
					category = "sfx",
					priority = 38,
					duration = 30
				},
				phone_02_no_answer = {
					override_name = "SFX",
					text = "[phone ringing]",
					category = "sfx",
					priority = 38,
					duration = 30
				},
				phone_03_no_answer = {
					override_name = "SFX",
					text = "[phone ringing]",
					category = "sfx",
					priority = 38,
					duration = 30
				},
				phone_04_no_answer = {
					override_name = "SFX",
					text = "[phone ringing]",
					category = "sfx",
					priority = 38,
					duration = 30
				},
				telephone_booth_ringing = {
					override_name = "SFX",
					text = "[telephone booth ringing]",
					category = "sfx",
					priority = 38,
					duration = 30
				},
				telephone_booth_ringing_stop = {
					override_name = "SFX",
					text = "[telephone booth stops]",
					category = "sfx",
					priority = 38,
					duration = 2
				},
				branch_bank_phone_call = {
					override_name = "SFX",
					text = "[phone ringing]",
					category = "sfx",
					priority = 38,
					duration = 30
				},
				branch_bank_phone_call_pickup = {
					override_name = "SFX",
					text = "[phone answered]",
					category = "sfx",
					priority = 38,
					duration = 30
				},
				cellphone_01_no_answer = {
					override_name = "SFX", --looped
					text = "[cellphone ringing]",
					priority = 37,
					category = "sfx"
				},
				cellphone_01_answer = {
					override_name = "SFX",
					text = "[cellphone answered]",
					priority = 37,
					category = "sfx"
				},
				hos_phone_call = {
					override_name = "SFX",
					text = "[hospital phone ringing]",
					category = "sfx",
					loop_data = {
						loop_interval = 2
					},
					priority = 37,
					duration = 2
				},
				hos_phone_answer = {
					override_name = "SFX",
					text = "[hospital phone answered]",
					category = "sfx",
					priority = 38,
					stops_line = "hos_phone_call",
					duration = 2
				},
				elevator_ding = {
					override_name = "SFX",
					text = "[elevator dings]",
					category = "sfx",
					priority = 37,
					duration = 2
				},
				keypad_wrong_code = {
					override_name = "SFX",
					text = "[keypad wrong code]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				keypad_correct_code = {
					override_name = "SFX",
					text = "[keypad correct code]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				server_room_door_open = {
					override_name = "SFX",
					text = "[server room door opens]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				laser_shutdown_left = {
					override_name = "SFX",
					text = "[left laser deactivates]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				laser_shutdown_right = {
					override_name = "SFX",
					text = "[right laser deactivates]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				laser_warning_on_left = {
					override_name = "SFX",
					text = "[left laser activates]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				laser_warning_on_right = {
					override_name = "SFX",
					text = "[right laser activates]",
					category = "sfx",
					priority = 37,
					duration = 3
				},
				hacking_device = { --needs max distance
					override_name = "SFX", --looped
					text = "[hacking noise]",
					category = "sfx",
					priority = 37,
					duration = 10,
					loop_data = {
						loop_interval = 5
					}
				},
				hacking_device_stop = {
					category = "sfx",
					stops_line = "hacking_device",
					category = "stops"
				},
				vo_special = {
					category = "UNKNOWN",
					disabled = true
				},
				swat_explosion = {
					override_name = "SFX",
					category = "UNKNOWN",
					priority = 37,
					text = "(SWAT explosive breaches wall)"
				},
				Play_pln_spawn_01 = {
					override_name = "Bain",
					text = "Security just dispatched another shift! Stay alert!",
					priority = 10,
					category = "contractor_vo",
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
					category = "contractor_vo",
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
					category = "contractor_vo",
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
					category = "contractor_vo",
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
					category = "contractor_vo",
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
					category = "contractor_vo",
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
				Play_ban_b12 = {
					text = "(assault finished)",
					category = "contractor_vo",
					priority = 37,
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
				Play_pln_ctci_01 = {
					text = "(keep the civilians down)",
					category = "contractor_vo",
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
					category = "contractor_vo",
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
					category = "contractor_vo",
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
				Play_ban_h01x = {
					category = "contractor_vo",
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
				policecar_approaching = { --looped, i think... --! needs review, i don't need this line on my hud 24/7
					override_name = "SFX",
					category = "sfx",
					priority = 40,
					text = "(police car approaching)",
					loop_data = {
						loop_interval = -1 --constant
					}
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
				birds_fly_away = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "(birds squawk, fly away)"
				},
				l4n_x01a_any_3p = {
					override_name = "Cooks",
					text = "(screams, death gurgles)",
					priority = 37,
					category = "mission_dialogue"
				},
				cooking_meth = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "[cooking meth]"
				},
				cooking_meth_stop = {
					override_name = "SFX",
					category = "sfx",
					text = "[meth cooking stops]",
					priority = 37,
					disabled = true
				},
				c45_fire = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "[gunshot]"
				},
				c45_npc1a_1shot = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "[gunshot]"
				},
				c45_npc1b_1shot = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "[gunshot]"
				},
				c45_npc1c_1shot = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
					text = "[gunshot]"
				},
				whistling_attention = {
					text = "[whistle]",
					category = "mission_dialogue",
					priority = 37,
					priority = 5
				},
				play_pln_gen_count_01 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's one!"
				},
				play_pln_gen_count_02 = {
					override_name = "Bain",
					category = "contractor_vo",
					text = "That's two!"
				},
				play_pln_gen_count_03 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's three!"
				},
				play_pln_gen_count_04 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's four!"
				},
				play_pln_gen_count_05 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's five!"
				},
				play_pln_gen_count_06 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's six!"
				},
				play_pln_gen_count_07 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's seven!"
				},
				play_pln_gen_count_08 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's eight!"
				},
				play_pln_gen_count_09 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's all of them. Let's get out of here!"
				},
				play_pln_gen_count_10 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "That's enough, if you want to leave!"
				},
				play_pln_gen_count_11 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "Nice, that's a quarter!"
				},
				play_pln_gen_count_12 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "Cool, that's half of it!"
				},
				play_pln_gen_count_13 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "Halfway there!"
				},
				play_pln_gen_count_14 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "Almost got it all!"
				},
				play_pln_gen_count_15 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "Just two more!"
				},
				play_pln_gen_count_16 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "One more!"
				},
				play_pln_gen_count_17 = {
					override_name = "Bain",
					category = "contractor_vo",
					priority = 37,
					text = "Keep 'em coming!"
				},
				play_pln_gen_lkgo_01 = {
					override_name = "Bain",
					category = "contractor_vo",
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
				g01 = {
					variants = {
						criminal = {
							text = "Go downstairs",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = { --technically has loud/stealth sound variants
											"Downstairs!",
											"Down the stairs!"
										}
									}
								}
							}
						}
					}
				},
				g02 = {
					variants = {
						criminal = {
							text = "Go upstairs",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Upstairs!",
											"Up the stairs!"
										}
									}
								}
							}
						}
					}
				},
				g03 = {
					variants = {
						criminal = {
							text = "Go left",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"To the left!",
											"Left!"
										}
									}
								}
							}
						}
					}
				},
				g04 = {
					variants = {
						criminal = {
							text = "Go right",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"To the right!",
											"Right!"
										}
									}
								}
							}
						}
					}
				},
				g05 = {
					variants = {
						criminal = {
							text = "Go up",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								},
							}
						}
					}
				},
				g06 = {
					variants = {
						criminal = {
							text = "Go down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g07 = {
					variants = {
						criminal = {
							text = "We need to get out",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Get out!",
											"We've gotta get out!"
										}
									}
								}
							}
						}
					}
				},
				g08 = {
					variants = {
						criminal = {
							text = "Get in",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Inside!",
											"Get in!"
										}
									}
								}
							}
						}
					}
				},
				g09 = {
					variants = {
						criminal = {
							text = "Hurry!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g10 = {
					variants = {
						criminal = {
							text = "Careful",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Careful, now!",
											"Careful!"
										}
									}
								}
							}
						}
					}
				},
				g11 = {
					variants = {
						criminal = {
							text = "Wrong way",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"This is the wrong way!",
											"Not this way!"
										}
									}
								}
							}
						}
					}
				},
				g12 = {
					variants = {
						criminal = {
							text = "This way",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"This is right!",
											"This way!"
										}
									}
								}
							}
						}
					}
				},
				g13 = {
					variants = {
						criminal = {
							text = "Let's go",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Come on!",
											"Let's go!"
										}
									}
								}
							}
						}
					}
				},
				g14 = {
					variants = {
						criminal = {
							text = "This is it!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"This is it!",
											"This is the place!"
										}
									}
								}
							}
						}
					}
				},
				g15 = {
					variants = {
						criminal = {
							text = "Look there",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Over there!",
											"There!"
										}
									}
								}
							}
						}
					}
				},
				g16 = {
					variants = {
						criminal = {
							text = "Keep defending",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g17 = {
					variants = {
						criminal = {
							text = "Time to go",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g18 = {
					variants = {
						criminal = {
							text = "Move faster",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g19 = {
					variants = {
						criminal = {
							text = "Go straight",
							category = "heister_callouts",
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
							rb15 = {
								line_variations = {
									standard_mode = {
										"Straight on!",
										"Straight ahead!"
									}
								}
							}
						}
					}
				},
				g20 = {
					variants = {
						criminal = {
							text = "Jump down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g21 = {
					variants = {
						criminal = {
							text = "Placed drill",
							category = "heister_callouts",
							priority = 40,
							subvariants = { 
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
										assault_mode = {}
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
						}
					}
				},
				g22 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = { --!
									text = "Keep drilling, you piece of shit!"
								},
								rb555 = { --!
									line_variations = {
										standard_mode = {
											"Piece of shit drill!",
											"This drill is a piece of shit!"
										}
									}
								}
							}
						}
					}
				},
				g23 = {
					variants = {
						criminal = {
							text = "Shoot them!",
							category = "heister_callouts",
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
								disabled = true
							}
						}
					}
				},
				g24 = {
					variants = {
						criminal = {
							text = "Victory",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g25 = {
					variants = {
						criminal = {
							text = "Take out the cameras!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g26 = {
					variants = {
						criminal = {
							text = "Use cable ties",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g27 = {
					variants = {
						criminal = {
							text = "Remember, no civilian casualties.",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Hey, watch the bloody civilians!",
											"Crikey, keep the civvies in check!"
										}
									}
								}
							}
						}
					}
				},
				g28 = {
					variants = {
						criminal = {
							text = "We're almost there!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g29 = {
					variants = {
						criminal = {
							text = "(Exasperation)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g30 = {
					variants = {
						criminal = {
							text = "Killed Bulldozer",
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
									assault_mode = {}
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
									assault_mode = {}
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
						}
					}
				},
				g43 = {
					variants = {
						criminal = {
							text = "Throwing grenade",
							category = "heister_callouts",
							priority = 40,
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
							rb15 = {
								line_variations = {
									standard_mode = {
										"Grenade!",
										"GRENADE!",
										"Haha, BOOM!",
										"Hahaha, BOOM!",
										"Grenade out!",
										"Haha, GRENADE!",
										"Take that, you arseholes!",
									}
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
					variants = {
						criminal = {
							text = "(Awestruck)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
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
										assault_mode = {}
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
						}
					}
				},
				g61 = {
					variants = {
						criminal = {
							text = "I got the drill",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				g62 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									text = "Thirty seconds!"
								},
								rb4 = {
									text = "Thirty seconds!"
								}
							}
						}
					}
				},
				g63 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3= {
									text = "One minute!"
								},
								rb4 = {
									text = "One minute!"
								}
							}
						}
					}
				},
				g64 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = { -- should it be "1:30" ?
								rb3 = {
									text = "One-thirty!"
								},
								rb4 = {
									text = "One-thirty!"
								}
							}
						}
					}
				},
				g65 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									text = "Two minutes."
								},
								rb4 = {
									text = "Two minutes."
								}
							}
						}
					}
				},
				g66 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									text = "Two-thirty."
								},
								rb4 = {
									text = "Two-thirty."
								}
							}
						}
					}
				},
				g67 = {
					text = "Any second now...",
					variants = {
						criminal = {
							text = "Any second now",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									line_variations = {
										standard_mode = {
											"Steady now! Hold it...",
											"Any second, aaaany second...",
											"Any second, now...",
											"Wait for it, wait for it..."
										},
										assault_mode = {}
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
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g68 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									disabled = true
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
								}
							}
						}
					}
				},
				g69 = { --haha nice
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								}
							}
						}
					}
				},
				g70 = {
					text = "Cops just got here.",
					category = "UNKNOWN"
				},
				g72 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									text = "I'm on it!"
								}
							}
						}
					}
				},
				g90 = {
					variants = {
						cop = {
							text = "{g90}",
							category = "enemy_chatter",
							priority = 40,
							subvariants = {
								cop = {
									line_variations = {
										standard_mode = { --non exhaustive
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
								},
								tsr = {
									text = "(Taser taunt)",
									category = "enemy_taunts",
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
--											"Taser got sent all those to kill!", --not sure
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
								clk = {
									disabled = true
								},
								mdc = {
									text = "(Medic taunt)",
									category = "enemy_taunts",
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
								bdz = {
									text = "(Bulldozer taunt)",
									category = "enemy_taunts",
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
								}
							}
						}
					}
				},
				g92 = {
					variants = {
						criminal = {
							text = "Picked up Gage Package",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p01 = {
					variants = {
						cop = {
							text = "They have hostages! We need to delay the assault!",
							category = "enemy_chatter"
						},
						criminal = {
							text = "Alright, let's do this.",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
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
									line_variations = {
										standard_mode = {
											"Alright, let's do this.",
											"Okay, let's do this.",
											"'kay, let's do this, buddies."
										}
									}
								}
							}
						}
					}
				},
				p02 = {
					variants = {
						cop = {
							text = "Where is the fucking HRT?!",
							category = "enemy_chatter"
						},
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									line_variations = {
										standard_mode = {
											"Alright, let's get rich.",
											"Now let's get rich.",
											"Let's get rich..."
										}
									}
								},
								rb4 = {
									line_variations = {
										standard_mode = {
											"Time to make that money.",
											"Going to work.",
											"Let's make that money"
										}
									}
								}
							}
						}
					}
				},
				p03 = {
					variants = {
						cop = {
							text = "No hostages left, full force forward!",
							category = "enemy_chatter"
						},
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									disabled = true
								},
								rb4 = {
									line_variations = {
										standard_mode = {
											"Time to break a little bad.",
											"Let's break bad."
										}
									}
								}
							}
						}
					}
				},
				p04 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								}
							}
						}
					}
				},
				p05 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p06 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								}
							}
						}
					}
				},
				p07 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p08 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p09 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p10 = {
					text = "Broke-dick piece of shit drill!",
					category = "UNKNOWN"
				},
				p12 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Go, go!",
											"GO, GO!"
										}
									}
								}
							}
						}
					}
				},
				p13 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Get a move on!",
											"GET A MOVE ON!"
										}
									}
								}
							}
						}
					}
				},
				p14 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Move it!",
											"MOVE IT!"
										}
									}
								}
							}
						}
					}
				},
				p15 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								}
							}
						}
					}
				},
				p16 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p17 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p18 = {
					text = "What're you waiting for!?",
					category = "UNKNOWN"
				},
				p19 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p20 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p21 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p22 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p23 = {
					variants = {
						criminal = {
							text = "Get ready for action.",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p24 = {
					variants = {
						criminal = {
							text = "(Assault finished, back to work)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p25 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p26 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p27 = {
					variants = {
						criminal = {
							text = "Secured loot",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				p28 = {
					variants = {
						criminal = {
							text = "All loot secured",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p29 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p30 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p31 = {
					variants = {
						criminal = {
							text = "Spotted bag repossession",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p32 = { --priority
					variants = {
						criminal = {
							text = "Waiting here",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p33 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p34 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"They're coming in from above!",
											"They're on the roof!"
										}
									}
								}
							}
						}
					}
				},
				p35 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"They're coming down the walls!",
											"They're coming down the sides!"
										}
									}
								}
							}
						}
					}
				},
				p36 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p37 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p38 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"They're coming in from outside!",
											"They're climbing in from outside!"
										}
									}
								}
							}
						}
					}
				},
				p39 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "They're climbing down on the outside!"
								}
							}
						}
					}
				},
				p40 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "They're climbing up on the outside!"
								}
							}
						}
					}
				},
				p41 = {
					variants = {
						criminal = {
							text = "Spotted SWAT Helicopter",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p42 = {
					variants = {
						criminal = {
							text = "Spotted SWAT Van",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p43 = {
					variants = {
						criminal = {
							category = "spotted_enemy",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p44 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"They're coming from the forest!",
											"They're coming out of the woods!"
										}
									}
								}
							}
						}
					}
				},
				p45 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				p46 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "Jump!"
								}
							}
						}
					}
				},
				p47 = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								}
							}
						}
					}
				},
				v01 = {
					variants = {
						criminal = {
							text = "Got it",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v03 = {
					variants = {
						criminal = {
							text = "We're inside",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v04 = {
					text = "Found it!",
					variants = {
						criminal = {
							text = "Found it",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"It's here!",
											"Here it is!",
											"Found it!",
											"We got it!"
										},
										assault_mode = {}
									}
								},
								rb15 = {
									line_variations = {
										standard_mode = {
											"We got it!",
											"Here it is!",
											"Found it!"
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				v05 = {
					variants = {
						criminal = {
							text = "Found one",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v06 = {
					variants = {
						criminal = {
							text = "Found another",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v07 = {
					variants = {
						criminal = {
							text = "It's done",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v08 = {
					variants = {
						criminal = {
							text = "We're done",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v09 = {
					variants = {
						criminal = {
							text = "What next?",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v10 = {
					variants = {
						criminal = {
							text = "Found keycard",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v11 = {
					variants = {
						criminal = {
							text = "Grabbed keycard",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v12 = {
					variants = {
						criminal = {
							text = "Used keycard",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v13 = {
					variants = {
						criminal = {
							text = "C4 planted, explosion incoming",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v14 = {
					variants = {
						criminal = {
							text = "Detonated C4",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Oops! Forgot to knock!",
											"We make our own fucking door!"
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
						}
					}
				},
				v15 = {
					variants = {
						criminal = {
							text = "Open this door",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v16 = {
					variants = {
						criminal = {
							text = "Open this",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				v17 = {
					variants = {
						criminal = {
							text = "Let's go",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "Let's go, team!"
								},
								rb15 = {
									text = "Let's fuckin' go!"
								}
							}
						}
					}
				},
				v18 = {
					variants = {
						criminal = {
							text = "Kill them",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Wipe 'em out!",
											"Kill 'em all!"
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
						}
					}
				},
				v19 = {
					variants = {
						criminal = {
							text = "Incoming",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"INCOMING!",
											"Here it comes!"
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
						}
					}
				},
				v20 = {
					variants = {
						criminal = {
							text = "It's arrived",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"It's arrived!",
											"It's here, it's here!",
											"Okay, it's here!"
										},
										assault_mode = {}
									}
								},
								rb15 = {
									line_variations = {
										standard_mode = {
											"We got it!",
											"It's here!",
											"It's here, it's here!"
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				v21 = {
					variants = {
						criminal = {
							text = "Loot it",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"EMPTY this place!",
											"Get fuckin' all of it!"
										}
									}
								}
							}
						}
					}
				},
				v22 = {
					variants = {
						criminal = {
							text = "We got all of it",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"We got all of it, awesome!",
											"And the mice got all of the cheese!",
											"That's it!"
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
						}
					}
				},
				v23 = {
					variants = {
						criminal = {
							text = "Drill finished",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Drill's done.",
											"Drill's done!"
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
						}
					}
				},
				v24 = {
					variants = {
						criminal = {
							text = "Hack finished",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Computer's done!",
											"The computer's done."
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
						}
					}
				},
				v25 = {
					variants = {
						criminal = {
							text = "It's done",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"It's done, c'mon!",
											"It's finished, let's get on with it!"
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
						}
					}
				},
				v26 = {
					variants = {
						criminal = {
							text = "Exit this way",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									disabled = true --no lines :(
								},
								rb4 = {
									line_variations = {
										standard_mode = {
											"There's the ride!",
											"There's the getaway!"
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
						}
					}
				},
				v27 = {
					variants = {
						criminal = {
							text = "Spotted cops in the vents",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"I thought I heard them in the ventilation shafts- watch out!",
											"Hey! They're in the ventilation!"
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
						}
					}
				},
				v28 = {
					variants = {
						criminal = {
							text = "Spotted the mark",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"The mark's in sight!",
											"Got my eyes on the mark!"
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
						}
					}
				},
				v29 = {
					variants = {
						criminal = {
							text = "She's there",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"There she is!"
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
						}
					}
				},
				v30 = {
					variants = {
						criminal = {
							text = "He's there",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"There he is!"
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
						}
					}
				},
				v31 = {
					variants = {
						criminal = {
							text = "They're there",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									disabled = true
								},
								rb4 = {
									line_variations = {
										standard_mode = {
											"There they are!"
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
						}
					}
				},
				v32 = {
					variants = {
						criminal = {
							text = "It's there",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									disabled = true
								},
								rb4 = {
									line_variations = {
										standard_mode = {
											"There it is!"
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
						}
					}
				},
				v33 = {
					variants = {
						criminal = {
							text = "Find the manager",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									text = "Find that manager!",
								},
								rb4 = {
									text = "Where's the goddamn manager?"
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
						}
					}
				},
				v34 = {
					variants = {
						criminal = {
							text = "(heat speech)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb1 = {
									duration = 15,
									text = "A'ight, hear me! This is a robbery! We ain't gonna hurt you! We after the bank's money, not yours! Your shit's insured by the federal government, a'ight? Ain't gonna lose a dime! Think of your family, don't try to be a hero, just shut up and stay down, and this'll all be over!"
								},
								rb3 = {
									duration = 19,
									text = "Listen up! This is a robbery! We want to harm no-one! We're after the bank's money, not yours! Your money is insured by the federal government! You're not gonna lose a dime! Think of your loved ones, don't try to be a hero. Now shut up, and stay the fuck down, and this will soon be over."
								},
								rb4 = {
									duration = 22,
									text = "Listen up! This is a robbery! We want to harm no-one! We're after the bank's money, not yours! Your money is insured by the federal government! You're not gonna lose a dime! Think of your beloved ones, don't try to be a hero. Just shut up, and stay down, and this'll be over in no time."
								},
								rb15 = {
									duration = 30,
									text = "Listen up, you bloody drongos! This is a robbery! We're not here to hurt ya, but that can quickly change dependin' on your FUCKIN' actions, got it? We're after this BANK'S money, not yours. All your BLOODY money's insured by the FUCKIN' government, alright? You won't lose a FUCKIN' penny so think of your dipshit FAMILIES, now, your fat spouses and your ugly kids, you just KEEP IT SHUT like the good tools you are and STAY DOWN, and this'll be over in a bloody heartbeat."
								}
							}
						}
					}
				},
				v35 = {
					variants = {
						criminal = {
							text = "Bain?!",
							category = "heister_callouts",
							priority = 40,
							duration = 2,
							subvariants = {
								rb1 = {
									text = "BAIN! You listenin'?!"
								},
								rb3 = {
--									disabled = true
								},
								rb4 = {
									"BAIN!?"
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
						}
					}
				},
				v36 = {
					variants = {
						criminal = {
							text = "Now what?",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"What do we do now?",
											"The fuck do we do now?"
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
						}
					}
				},
				v37 = {
					variants = {
						criminal = {
							text = "Feeling uneasy",
							priority = 40,
							subvariants = {
								rb3 = {
									disabled = true --no lines :(
								},
								rb4 = {
									line_variations = {
										standard_mode = {
											"I've got a bad feeling about this."
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
						}
					}
				},
				v38 = {
					variants = {
						criminal = {
							text = "Search the place",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Sweep the place."
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
						}
					}
				},
				v39 = {
					variants = {
						criminal = {
							text = "Find the mark",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Let's find that mark."
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
						}
					}
				},
				v40 = {
					variants = {
						criminal = {
							text = "Find her",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Let's find her!"
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
						}
					}
				},
				v41 = {
					variants = {
						criminal = {
							text = "Find him",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Let's find him!"
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
						}
					}
				},
				v42 = {
					variants = {
						criminal = {
							text = "Find them",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Let's find them!"
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
						}
					}
				},
				v43 = {
					variants = {
						criminal = {
							text = "Find it",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Let's find it, now!"
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
						}
					}
				},
				v44 = {
					variants = {
						criminal = {
							text = "Keep looking",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "Keep looking!"
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
						}
					}
				},
				v45 = {
					variants = {
						criminal = {
							text = "Spotted a Turret",
							category = "spotted_enemy",
							priority = 40,
							subvariants = {
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
								}
							}
						}
					}
				},
				v46 = {
					variants = {
						criminal = {
							text = "(exhuberant)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb3 = {
									disabled = true --no lines :(
								},
								rb4 = {
									line_variations = {
										standard_mode = {
											"That's what I'm talking about!",
											"Yes! YES!",
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
						}
					}
				},
				v47 = {
					variants = {
						criminal = {
							text = "Is that enough?",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "Is that enough?"
								},
								rb15 = {
									text = "Have we got enough?"
								}
							}
						}
					}
				},
				v48 = {
					variants = {
						criminal = {
							text = "Nah, let's take it all",
							category = "heister_callouts",
							priority = 5,
							subvariants = {
								rb4 = {
									text = "Nah, get all of it!"
								},
								rb15 = {
									text = "Fuck no, take it all!"
								}
							}
						}
					}
				},
				v49 = {
					variants = {
						criminal = {
							text = "Shoot it down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "Fire at it!"
								},
								rb15 = {
									text = "Shoot it down!"
								}
							}
						}
					}
				},
				v50 = {
					variants = {
						criminal = {
							text = "Spotted Murkies",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"We got murkies here!",
											"Murkies!"
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
						}
					}
				},
				v51 = {
					variants = {
						criminal = {
							text = "Move the loot",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Let's get this stuff moving!",
											"Let's carry this stuff the fuck out of here!"
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
						}
					}
				},
				v52 = {
					variants = {
						criminal = {
							text = "It's stuck",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"It's fucking stuck!",
											"Shit, she's stuck!"
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
						}
					}
				},
				v53 = {
					variants = {
						criminal = {
							text = "Smells awful!",
							category = "heister_callouts",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"That fucking smell!",
											"Holy fuck, that smell is killing me!"
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
						}
					}
				},
				v54 = {
					variants = {
						criminal = {
							text = "That was loud",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Damn, that was loud!",
											"[chuckles] What a bang!"
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
						}
					}
				},
				v55 = {
					variants = {
						criminal = {
							text = "skydive adrenaline",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"YIPPIE-KI-YAY, MOTHERFUCKER!",
											"FUCKIN' AWESOME!",
											"GERONIMO, MOTHERFUCKERS!"
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
						}
					}
				},
				v56 = {
					variants = {
						criminal = {
							text = "Greeting",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Hi.",
											"Hi!"
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
						}
					}
				},
				v57 = {
					variants = {
						criminal = {
							text = "Found crowbar",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"I found a crowbar!",
											"I got a crowbar!"
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
						}
					}
				},
				v58 = { --taxman
					variants = {
						criminal = {
							text = "Get in the chair!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"GET IN!",
											"Get in the chair!"
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
						}
					}
				},
				f30x_any = {
					variants = {
						criminal = {
							text = "Spotted Bulldozer",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f30y_any = {
					variants = {
						criminal = {
							text = "Spotted Bulldozer",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f31x_any = {
					variants = {
						criminal = {
							text = "Spotted Shield",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f31y_any = {
					variants = {
						criminal = {
							text = "Spotted Shield",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f32x_any = {
					variants = {
						criminal = {
							text = "Spotted Taser",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f32y_any = {
					variants = {
						criminal = {
							text = "Spotted Taser",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f33x_any = {
					variants = {
						criminal = {
							text = "Spotted Cloaker",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f33y_any = {
					variants = {
						criminal = {
							text = "Spotted Cloaker",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f34x_any = {
					variants = {
						criminal = {
							text = "Spotted Sniper",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f34y_any = {
					variants = {
						criminal = {
							text = "Spotted Sniper",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f42_any = {
					variants = {
						criminal = {
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
						}
					}
				},
				f44x_any = {
					variants = {
						criminal = {
							text = "Spotted SWAT Turret",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f45x_any = {
					variants = {
						criminal = {
							text = "Spotted Captain",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f47x_any = {
					variants = {
						criminal = {
							text = "Spotted Medic",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g30x_any = { --with 1s delay
					variants = {
						criminal = {
							text = "Killed Bulldozer",
							category = "killed_enemy",
							priority = 50,
							subvariants = {
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
						}
					}
				},
				g31x_any = { --1s delay
					variants = {
						criminal = {
							text = "Killed Shield",
							category = "killed_enemy",
							priority = 50,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g32x_any = {
					variants = {
						criminal = {
							text = "Killed Taser",
							category = "killed_enemy",
							priority = 50,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g33x_any = {
					variants = {
						criminal = {
							text = "Killed Cloaker",
							category = "killed_enemy",
							priority = 50,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g35x_any = {
					variants = {
						criminal = {
							text = "Killed Sniper",
							category = "killed_enemy",
							priority = 50,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g36x_any = {
					variants = {
						criminal = {
							text = "Killed Medic",
							category = "killed_enemy",
							priority = 50,
							subvariants = {
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
											"Try an' heal any of those wounds, ya pussy. (Medic)",
											"Bye-bye, Medic fuck."
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g40x_any = {
					text = "SMOKE!",
					category = "UNKNOWN"
				},
				g41x_any = {
					variants = {
						criminal = {
							text = "Flashbanged",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g42x_any = {
					variants = {
						criminal = {
							text = "Teargassed",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g80x_plu = {
					variants = {
						criminal = {
							text = "Need Medic Bag",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				g81x_plu = {
					variants = {
						criminal = {
							text = "Need Ammo Bag",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
								rb15 = {
									duration = 6,
									line_variations = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				s01x_plu = {
					variants = {
						criminal = {
							text = "Placed Ammo Bag",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"More ammo over here.",
											"There's ammo over here.",
											"Extra ammo over here.",
											"I dropped an Ammo Bag over here."
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				s02x_plu = {
					variants = {
						criminal = {
							text = "Placed Medic Bag",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"I got a Medic Bag right here.",
											"Medic Bag over here.",
											"Medic Bag over here.", --two soundfile variations
											"Some medic supplies here."
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				s05x_sin = {
					variants = {
						criminal = {
							text = "Thanks.",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"[groans] I guess I should say 'thanks.'",
											"[groans] I guess I owe you one.",
											"[groans] Finally!",
											"[groans] Thanks for that."
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				s07x_sin = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 20,
							text = "tased",
							subvariants = {
								rb3 = {
									text = "[electrocuted gibberish]"
								}
							}
						}
					}
				},
				s08x_sin = {
					variants = {
						criminal = {
							text = "Reviving teammate",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"You'll be up in no time.",
											"Lemme get you up.",
											"I'll get you back up.",
											"Let's get you up."
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				s12 = {
					variants = {
						criminal = {
							text = "Placed First Aid Kit",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Here's a First Aid Kit.", --three variations on this line
											"Here's a First Aid Kit.",
											"Here's a First Aid Kit!",
											"First Aid Kit here."
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				s13 = {
					variants = {
						criminal = {
							text = "Placed a Bodybag Case here.",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Bodybag Case right here.",
											"Bodybag Case right here!",
											"Bodybag Case, right here.",
											"Bodybag Case deployed!"
										},
										assault_mode = { --why were assault variants recorded
											"Got a Bodybag Case here!",
											"Bodybag Case"
										}
									}
								},
								rb15 = {
									line_variations = {
										standard_mode = {
											"Bodybag Case!",
											"Got a Bodybag Case here!"
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				s14 = {
					text = "Bodybag secured.",
					category = "UNKNOWN"
				},
				s32x_sin = {
					variants = {
						criminal = {
							text = "Out of Cable Ties",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
						}
					}
				},
				f11e_plu = { -- f [eleven] e_plu; curse you, monospace font
					variants = {
						criminal = {
							text = "Need help",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				s20x_sin = {
					variants = {
						criminal = {
							text = "Picking handcuffs",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				s21x_sin = {
					variants = {
						criminal = {
							text = "Escaped handcuffs",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				f02x_plu = {
					variants = {
						criminal = {
							text = "Get down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Down.",
											"Down on the ground.",
											"On the ground.",
											"Get down on the ground.",
											"Ge'down."
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				}, --to multiple hostages
				f02x_sin = {
					variants = {
						criminal = {
							text = "Get down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				}, --to single target
				f02b_sin = {
					variants = {
						criminal = {
							text = "Get down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Get down, or get killed.",
											"I said, 'down.'",
											"Don't make me say it again.",
											"Did I stutter?"
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f03a_plu = {
					variants = {
						criminal = {
							text = "Stay down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
									}
								}
							}
						}
					}
				}, --to everybody
				f03a_sin = {
					variants = {
						criminal = {
							text = "Stay down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Stay low!",
											"Stay still!",
											"Stay down!",
											"Don't move!",
											"Stay where you are!"
										},
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				}, --to single target
				f03b_any = {
					variants = {
						criminal = {
							text = "And stay down",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"And stay there!",
											"And stay put.",
											"And stay down.",
											"And don't you dare move.",
											"And don't move."
										},
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f36x_any = {
					variants = {
						criminal = { --priority
							text = "Get the fuck up!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {} --we need you, buddy! Stand up!
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f37_any = {
					variants = {
						criminal = {
							text = "Spotted a Guard",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
						}
					}
				},
				f38_any = {
					variants = {
						criminal = {
							text = "Follow me",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"C'mon, c'mon!",
											"C'mon.",
											"Come with me, move it!",
											"Come along, now.",
											"Come along, now!"
										},
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f39_any = {
					variants = {
						criminal = {
							text = "Spotted Camera",
							category = "spotted_enemy",
							priority = 55,
							subvariants = {
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
						}
					}
				},
				f40_any = { --escort go faster
					variants = {
						criminal = {
							text = "(rushing the escort forward)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb15 = {
									line_variations = {
										standard_mode = {
											"Run faster, dipshit!",
											"Move it!",
											"Move it, you drongo!",
											"Move!"
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f41_any = {
					variants = {
						criminal = {
							text = "(yelling at the escort to get up and move)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Up.",
											"Up!"
										},
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f43_any = {
					variants = {
						criminal = {
							text = "(yelling at the escort to get up and move)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Up.",
											"Up!"
										},
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				f46x_any = {
					variants = {
						criminal = {
							text = "(Interrogation)",
							category = "heister_callouts",
							priority = 5,
							subvariants = {
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
						}
					}
				},
				f48x_any = {
					variants = {
						criminal = {
							text = "Wait over there.",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Don't move!",
											"Stay still!",
											"Stay where you are!"
										},
										assault_mode = {}
									}
								},
								rb15 = {
									line_variations = {
										standard_mode = {
											"Just stay there.",
											"Hey, wait over there.",
											"Wait over there.",
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				d01x_sin = {
					variants = {
						criminal = {
							text = "Spotted jammed drill",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				d02x_sin = {
					variants = {
						criminal = {
							text = "Spotted jammed drill",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}

					}
				},
				d03_plu = {
					variants = {
						criminal = {
							text = "Spotted jammed computer",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Computer's beepin'- never good!",
											"Sounds like we need some tech help!",
											"Sounds like the computer's all fouled up!",
											"Appears like the computer's busted!",
											"Appears like the computer ain't workin' right!"
										},
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				d03_sin = {
					criminal = {
						text = "Thermal Lance is broken",
						category = "heister_callouts",
						priority = 40,
						subvariants = {
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
									assault_mode = {}
								}
							}
						}
					}
				},
				d04_plu = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				d04_sin = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				d05 = {
					variants = {
						criminal = {
							text = "It's broken",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
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
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				a01x_any = {
					variants = { --priority
						criminal = {
							text = "(Masked up)",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
								rb7 = {
									text = "It's showtime, you shites..."
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
							category = "civilian_callouts"
						}
					}
				}, --mask up				
				a02x_any = {
					text = "(panic)", --not kalm
					priority = 37,
					category = "civilian_callouts"
				},
				a03x_any = {
					variants = {
						civilian = {
							text = "(screaming in fear)",
							category = "civilian_callouts",
							priority = 37
						}
					}
				},
				i01x_any = {
					text = "[Anticipation phase]",
					category = "UNKNOWN"
				},
				r01x_sin = { --bot 'follow me' response; short delay
					variants = {
						criminal = {
							text = "Gotcha.",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Got it.",
											"I got it!",
											"Right on it."
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
						}
					}
				},
				r02a_sin = { --bot response; short delay
					variants = {
						criminal = {
							text = "I'm on my way",
							category = "heister_callouts",
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
						}
					}
				},
				r03x_sin = {
					variants = {
						criminal = {
							text = "Gotcha!",
							category = "heister_callouts",
							priority = 40,
							rb4 = {
								line_variations = {
									standard_mode = {
										"Gotcha!",
										"Gotcha."
									}
								}
							}
						}
					}
				},
				t01x_sin = {
					variants = {
						criminal = {
							text = "Just a few minutes left.",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				},
				t02x_sin = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "Halfway there.",
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
						}
					}
				},
				t03x_sin = {
					variants = {
						criminal = {
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb4 = {
									text = "Almost there.",
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
						}
					}
				},
				l01x_sin = {
					variants = {
						criminal = {
							text = "Hands up!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
						}
					}
				}, --intimidate
				l02x_sin = {
					variants = {
						criminal = {
							text = "Get on your knees!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
								rb15 = {
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
						}
					}
				}, --intimidate 2
				l03x_sin = {
					variants = {
						criminal = {
							text = "Now put your cuffs on!",
							category = "heister_callouts",
							priority = 40,
							subvariants = {
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
										assault_mode = {}
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
						}
					}
				}, --intimidate
				dsp_radio_checking_1 = {
					variants = {
						criminal = {
							text = "(answering pager)",
							category = "heister_callouts",
							priority = 20,
							subvariants = {
								rb4 = { --incomplete
									duration = 10, --default pager answer time is 10s
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
								rb15 = {
									duration = 10,
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
						}
					}
				},
				fri_dsp_stop_all = {
					category = "sfx",
					disabled = true
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
							category = "enemy_callouts", --! not sure what to categorize
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
							category = "enemy_callouts"
						--standard_mode = {
						--	"Okay, I guess I'll see you for bowling later.",
						--}
						}
					}
				},
				dsp_radio_fooled_4 = { --"no pagers remaining" warning
					variants = {
						security = {
							text = "[pager operator warning: NO PAGERS REMAINING]",
							priority = 20,
							category = "enemy_callouts"
						}
					}
				},
				dsp_stop_all = {
					text = "[radio static ends]",
					disabled = true,
					priority = 20
				}, --disable this
				l2n_a15 = {
					variants = {
						security = {
							text = "Two-Three, reporting in. We got a situation.",
							category = "enemy_callouts",
							priority = 37,
							duration = 4,
							subvariants = {
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
						}
					}
				},
				l2n_a05 = {
					variants = {
						security = {
							text = "(talking casually with pager operator)", --can be idle chatter or reporting clear, so marked as enemy_callouts for utility
							duration = 6,
							category = "enemy_callouts",
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
						}
					}
				},
				l2n_a07b = {
					variants = {
						security = {
							text = "(spotted suspicious object)",
							category = "enemy_callouts",
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
						}
					}
				},
				l2n_b01 = {
					text = "Two-Three to Control. Entrance is clear.",
					duration = 10,
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					duration = 5,
					priority = 37,
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
					category = "enemy_callouts",
					duration = 10,
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					duration = 3,
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
					category = "enemy_callouts",
					priority = 37,
					duration = 7,
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
					category = "enemy_callouts",
					priority = 37,
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
					category = "enemy_callouts",
					duration = 10,
					priority = 37,
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
				s09a = {
					text = "[reviving] Hey, man, you're not looking too good...",
					category = "UNKNOWN"
				},
				s09b = {
					text = "[reviving] Woah, you look even worse than before.",
					category = "UNKNOWN"
				},
				s09c = {
					text = "[reviving] You're looking really beat up, use a doctor bag!",
					category = "UNKNOWN"
				},
				s05a_sin = {
					text = "I feel terrible, heal me!",
					category = "UNKNOWN"
				}, --! bad
				s05b_sin = {
					text = "Whew, thanks.",
					category = "UNKNOWN"
				},

				--cops/civs
				l3n_civ = {
					variants = {
						cop = {
--							duration = 5,
							text = "Rescue the hostages",
							category = "enemy_chatter",
							priority = 90,
							line_variations = {
								standard_mode = {
									"Get the civilians!",
									"Get the canaries!",
									"Get the hostages!",
									"Get the civvies!"
								},
								assault_mode = {}
							}
						}
					}
				},
				l3n_d01 = {
					variants = {
						cop = {
							text = "Rescue the hostages",
							category = "enemy_chatter",
							priority = 90,
							line_variations = {
								standard_mode = {
									"Deploy smoke!",
									"Smoke 'em!",
									"Smoke 'em out!",
									"Smoke!"
								},
								assault_mode = {}
							}
						}
					}
				},
				l4n_a01 = {
					variants = {
						cop = {
							text = "(spotted heister)",
							category = "enemy_callouts", --chatter?
							priority = 90,
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
						}
					}
				},
				l4n_lk3a = {
					variants = {
						cop = {
							text = "(panicked chatter)",
							category = "enemy_chatter",
							priority = 90,
							line_variations = {
								standard_mode = {
									"Christ!",
									"Fuckin' hell!",
									"Christ almighty!"
								}
							}
						}
					}
				},
				l2n_lk3b = {
					variants = {
						cop = {
							category = "chatter",
							text = "(very panicked chatter)",
							priority = 90,
							line_variations = {
								standard_mode = { --non-exhaustive
									"CHRIST!",
									"INSANE!",
									"HOLY SHIT!",
									"JEEZ!"
								}
							}
						}
					}
				},
				l4n_i03 = {
					variants = {
						cop = {
							text = "(arrested heister)", --todo; this is a recombinable line
							category = "enemy_callouts",
							priority = 60,
							line_variations = {
								standard_mode = {
									"It's over now, scumbag! I hope you like prison food.",
									"This ends now, scumbag. I hope you drop the soap, a lot.",
									"It's over now, dirtbag! You're going away for a loooong time.",
									"It's over... scumbag! Get ready to do some hard time.",
									"It's over, dirtbag! I hope you drop the soap... a lot.",
									"It's over... you son of a bitch!"
								}
							}
						}
					}
				},
				l2n_mov = {
					variants = {
						cop = {
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
						}
					}
				},
				dispatch_generic_message = {
					text = "(dispatch radio chatter)",
					priority = 90,
					category = "enemy_chatter"
				},
				cloaker_spawn = {
					text = "[Cloaker spawned]",
					category = "enemy_callouts",
					priority = 40
				},
				cloaker_taunt_after_assault = {
					text = "(Cloaker taunt)",
					category = "enemy_callouts",
					priority = 70
				},
				rcloaker_taunt_during_assault = {
					text = "(Cloaker taunt)",
					category = "enemy_callouts",
					priority = 70
				},
				clk_c01x_plu = {
					text = "cloaker ???",
					category = "UNKNOWN"
				},
				cloaker_detect_christmas_mono = {
					text = "(FESTIVE CLOAKER CHARGE!)",
					priority = 11,
					category = "enemy_callouts"
				},
				cloaker_detect_christmas_stop = {
					text = "(Festive Cloaker charge stops)",
					category = "stops",
					duration = 2,
					stops_line = "cloaker_detect_christmas_mono"
				},
				cloaker_detect_mono = {
					text = "(CLOAKER CHARGE!)", --wololololo
					priority = 11,
					category = "enemy_callouts"
				},
				cloaker_presence_loop = { --needs max distance
					text = "(Cloaker idle)",
					priority = 40,
					category = "enemy_callouts",
					loop_data = {
						loop_interval = -1 --constant
					}
				},
				cloaker_presence_stop = {
					text = "(Cloaker idle stops)",
					category = "stops",
					duration = 2,
					priority = 40
				},
				cloaker_detect_stop = {
					text = "(Cloaker charge stops)",
					category = "stops",
					stops_line = "cloaker_detect_mono",
					duration = 2,
					priority = 40
				},
				visor_lost = { --SEN-I-SOSHITSU
					text = "[lost visor]",
					priority = 60,
					category = "enemy_callouts",
					line_variations = {
						standard_mode = {
							"My visor!",
							"That won't stop me!",
							"I'll kick your ass... with or without my visor!"
						}
					}
				},
				entrance = {
					variants = {
						cop = {
							priority = 60,
							subvariants = {
								bdz = {
									text = "(Bulldozer spawned)",
									category = "enemy_callouts",
									line_variations = {
										standard_mode = {
											"BULLDOZER! MAKE WAY!"
										}
									}
								},
								tsr = {
									text = "(Taser spawned)",
									category = "enemy_callouts",
									line_variations = {
										standard_mode = {
											"Shock treatment prescribed!"
										}
									}
								},
								clk = {
									text = "(Cloaker spawned)",
									category = "enemy_callouts"
								},
								mdc = {
									text = "(Medic spawned)",
									category = "enemy_callouts",
									line_variations = {
										standard_mode = {
											"Somebody order a Medic?",
											"Medic in the house!",
											"It looks like a surgery ward in here, there's blood all over!"
										}
									}
								},
								shld = {
									text = "(Shield spawned)",
									category = "enemy_callouts",
									line_variations = {
										standard_mode = {
											"Shield coming through.",
											"[Shield clanking]"
										}
									}
								}
							}
						}
					}
				},
				mdc_entrance = {
					text = "(Medic spawned)",
					priority = 60,
					category = "enemy_callouts"
				},
				rmdc_entrance = {
					text = "(enters in Russian)", --haha i am funni 
					priority = 60,
					category = "enemy_callouts"
				},
				bdz_entrance = {
					text = "(Bulldozer spawned)",
					priority = 60,
					category = "enemy_callouts",
					line_variations = {
						standard_mode = {
							"WHO WANTS A PIECE OF ME?",
							"GONNA BREAK SOME SHIT!",
--							"GONNA DROP ON THESE CRIMINALS LIKE A FUCKING PIANO!",
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
				entrance_elite = {
					text = "ELITE BULLDOZER, COMING THROUGH!", --not sure what this is?
					priority = 60,
					category = "UNKNOWN"
				},
				cpa_a02_01 = {
					override_name = "[megaphone cop]",
					priority = 60,
					text = "Captain's just got here, time to turn this around!",
					category = "enemy_callouts",
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
					category = "enemy_callouts",
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
					category = "enemy_callouts",
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
					category = "enemy_callouts",
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
					category = "enemy_callouts",
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
							
	--							"I thought you'd be tougher.", --not sure
							
							"You're just a footnote in history.",
							"Let that be a lesson.",
							"One down.",
							"I expected more resistance.",
							"I expected a tougher fight.",
							"It always ends the same.",
						}
					}
				},
				cpw_a04 = {
					override_name = "Captain Winters",
					text = "Retreat!",
					category = "enemy_callouts",
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
				hr01 = {
					text = "[hurt]",
					category = "enemy_chatter",
					priority = 90
				},
				burndeath = {
					text = "[burn death]",
					category = "enemy_chatter",
					priority = 90
				},
				shd_x02a_any_3p_01 = {
					text = "[Shield death]",
					category = "killed_enemy",
					priority = 50
				},
				bdz_x02a_any_3p = {
					text = "[Bulldozer death]",
					category = "killed_enemy",
					priority = 50
				},
				x02a_any_3p = {
					text = "[death]",
					category = "killed_enemy",
					variants = {
						cop = {
							text = "[death]",
							category = "killed_enemy",
							subvariants = {
								bdz = {
									text = "[Bulldozer death]",
									category = "killed_enemy",
									priority = 50
								},
								clk = {
									text = "[Cloaker death]",
									category = "killed_enemy",
									priority = 50
								},
								tsr = {
									text = "[Taser death]",
									category = "killed_enemy",
									priority = 50
								},
								mdc = {
									text = "[Medic death]",
									category = "killed_enemy",
									priority = 50
								}
							}
						}
					}
				},
				clk_punch_3rd_person_3p = {
					text = "(Cloaker lunge!)",
					category = "enemy_callouts",
					priority = 11
				},
				tsr_entrance = {
					text = "(Taser entrance)",
					category = "enemy_callouts",
					priority = 55
				},
				tsr_elite = {
					text = "(tsr elite)",
					--elite taser, make way!
					category = "UNKNOWN",
					priority = 55
				},
				tasered_3rd = { --loops
					text = "tasered_3rd",
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
					category = "enemy_taunts",
					priority = 60
				},
				post_tasing_taunt = {
					text = "(tasing taunt)",
					category = "enemy_taunts",
					priority = 60
				},
				shield_identification = {
					text = "(Shield clanking)",
					category = "enemy_callouts",
					priority = 55
				},
				tasered = {
					text = "(tased)",
					category = "UNKNOWN",
					priority = 15
				},
				tasing = {
					text = "(taser charging)", --tasing
					category = "UNKNOWN",
					priority = 17
				},
				taser_charge = {
					override_name = "SFX",
					category = "sfx",
					text = "(Taser charge)",
					priority = 19
				},
				heal = {
					text = "(healed cop)",
					category = "enemy_callouts",
					priority = 50
				},
				["911_call"] = {
					variants = {
						civilian = {
							category = "civilian_callouts",
							text = "Hello? 911? I need help, there's armed robbers here!",
							priority = 60
						}
					}
				},
				cm1_911_call = {
					text = "cm1_911_call",
					category = "UNKNOWN",
					priority = 60
				},
				dsp_radio_buzz = {
					override_name = "SFX",
					text = "(idle pager buzz)", --nonalert, idle sound
					category = "sfx",
					duration = 5,
					priority = 60
				},
				dsp_radio_query_1 = {
					text = "(pager ring, operator query)",
					category = "enemy_callouts",
					priority = 36,
					duration = 5
				},
				dsp_fooled_1 = {
					text = "(pager operator fooled)",
					priority = 36,
					category = "enemy_callouts"
				},
				mga_death_scream = {
					text = "[muted scream, megaphone feedback]",
					category = "killed_enemy",
					priority = 37
				},
				mga_deploy_snipers = {
					text = "Deploying snipers!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_generic_a = {
					text = "How's it going? Is everyone alright?",
					category = "mission_dialogue",
					priority = 10
				},
				mga_generic_b = {
					text = "Give up! There's no way you'll get away with this!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_generic_c = {
					text = "We're past negotiations- you die tonight!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_hostage_assault_delay = {
					text = "We know you took hostages!", --alt. "very clever, we're delayed"
					category = "mission_dialogue",
					priority = 10
				},
				mga_intro = {
					text = "This is the Washington Police, there is no way out!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_killed_civ_1st = {
					text = "You've killed a civilian! You're not helping me or yourself.",
					category = "mission_dialogue",
					priority = 10
				},
				mga_killed_civ_2nd = {
					text = "Multiple kills, you're way outta line! This is madness!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_leave = {
					text = "Fuck this, I'm hitting the golf course!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_robbers_clever = {
					text = "Impressive! But you still won't get away!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_thermite = {
					text = "Thermite to get into the vault? Ha! But now we have you trapped!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_vault_a = {
					text = "There's no way into the vault, give up!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_vault_b = {
					text = "That's a multilayer vault! Didn't think it'd be that easy did you?",
					category = "mission_dialogue",
					priority = 10
				},
				mga_vault_c = {
					text = "You've breached the vault, but now you're heavy and we're fast.",
					category = "mission_dialogue",
					priority = 10
				},
				mga_t01a_con_plu = {
					text = "We're willing to do a hostage trade.",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s01 = {
					text = "Listen up! This is the police!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s02 = {
					text = "We know you're in there",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s03 = {
					text = "We have you surrounded",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s04 = {
					text = "Make no mistake, we're in charge of this situation!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s05 = {
					text = "Resistance is futile, give up!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s06 = {
					text = "This is your last warning!",
					category = "mission_dialogue",
					priority = 10
				},
				mga_s07 = {
					text = "We will not give up until all the hostages are released!",
					category = "mission_dialogue",
					priority = 10
				},
				a01 = {
					text = "They've got a gun!",
					category = "enemy_callouts",
					priority = 70
				},
				a02 = {
					text = "Please stay back.",
					category = "mission_dialogue",
					priority = 10
				},
				a03 = {
					text = "Sorry, this area is for personnel only.",
					category = "mission_dialogue",
					priority = 10
				},
				a05 = {
					text = "Two-Four reporting in, all quiet here.",
					category = "enemy_callouts",
					priority = 37
				},
				a06 = {
					text = "{a06}",
					category = "UNKNOWN"
				},
				a07a = {
					text = "Alerted",
					variants = {
						cop = {
							category = "enemy_callouts",
							priority = 37,
							line_variations = {
								whisper_mode = {
									"Wha-?",
									"Huh?",
									"What was that?"
								}
							}
						}
					}
				},
				a07b = {
					category = "enemy_callouts",
					text = "That's weird...", --see something suspicious
					priority = 37
				},
				a08 = {
					category = "enemy_callouts",
					text = "Intruder!",
					priority = 37
				},
				a09 = {
					category = "enemy_callouts",
					text = "Sound the alarm!",
					priority = 37
				},
				a10 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, there's a broken window here...",
					priority = 37
				},
				a11 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, there's a dead body here...",
					priority = 37
				},
				a12 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, I've spotted a dead officer...",
					priority = 37
				},
				a13 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, I've spotted a tied up civilian...",
					priority = 37
				},
				a14 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, I've spotted a tied up officer...",
					priority = 37
				},
				a15 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, we've got a situation here...",
					priority = 37
				},
				a16 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, we've got an officer signalling for help...",
					priority = 37
				},
				a17 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, there's a security door that shouldn't be open here...",
					priority = 37
				},
				a18 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, somebody set a fire over here...",
					priority = 37
				},
				a19 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, I've got a bodybag over here...",
					priority = 37
				},
				a20 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, I've spotted some kind of sentry gun over here...",
					priority = 37
				},
				a21 = { --not used
					category = "enemy_callouts",
					text = "Two-Four reporting in, I've spotted a trip mine...",
					priority = 37
				},
				a22 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, I've spotted a suspicious bag...",
					priority = 37
				},
				a23 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, there's signs of intruders here...",
					priority = 37
				},
				a24 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, somebody's been messing with the computer here...",
					priority = 37
				},
				a25 = {
					category = "enemy_callouts",
					text = "Two-Four reporting in, I've spotted some heavy drilling equipment here...",
					priority = 37
				},
				amm = {
					category = "enemy_chatter",
					text = "They've brought extra ammo with them!",
					priority = 90
				},
				att = {
					category = "enemy_chatter",
					text = "Weapons hot!", --fire at will, gogogo!
					priority = 90
				},
				b01 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Entrance is A-OK. Over.",
					priority = 37
				},
				b02 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Hall A is all clear. Over.",
					priority = 37
				},
				b03 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Hall B is all clear. Over.",
					priority = 37
				},
				b04 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Hall C is all clear. Over.",
					priority = 37
				},
				b05 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Hall D is all clear. Over.",
					priority = 37
				},
				b06 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Roof is all clear. Over.",
					priority = 37
				},
				b07 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Basement is all clear. Over.",
					priority = 37
				},
				b08 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Ground Floor is all clear. Over.",
					priority = 37
				},
				b09 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Second Floor is all clear. Over.",
					priority = 37
				},
				b10 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Third Floor is all clear. Over.",
					priority = 37
				},
				b11 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Pool Area is all clear. Over.",
					priority = 37
				},
				b12 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Balcony is all clear. Over.",
					priority = 37
				},
				b13 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Living Room is all clear. Over.",
					priority = 37
				},
				b14 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Corridor is all clear. Over.",
					priority = 37
				},
				b15 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Lobby is all clear. Over.",
					priority = 37
				},
				b16 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Security Door is shut and locked, everything's fine. Over.",
					priority = 37
				},
				b17 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Security Room is all clear. Over.",
					priority = 37
				},
				b18 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, camera is working fine, no sign of tampering. Over.",
					priority = 37
				},
				b19 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Staircase is all clear. Over.",
					priority = 37
				},
				b20 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Penthouse is clear. Over.",
					priority = 37
				},
				b21 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, Garage is clear. Over.",
					priority = 37
				},
				b22 = {
					category = "enemy_callouts",
					text = "Moving on.",
					priority = 37
				},
				b23 = {
					category = "enemy_callouts",
					text = "Two-Three to Control, could someone buzz me through the door?.",
					priority = 37
				},
				b24 = {
					category = "enemy_callouts",
					text = "Two-Three to Control, this whole place is clear, I'm going home. Over and out.",
					priority = 37
				},
				b25 = {
					category = "enemy_callouts",
					text = "Reporting in, glass shards everywhere! Signs of break in! Send reinforcements!",
					priority = 37
				},
				b26 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, someone's been fiddling with this camera. Send backup!",
					priority = 37
				},
				b27 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, I hear some kind of noise. Send backup!",
					priority = 37
				},
				b28 = {
					category = "enemy_callouts",
					text = "Two-Three reporting in, I'm outside the lobby. Over.",
					priority = 37
				},
				bak = {
					category = "enemy_callouts",
					text = "Watch your background, civilians on scene!",
					priority = 37
				},
				burndeath = { --!
					category = "killed_enemy",
					text = "[fire death]",
					priority = 90
				},
				burnhurt = {
					variants = {
						cop = {
							subvariants = {
								clk = {
									category = "enemy_chatter",
									text = "[fire hurt]"
								},
								mdc = {
									category = "enemy_chatter",
									text = "[fire hurt]"
								},
								shd = {
									category = "enemy_chatter",
									text = "[fire hurt]"
								},
								bdz = {
									category = "enemy_chatter",
									text = "[fire hurt]"
								},
								tsr = {
									category = "enemy_chatter",
									text = "[fire hurt]"
								}
							}
						}
					}
				},
				c01 = {
					category = "enemy_chatter",
					text = "Contact!",
					priority = 90
				},
				ch1 = {
					category = "enemy_chatter",
					text = "Watch out for the trip mines!",
					priority = 90
				},
				ch2 = {
					category = "enemy_chatter",
					text = "Watch out for the sentry gun!",
					priority = 90
				},
				ch3 = {
					category = "enemy_chatter",
					text = "Argh! Some kind of jammer!",
					priority = 90
				}, --ecm feedback
				ch4 = {
					category = "enemy_chatter",
					text = "That maniac has a fucking SAW!",
					priority = 90
				},
				civ = {
					category = "enemy_chatter",
					text = "Get the hostages!",
					priority = 90
				},
				clr = {
					category = "enemy_chatter",
					text = "Area clear.",
					priority = 90
				},
				cn1 = {
					category = "enemy_callouts",
					text = "[converted to joker]",
					priority = 40
				},
				cr1 = {
					category = "enemy_chatter",
					text = "(to hostage) Hey, stay calm, we're getting you out.",
					priority = 90
				},
				d01 = {
					category = "enemy_callouts",
					text = "Deploy smoke.",
					priority = 90
				},
				d02 = {
					category = "enemy_callouts",
					text = "Throwing a flashbang!",
					priority = 60
				},
				e01 = {
					category = "enemy_chatter",
					text = "Disable that drill!",
					priority = 90
				},
				e02 = {
					category = "enemy_chatter",
					text = "Disable their gear!",
					priority = 90
				},
				e03 = {
					category = "enemy_chatter",
					text = "Disabling the power!",
					priority = 90
				},
				e04 = {
					category = "enemy_chatter",
					text = "Do what you can to slow them down.",
					priority = 90
				},
				e05 = {
					category = "enemy_chatter",
					text = "Drill is disabled, over.",
					priority = 90
				},
				e06 = {
					category = "enemy_chatter",
					text = "Disabled their gear.",
					priority = 90
				},
				gr1a = {
					category = "enemy_chatter",
					text = "Rescue team Alpha going in.",
					priority = 90
				},
				gr1b = {
					category = "enemy_chatter",
					text = "Rescue team Bravo going in.",
					priority = 90
				},
				gr1c = {
					category = "enemy_chatter",
					text = "Rescue team Charlie going in.",
					priority = 90
				},
				gr1d = {
					category = "enemy_chatter",
					text = "Rescue team Delta going in.",
					priority = 90
				},
				gr2a = {
					category = "enemy_chatter",
					text = "Assault team Alpha going in.",
					priority = 90
				},
				gr2b = {
					category = "enemy_chatter",
					text = "Assault team Bravo going in.",
					priority = 90
				},
				gr2c = {
					category = "enemy_chatter",
					text = "Assault team Charlie going in.",
					priority = 90
				},
				gr2d = {
					category = "enemy_chatter",
					text = "Assault team Delta going in",
					priority = 90
				},
				h01 = {
					category = "enemy_chatter",
					duration = 3,
					text = "(Freeing hostage)",
					priority = 90
				},
				hlp = {
					category = "enemy_chatter",
					text = "HELP!",
					priority = 90
				},
				i01 = {
					category = "enemy_chatter", --! enemy callouts?
					duration = 1,
					text = "Freeze!", --or "Hold it!"
					priority = 90
				},
				i02 = {
					category = "enemy_chatter",
					text = "No sudden movements!",
					priority = 90
				},
				i03 = {
					category = "enemy_chatter",
					text = "This ends now!",
					priority = 90
				},
				l01 = {
					category = "enemy_chatter",
					text = "Get those bags!",
					priority = 90
				},
				lk3a = {
					category = "enemy_chatter",
					text = "Jeez!",
					priority = 90
				},
				lk3b = {
					category = "enemy_chatter",
					text = "Fucking hell!",
					priority = 90
				},
				m01 = {
					category = "enemy_chatter",
					text = "Cease fire, exit point!",
					priority = 90
				},
				med = {
					category = "enemy_chatter",
					text = "There's a doctor bag! They must have a field medic!",
					priority = 90
				},
				mov = {
					text = "Move!",
					category = "enemy_chatter",
					priority = 90
				},
				pos = {
					category = "enemy_chatter",
					text = "I'm in position.",
					priority = 99
				},
				prm = {
					category = "enemy_chatter",
					text = "Wait for my signal.",
					priority = 90
				},
				pus = {
					category = "enemy_chatter",
					text = "Rush them!",
					priority = 90
				},
				r01 = {
					category = "enemy_chatter",
					text = "Roger that.",
					priority = 90
				},
				rdy = {
					category = "enemy_chatter",
					text = "Ready!",
					priority = 99
				},
				rrl = {
					category = "enemy_chatter",
					text = "He's reloading!",
					priority = 90
				},
				s01x = { --cop surrender
					category = "enemy_callouts",
					text = "Okay, okay! Just don't shoot!",
					priority = 40,
					line_variations = {
						standard_mode = {
							"Alright! Just don't shoot!",
							"Okay, okay! Just don't shoot!"
						}
					}
				},
				t01 = {
					category = "enemy_chatter",
					text = "Looking for another way in.",
					priority = 90
				},
				x01a_any_3p = {
					category = "enemy_chatter",
					text = "[pain]",
					priority = 90
				},
				lt2_c01 = {
					variants = {
						cop = {
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
						}
					}
				},
				lt2_g90 = {
					variants = {
						cop = {
							category = "enemy_chatter",
							priority = 90,
							line_variations = {
								standard_mode = {
									"I'm gonna fuck you up, man!",
									"These fuckers are going down!",
									"You must have shit for brains, coming here!",
									"I oughta kill you twice, gringo!",
									"This is the wrong town for you, amigo!",
									--									"Blood coming out your ears, fucker!",
									"I'm gonna make you bleed!",
									"[angry Spanish]"
								}
							}
						}
					}
				},
	--mission specific dialogue; i removed the variant/subvariant tables for these since they will play from any source, and don't require a specific voice prefix.
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
					category = "mission_dialogue"
				},
				cft_piano_music = {
					override_name = "SFX",
					category = "sfx",
					priority = 37,
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
				Play_bm_fwb_01 = { --these three are looped, which i don't have a proper fadein/fadeout system for, or start/stop when out of range
					override_name = "Bank Manager",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					loop_data = {
						loop_interval = 10,
						use_random_loop_interval = true
					},
					text = "[talking on phone]",
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
							"Told a guy who wanted a loan, we couldn't, under FTS regulations. [pause] F.T.S.? 'Fuck That Shit!'"
						}
					}
				},
				Play_bm_fwb_02 = {
					override_name = "Bank Manager",
					override_text_color = ClosedCaptions.color_data.neutral1,
					category = "mission_dialogue",
					duration = 5,
					priority = 37,
					loop_data = {
						loop_interval = 10,
						use_random_loop_interval = true
					},
					text = "[talking on phone]",
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
					duration = 5,
					priority = 37,
					loop_data = {
						loop_interval = 10,
						use_random_loop_interval = true
					},
					text = "[talking on phone]",
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
				Play_mc1_fwb_01 = { --these three are also looped
					loop_data = {
						loop_interval = 10,
						use_random_loop_interval = true
					},
					disabled = true
				},
				Play_mc1_fwb_02 = {
					loop_data = {
						loop_interval = 10,
						use_random_loop_interval = true
					},
					disabled = true
				},
				Play_mc1_fwb_03 = {
					loop_data = {
						loop_interval = 10,
						use_random_loop_interval = true
					},
					disabled = true	
				},
				Stop_mc1_fwb_01 = {
					stops_line = "Play_mc1_fwb_01",
					category = "stops"
				},
				Stop_mc1_fwb_02 = {
					stops_line = "Play_mc1_fwb_02",
					category = "stops"
				},
				Stop_mc1_fwb_03 = {
					stops_line = "Play_mc1_fwb_03",
					category = "stops"
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
					text = "Drop the goats, asshole!",
					override_name = "Megaphone cop",
					priority = 37,
					category = "mission_dialogue"
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
					category = "civilian_callouts",
					priority = 37,
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
					category = "civilian_callouts",
					priority = 37,
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
					category = "civilian_callouts",
					priority = 37,
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
					category = "civilian_callouts",
					priority = 37,
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
				Play_csf_cs1_01 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					priority = 37,
					duration = 7,
					category = "mission_dialogue",
					line_variations = {
						recombinable = true,
						whisper_mode = {
							{
								"I need to talk to someone about my 401k."
							}
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
						recombinable = true,
						whisper_mode = {
							{
								"Yeah, how much money do I got in there? How much?",
								"Yeah, how much money do I got there? How much?"
							}
						}
					}
				},
				Play_csf_cs1_03 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					duration = 15,
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						whisper_mode = {
							{
								"Hi, I just saw a show, and a bank got robbed. And I want to move my money to a bank that doesn't get robbed."
							}
						}
					}
				},
				Play_csm_cs1_01 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					duration = 15,
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						whisper_mode = {
							{
								"I wanted to ask if you guys offer financing for automobiles."
							}
						}
					}
				},
				Play_csm_cs1_02 = {
					override_name = "Customer on phone",
					override_text_color = ClosedCaptions.color_data.neutral1,
					text = "(Customer asking for bank assistance)",
					duration = 5,
					priority = 37,
					category = "mission_dialogue",
					line_variations = {
						whisper_mode = {
							{
								"Hey. I'm having trouble with my account on the computer. Do I... internet?"
							}
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
							{
								"Yeah, there's a charge on the credit card the wife can't see. Uhh... I was in Mexico, and...",
								"Yeah, there's a charge on my credit card the wife can't see. Uhh... I was in Mexico, and... hmm, well...",
								"Yeah, uh... there's a charge on my credit card the wife can't see. Well, I was in Mexico, and, uh... one thing led to another, well... I gave in.",
								"Yeah, uh... there's a charge on my credit card the wife can't see. Well, I was in Mexico, and... uh... hm...",
								"Yeah, there's a charge on the credit card the husband can't see. Uh, I was in Mexico, and... yeah... [stressed sigh]"
							}
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
						 --non-exhaustive
							"Hey, I work as a repairman, and... I think I might have left a sandwich in one of your vaults.",
							"Knock knock. [pause, silence] ...hey. Knock knock. [longer pause, silence] Fuck you guys."
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
				}
				
				
			}
		}
	},
	event_ids = {}
}