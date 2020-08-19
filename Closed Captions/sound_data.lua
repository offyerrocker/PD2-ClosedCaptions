ClosedCaptions._sounds = {
	--return {
	languages = {
		english = {
			vo_special = {
				["f11@_sin"] = { --macroized
					text = "$CHARACTER_NAME! Help me up!",
					caps = true,
					macro = "character_name"
				},
				["f13@_sin"] = { --macroized
					text = "$CHARACTER_NAME, come uncuff me!",
					macro = "character_name"
				},
				["f21@_sin"] = { --macroized
					text = "$CHARACTER_NAME, follow me!",
					macro = "character_name"
				}
			},
			vo = {
				pickup_ammo = {
					override_name = "SFX",
					text = "picked up ammo",
					source_id = "sfx",
					duration = 1,
					priority = 1,
					disabled = false
				},
				pickup_ammo_health_boost = {
					override_name = "SFX",
					text = "(Gambler) picked up ammo",
					source_id = "sfx",
					priority = 1,
					duration = 2,
					disabled = true
				},
				pickup_fak_skill = {
					override_name = "SFX",
					text = "activated Uppers Ace",
					source_id = "sfx"
				},
				wp_four_pick_up = {
					override_name = "SFX",
					text = "picked up Throwing Card",
					source_id = "sfx"
				},
				wp_jav_pick_up = {
					override_name = "SFX",
					text = "picked up Javelin",
					source_id = "sfx"
				},
				flashbang_beep = {
					override_name = "SFX",
					text = "flashbang beeping",
					source_id = "sfx",
					disabled = true
				},
				tasered_loop = {
					override_name = "SFX",
					text = "tased",
					source_id = "sfx",
					disabled = true
				},
				melee_hit_body = {
					override_name = "SFX",
					text = "melee impact",
					source_id = "sfx",
					disabled = true
				},
				player_hit = {
					override_name = "SFX",
					text = "armor damage",
					source_id = "sfx",
					disabled = true
				},
				alarm_museum_on_slow_fade = {
					override_name = "SFX",
					text = "[ALARM KLAXON]",
					duration = 30,
					source_id = "sfx"
				},
				card_reader_first_card = {
					override_name = "SFX",
					text = "keycard machine beeps",
					duration = 3,
					source_id = "sfx"
				},
				card_reader_second_card = {
					override_name = "SFX",
					text = "keycard machine beeps rapidly",
					duration = 3,
					source_id = "sfx"
				},
				alarm_countdown_loop = {
					override_name = "SFX",
					text = "[Alarm countdown]",
					source_id = "sfx",
					duration = 60
				},
				alarm_countdown_loop_stop = {
					override_name = "SFX",
					text = "[Alarm countdown stops]",
					source_id = "sfx",
					disabled = true
				},
				vo_special = {
					disabled = true
				},
				swat_explosion = {
					override_name = "SFX",
					text = "[swat_explosion ???]",
					disabled = false
				},
				g01 = {
					variants = {
						criminal = {
							text = "Go downstairs",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Down the stairs",
											"Downstairs."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = { --technically has loud/stealth sound variants
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Up, up!",
											"Keep going up!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							line_variations = {
								any_mode = {
									"To the left!",
									"Left!"
								}
							}
						}
					}
				},
				g04 = {
					variants = {
						criminal = {
							text = "Go right",
							priority = 5,
							line_variations = {
								any_mode = {
									"To the right!",
									"Right!"
								}
							}
						}
					}
				},
				g05 = {
					variants = {
						criminal = {
							text = "Go up",
							priority = 5,
							subvariants = {
								criminal = {
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
						}
					}
				},
				g06 = {
					variants = {
						criminal = {
							text = "Go down",
							priority = 5,
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
					variants = {
						criminal = {
							text = "We need to get out",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"We've got to get out.",
											"We've got to get out!",
											"Get out!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							line_variations = {
								any_mode = {
									"Inside!",
									"Get in!"
								}
							}
						}
					}
				},
				g09 = {
					variants = {
						criminal = {
							text = "Hurry",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"C'mon, faster!",
											"Double time!",
											"Hurry up!",
											"Hurry, hurry!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							line_variations = {
								any_mode = {
									"Careful, now!",
									"Careful!"
								}
							}
						}
					}
				},
				g11 = {
					variants = {
						criminal = {
							text = "Wrong way",
							priority = 5,
							line_variations = {
								any_mode = {
									"This is the wrong way",
									"Not this way!"
								}
							}
						}
					}
				},
				g12 = {
					variants = {
						criminal = {
							text = "This way",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"This way!",
											"We're on the right track."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Come on.",
											"Let's go."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"This is it.",
											"This is the place."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							line_variations = {
								any_mode = {
									"Over there!",
									"There!"
								}
							}
						}
					}
				},
				g16 = {
					variants = {
						criminal = {
							text = "Keep defending",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										assault_mode = {
											"Keep defending!",
											"Keep 'em away!",
											"Hold the fort!"
										}
									}
								},
								rb15 = {
									line_variations = {
										assault_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										assault_mode = {
										},
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Move!",
											"Move it."
										},
										assault_mode = {}
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
							priority = 5,
							line_variations = {
								any_mode = {
									"Straight on!",
									"Straight ahead!"
								}
							}
						}
					}
				},
				g20 = {
					variants = {
						criminal = {
							text = "Jump down",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Jump down!",
											"Down here!"
										},
										assault_mode = {}
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
					},
					priority = 5
				},
				g21 = {
					variants = {
						criminal = {
							text = "Placed drill",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"Drill's in place.",
											"Drill in place.",
											"Drill mounted."
										},
										assault_mode = {
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
						}
					}
				},
				g22 = {
					variants = {
						criminal = {
							--only houston and chains have sound vo for this, so do not display cc for anyone else for this line
							subvariants = {
								rb222 = { --!
									line_variations = {
										any_mode = {
											"Piece of shit drill!",
											"Broke-dick piece of shit drill!"
										}
									}
								},
								rb555 = { --!
									line_variations = {
										any_mode = {
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
							rb4 = {
								line_variations = {
									any_mode = {
										"Shoot 'em!",
										"Shoot!"
									}
								}
							}
						--sydney does not have this line
						}
					}
				},
				g24 = {
					variants = {
						criminal = {
							text = "Victory",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = { --no loud/stealth variations
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
										whisper_mode = {
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
										assault_mode = {
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
					text = "Take out the cameras!",
					variants = {
						criminal = {
							line_variations = {
								any_mode = {
									"Take out the cameras!",
									"Remember, take out the cameras!"
								}
							}
						}
					}
				},
				g26 = {
					variants = {
						criminal = {
							text = "Use cable ties",
							priority = 5,
							subvariants = {
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
							text = "Watch civilians",
							priority = 5,
							subvariants = {
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
					text = "We're almost there!",
					variants = {
						criminal = {
							subvariants = {
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
							text = "Exasperation",
							priority = 5,
							subvariants = {
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
							priority = 5,
							rb4 = {
								line_variations = {
									standard_mode = { --! check whisper variant for get stuffed
										"Bulldozer down!",
										"Bulldozer eliminated!",
										"Bulldozer taken care of!",
										"Bulldozer's history!"
									},
									assault_mode = {
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
						}
					}
				},
				g43 = {
					variants = {
						criminal = {
							text = "Throwing grenade",
							priority = 5,
							rb4 = {
								line_variations = {
									any_mode = {
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
									any_mode = {
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
					disabled = true
				},
				g51 = { --unknown
					text = "G51.",
					disabled = true
				},
				g60 = {
					variants = {
						criminal = {
							text = "Awestruck",
							priority = 5,
							subvariants = {
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
							priority = 5,
							subvariants = {
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
							priority = 5,
							subvariants = {
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
							priority = 5,
							subvariants = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									text = "One thirty!" -- should it be "1:30" ?
								}
							}
						}
					}
				},
				g65 = {
					variants = {
						criminal = {
							priority = 5,
							subvariants = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									text = "Two thirty."
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
							priority = 5,
							subvariants = {
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
						}}
				},
				g68 = {
					variants = {
						criminal = {
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
					disabled = true
				},
				g72 = {
					text = "I'm on it!",
					disabled = true
				},
				g92 = {
					variants = {
						criminal = {
							text = "Picked up Gage Package",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Gotcha!",
											"Gotcha.",
											"Alriiight!",
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							text = "They have hostages! We need to delay the assault!"
						},
						criminal = {
							text = "Alright, let's do this.",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							text = "Where is the fucking HRT?!"
						},
						criminal = {
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							text = "No hostages left, full force forward!"
						},
						criminal = {
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"The cops have arrived!",
											"The cops are on the scene!",
											"The cops are here!",
											"Okay, we've got company... the police are here!",
											"The police just arrived!",
											"Alright, we got visitors- the cops are here!",
											"How nice of the cops to come and keep us company!",

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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"We got a hostage lined up already. Let's trade!",
											"We have to let that hostage go in exchange for our friend!",
											"We already have a hostage ready to be tradeed!",
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
					text = "Broke-dick piece of shit drill!"
				},
				p12 = {
					variants = {
						criminal = {
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
					variants = {},
					disabled = true --unverified
				},
				p19 = {
					variants = {
						criminal = {
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							text = "Assault finished",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										standard_mode = {
											"That's all of 'em!",
											"Haha, that's all of 'em!"
										},
										assault_mode = {}
									}
								},
								rb15 = {
									line_variations = {
										standard_mode = {
											"We got 'em all.",
											"That's all of 'em!",
											"That's all the bags!"
										},
										assault_mode = {}
									}
								}
							}
						}
					}
				},
				p29 = {
					variants = {
						criminal = {
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"They're climbing down on the outside!"
										}
									}
								}
							}
						}
					}
				},
				p40 = {
					variants = {
						criminal = {
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"They're climbing up on the outside!"
										}
									}
								}
							}
						}
					}
				},
				p41 = {
					variants = {
						criminal = {
							text = "Spotted SWAT Helicopter",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"SWAT chopper incoming!",
											"We got a helicopter inbound!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"SWAT insertion! Van coming in!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										recombinable = true,
										any_mode = {
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
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"We're in.",
											"We're through!",
											"We're inside!",
											"It's open!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Found one!",
											"Got one!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Got one more.",
											"We got one.",
											"Found another one.",
											"Here's another!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"It's done!",
											"It's finished!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"We're done!",
											"DONE!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"I found a keycard!",
											"I got a keycard."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"I got the keycard!",
											"I found the keycard!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Alright, back up!",
											"Duck and cover, ladies!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Oops! Forgot to knock!",
											"We make our own fucking door!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
											"Fuck keycards when you can blow shit up!",
											"We're through!"
										}
									}
								}
							}
						}
					},
					priority = 5
				},
				v15 = {
					variants = {
						criminal = {
							text = "Open this door",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"C'mon! Let's open the fucking door!",
											"Get this motherfucking door open!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Let's open this sucker up!",
											"Let's get this fucking thing open!",
											"Let's open this motherfucker!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Wipe 'em out!",
											"Kill 'em all!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"INCOMING!",
											"Here it comes!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"PAYDAY!",
											"Yessir, this is it, my friends!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"We got all of it, awesome!",
											"And the mice got all of the cheese!",
											"That's it!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Drill's done.",
											"Drill's done!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Computer's done!",
											"The computer's done."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"It's done, c'mon!",
											"It's finished, let's get on with it!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"There's the ride!",
											"There's the getaway!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"I thought I heard them in the ventilation shafts- watch out!",
											"Hey! They're in the ventilation!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"The mark's in sight!",
											"Got my eyes on the mark!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"There she is!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"There he is!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"There they are!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"There it is!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Where's the goddamn manager?"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							text = "{heat speech}",
							priority = 5,
							subvariants = {
								rb4 = {
									duration = 22,
									line_variations = {
										any_mode = {
											"Listen up! This is a robbery! We want to harm no-one! We're after the bank's money, not yours! Your money is insured by the federal government! You're not gonna lose a dime! Think of your beloved ones, don't try to be a hero. Just shut up, and stay down, and this'll be over in no time."
										}
									}
								},
								rb15 = {
									duration = 30,
									line_variations = {
										any_mode = {
											"Listen up, you bloody drongos! This is a robbery! We're not here to hurt you, but that can quickly change dependin' on your FUCKIN' actions, got it? We're after this BANK'S money, not yours, all your BLOODY money's insured by the FUCKIN' government, alright? You won't lose a FUCKIN' penny so think of your dipshit FAMILIES, now, your fat spouses and your ugly kids, you just KEEP IT SHUT like the good tools you are and STAY DOWN, and this'll be over in a bloody heartbeat."
										}
									}
								}
							}
						}
					}
				},
				v35 = {
					variants = {
						criminal = {
							text = "Bain?!",
							duration = 2,
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"BAIN!?"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"What do we do now?",
											"The fuck do we do now?"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"I've got a bad feeling about this."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Sweep the place."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Let's find that mark."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Let's find her!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Let's find him!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Let's find them!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Let's find it, now!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									text = "Keep looking!"
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							text = "Battle cry",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							text = "Battle cry",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"That's what I'm talking about!",
											"Yes! YES!",
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"We got murkies here!",
											"Murkies!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Let's get this stuff moving!",
											"Let's carry this stuff the fuck out of here!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"It's fucking stuck!",
											"Shit, she's stuck!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							text = "Smells awful",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"That fucking smell!",
											"Holy fuck, that smell is killing me!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Damn, that was loud!",
											"[chuckles] What a bang!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"YIPPIE-KI-YAY, MOTHERFUCKER!",
											"FUCKIN' AWESOME!",
											"GERONIMO, MOTHERFUCKERS!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Hi.",
											"Hi!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"I found a crowbar!",
											"I got a crowbar!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"GET IN!",
											"Get in the chair!"
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
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
				f44x_any = {
					variants = {
						criminal = {
							text = "Spotted SWAT Turret",
							priority = 5,
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
				f42_any = {
					variants = {
						criminal = {
							priority = 5,
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
				f45x_any = {
					variants = {
						criminal = {
							text = "Spotted Captain",
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = { --no assault specific lines?
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
					text = "SMOKE!"
				},
				g41x_any = {
					variants = {
						criminal = {
							text = "Flashbanged",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							text = "Thanks for reviving me",
							priority = 5,
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
							source_id = "SFX",
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
					variants = {}
				},
				s32x_sin = {
					variants = {
						criminal = {
							text = "Out of Cable Ties",
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
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
				f40_any = { --taxman go faster
					variants = {
						criminal = {
							text = "Rushing the Taxman",
							priority = 5,
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
							text = "Taxman revive",
							priority = 5,
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
							text = "Taxman revive",
							priority = 5,
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
							text = "Taxman interrogation",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
										any_mode = {
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
							priority = 5,
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
							priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										recombinable = true,
										any_mode = {
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
										any_mode = {
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
							priority = 5,
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
						priority = 5,
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 5,
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
							text = "Masked up",
							priority = 5,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
										any_mode = {
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
							disabled = true --no idea what cops say
						},
						cm1 = {
							text = "[fear]",
							priority = 5
						},
						cf1 = {
							text = "[fear]",
							priority = 5
						}
					}
				}, --mask up
				i01x_any = {
					text = "[Anticipation phase]" --!
				},
				r01x_sin = { --bot 'follow me' response; short delay
					variants = {
						criminal = {
							text = "Gotcha.",
							priority = 15,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
											"Got it.",
											"I got it!",
											"Right on it."
										}
									}
								},
								rb15 = {
									line_variations = {
										any_mode = {
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
							priority = 15,
							rb4 = {
								line_variations = {
									any_mode = {
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
									any_mode = {
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
							priority = 15,
							rb4 = {
								line_variations = {
									any_mode = {
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
							priority = 15,
							subvariants = {
								rb4 = {
									line_variations = {
										any_mode = {
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
							priority = 15,
							subvariants = {
								rb4 = {
									text = "Halfway there.",
									line_variations = {
										any_mode = {
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
							priority = 15,
							subvariants = {
								rb4 = {
									text = "Almost there.",
									line_variations = {
										any_mode = {
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
							text = "Intimidation stage 1",
							priority = 5,
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
							text = "Intimidation stage 2",
							priority = 5,
							subvariants = {
								line_variations = {
									rb15 = {
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
							text = "Now put your cuffs on.",
							priority = 5,
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
				whistling_attention = {
					text = "[whistle]",
					priority = 5
				},
				dsp_radio_checking_1 = {
					variants = {
						criminal = {
							text = "[answering pager]",
							subvariants = {
								rb4 = { --incomplete
									duration = 10, --default pager answer time is 10s
									line_variations = {
										any_mode = {
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
										any_mode = {
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
				--[[

				fri_dsp_stop_all = {

					disabled = true

				},

				dsp_radio_russian = {

					disabled = true

				},

				--]]
				dsp_radio_reminder_1 = {
					variants = {
						security = {
							text = "[pager buzz]",
							line_variations = {
								any_mode = {
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
						--any_mode = {
						--	"Okay, I guess I'll see you for bowling later.",
						--}
						}
					}
				},
				dsp_radio_fooled_4 = { --"no pagers remaining" warning
					variants = {
						security = {
							text = "[pager operator warning: NO PAGERS REMAINING]"
						}
					}
				},
				dsp_stop_all = {
					text = "[radio static ends]",
					disabled = true,
					priority = 5
				}, --disable this
				l2n_a15 = {
					variants = {
						security = {
							text = "[spotted alerted Civilian]",
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
							text = "[idle pager chatter]",
							subvariants = {
								line_variations = {
									any_mode = {
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
					}
				},
				l2n_a07b = {
					variants = {
						security = {
							text = "[spots suspicious object]",
							subvariants = {
								line_variations = {
									any_mode = {
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
					}
				},
				l2n_b01 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Entrance is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b02 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Hall A is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b03 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Hall B is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b04 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Hall C is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b05 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Hall D is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b06 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Roof is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b07 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Basement is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b08 = {
					variants = {
						cop = {
							text = "Two-Three to Control. First Floor is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b09 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Second Floor is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b10 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Third Floor is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b11 = {
					variants = {
						cop = {
							text = "Two-Three to Control. The Pool Area is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b12 = {
					variants = {
						cop = {
							text = "Two-Three to Control. The Balcony is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b13 = {
					variants = {
						cop = {
							text = "Two-Three to Control. The Living Room is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b14 = {
					variants = {
						cop = {
							text = "Two-Three to Control. The Corridor is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b15 = {
					variants = {
						cop = {
							text = "Two-Three to Control. The Lobby is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b16 = {
					variants = {
						cop = {
							text = "Two-Three to Control. No sign of tampering with the Security Door.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b17 = {
					variants = {
						cop = {
							text = "Two-Three to Control. GenSec Room is clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b18 = {
					variants = {
						cop = {
							text = "Two-Three to Control. No signs of tampering with the Camera.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b19 = {
					variants = {
						cop = {
							text = "Two-Three to Control. The Staircase looks clear.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b20 = {
					variants = {
						cop = {
							text = "[reporting clear Penthouse]",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b21 = {
					variants = {
						cop = {
							text = "[reporting clear Garage]",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b22 = {
					variants = {
						cop = {
							text = "Two-Three to Control. Proceeding with search.",
							line_variations = {
								any_mode = {
									"I'll move on.",
									"Heading on.",
									"Moving on.",
									"Movin' on.",
									"Onto the next."
								}
							}
						}
					}
				},
				l2n_b23 = {
					variants = {
						cop = {
							text = "This is Two-Three. Can you buzz me in? Over.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_b24 = {
					variants = {
						cop = {
							text = "This is Two-Three. Sweep finished, all is clear. Over and out.",
							line_variations = {
								recombinable = true,
								any_mode = {
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
						}
					}
				},
				l2n_i02 = {
					variants = {
						cop = {
							line_variations = {
								text = "attempting arrest",
								any_mode = {
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
						}
					}
				},
				s09a = {
					text = "[reviving] Hey, man, you're not looking too good..."
				},
				s09b = {
					text = "[reviving] Woah, you look even worse than before."
				},
				s09c = {
					text = "[reviving] You're looking really beat up, use a doctor bag!"
				},
				s05a_sin = {
					text = "I feel terrible, heal me!"
				}, --! bad
				s05b_sin = {
					text = "Whew, thanks."
				},

				--cops
				l3n_civ = {
					variants = {
						cop = {
							text = "Rescue the hostages",
							priority = 5,
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
					},
					disabled = true
				},
				l3n_d01 = {
					variants = {
						cop = {
							text = "Rescue the hostages",
							priority = 5,
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
					},
					disabled = true
				},
				l4n_a01 = {
					variants = {
						cop = {
							text = "[spotted heister]",
							priority = 5,
							line_variations = {
								any_mode = {
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
							text = "[panicked chatter]",
							priority = 5,
							line_variations = {
								any_mode = {
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
							text = "[panicked chatter]",
							priority = 5,
							line_variations = {
								any_mode = { --non-exhaustive
									"CHRIST!",
									"INSANE!",
									"HOLY SHIT!",
									"JEEZ!"
								}
							}
						}
					},
					disabled = true
				},
				l4n_i03 = {
					variants = {
						cop = {
							text = "[arrested heister]",
							priority = 5,
							line_variations = {
								any_mode = {
									"It's over now, scumbag! I hope you like prison food.",
									"This ends now, scumbag. I hope you drop the soap, a lot.",
									"It's over now, dirtbag! You're going away for a loooong time.",
									"It's over... scumbag! Get ready to do some hard time.",
									"It's over, dirtbag! I hope you drop the soap... a lot.",
									"It's over... you son of a bitch!",
								}
							}
						}
					}
				},
				l2n_mov = {
					variants = {
						cop = {
							text = "Tactical chatter",
							priority = 5,
							line_variations = {
								any_mode = {
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
					},
					disabled = true
				},
				dispatch_generic_message = {
					text = "[dispatch radio chatter]",
					disabled = true
				},
				cloaker_spawn = {
					text = "[Cloaker spawned]",
					disabled = false
				},
				cloaker_taunt_after_assault = {
					text = "[Cloaker taunt]",
					disabled = false
				},
				rcloaker_taunt_during_assault = {
					text = "[Cloaker taunt]",
					disabled = false
				},
				clk_c01x_plu = {
					text = "cloaker ???",
					disabled = false
				},
				cloaker_detect_christmas_mono = {
					text = "[FESTIVE CLOAKER CHARGE]",
					disabled = false
				},
				cloaker_detect_christmas_stop = {
					text = "[festive Cloaker charge stops]",
					disabled = false
				},
				cloaker_detect_mono = {
					text = "[CLOAKER CHARGE]", --wololololo
					disabled = false
				},
				cloaker_presence_loop = {
					text = "[Cloaker idle]",
					duration = 10000
				},
				cloaker_presence_stop = {
					text = "[Cloaker idle stops]",
					disabled = true
				},
				cloaker_detect_stop = {
					text = "[Cloaker charge stops]",
					disabled = true
				},
				visor_lost = { --SEN-I-SOSHITSU
					text = "[lost visor]"
				},
				entrance = {
					variants = {
						bdz = {
							text = "Bulldozer, COMING THROUGH!"
						},
						tsr = {
							text = "Shock treatment prescribed!"
						},
						clk = {
							text = "[Cloaker spawned]"
						},
						mdc = {
							text = "[Medic spawned]",
							line_variations = {
								any_mode = {
									"Somebody order a Medic?",
									"Medic in the house!",
									"It looks like a surgery ward in here, there's blood all over!"
								}
							}
						},
						shld = {
							text = "[Shield spawned]",
							line_variations = {
								any_mode = {
									"Shield coming through.",
									"[Shield clanking]"
								}
							}
						}
					}
				},
				mdc_entrance = {
					text = "Somebody order a Medic?"
				},
				rmdc_entrance = {
					text = "rmedic entrance ???"
				},
				entrance_elite = {
					text = "ELITE BULLDOZER, COMING THROUGH!"
				},
				cpa_a02_01 = {
					override_name = "[megaphone cop]",
					text = "Captain's just got here, time to turn this around!",
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
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
					text = "Turret's arrived!"
				},
				cpw_a01 = {
					override_name = "[megaphone cop]",
					text = "(winters noise???)"
				},
				cpw_a02 = {
					override_name = "[megaphone cop]",
					text = "(winters noise 2???)"
				},
				cpw_a04 = {
					override_name = "[megaphone cop]",
					text = "(Winters retreat)"
				},
				cpw_a05 = {
					override_name = "[megaphone cop]",
					text = "(Winters battle cry)"
				},
				hr01 = {
					text = "[hurt]",
					disabled = "whisper_mode"
				},
				burndeath = {
					text = "[burn death]",
					disabled = "whisper_mode"
				},
				shd_x02a_any_3p_01 = {
					text = "[Shield death]"
				},
				bdz_x02a_any_3p = {
					text = "[Bulldozer death]"
				},
				x02a_any_3p = {
					text = "[death]",
					disabled = "whisper_mode",
					variants = {
						cop = {
							text = "[death]",
							disabled = "whisper_mode"
						},
						bdz = {
							text = "[Bulldozer death]",
							disabled = false
						},
						clk = {
							text = "[Cloaker death]",
							disabled = false
						},
						tsr = {
							text = "[Taser death]",
							disabled = false
						},
						mdc = {
							text = "[Medic death]",
							disabled = false
						}
					}
				},
				cloaker_taunt_during_assault = {
					text = "(Cloaker taunt)"
				},
				clk_punch_3rd_person_3p = {
					text = "[Cloaker kick]"
				},
				tsr_entrance = {
					text = "[taser entrance]"
				},
				tsr_elite = {
					text = "[tsr elite]"
				},
				tasered_3rd_stop = {
					text = "tasered_3rd_stop",
					disabled = true
				},
				tasered_3rd = {
					text = "tasered_3rd",
					disabled = true
				},
				post_kill_taunt = {
					text = "post_kill_taunt",
					disabled = false
				},
				post_tasing_taunt = {
					text = "(tasing taunt)"
				},
				shield_identification = {
					text = "[shield clanking]"
				},
				tasered = {
					text = "(tased)"
				},
				tasing = {
					text = "[taser charging]" --tasing
				},
				taser_charge = {
					text = "Charging!"
				},
				heal = {
					text = "(healed cop)",
					priority = 2
				},
				["911_call"] = {
					variants = {
						civilian = {
							text = "Hello? 911? I need help, there's armed robbers here!"
						}
					}
				},
				cm1_911_call = {
					text = "cm1_911_call",
					disabled = false
				},
				a02x_any = {
					text = "(panic)", --not kalm
					disabled = "whisper_mode"
				},
				a03x_any = {
					variants = {
						civilian = {
							text = "(screaming in fear)",
							disabled = "whisper_mode"
						}
					}
				},
				dsp_radio_buzz = {
					disabled = "whisper_mode",
					text = "[pager buzz]",
					duration = 5
				},
				dsp_radio_query_1 = {
					text = "[pager ring]",
					disabled = "whisper_mode",
					duration = 5
				},
				dsp_fooled_1 = {
					text = "[pager operator fooled]",
					disabled = "whisper_mode"
				},
				mga_death_scream = {
					text = "[megaphone feedback]"
				},
				mga_deploy_snipers = {
					text = "Deploying snipers!"
				},
				mga_generic_a = {
					text = "How's it going? Is everyone alright?"
				},
				mga_generic_b = {
					text = "Give up! There's no way you'll get away with this!"
				},
				mga_generic_c = {
					text = "We're past negotiations- you die tonight!"
				},
				mga_hostage_assault_delay = {
					text = "We know you took hostages!" --alt. "very clever, we're delayed"
				},
				mga_intro = {
					text = "This is the Washington Police, there is no way out!"
				},
				mga_killed_civ_1st = {
					text = "You've killed a civilian! You're not helping me or yourself."
				},
				mga_killed_civ_2nd = {
					text = "Multiple kills, you're way outta line! This is madness!"
				},
				mga_leave = {
					text = "Fuck this, I'm hitting the golf course!"
				},
				mga_robbers_clever = {
					text = "Impressive! But you still won't get away!"
				},
				mga_thermite = {
					text = "Thermite to get into the vault? Ha! But now we have you trapped!"
				},
				mga_vault_a = {
					text = "There's no way into the vault, give up!"
				},
				mga_vault_b = {
					text = "That's a multilayer vault! Didn't think it'd be that easy did you?"
				},
				mga_vault_c = {
					text = "You've breached the vault, but now you're heavy and we're fast."
				},
				mga_t01a_con_plu = {
					text = "We're willing to do a hostage trade."
				},
				mga_s01 = {
					text = "Listen up! This is the police!"
				},
				mga_s02 = {
					text = "We know you're in there"
				},
				mga_s03 = {
					text = "We have you surrounded"
				},
				mga_s04 = {
					text = "Make no mistake, we're in charge of this situation!"
				},
				mga_s05 = {
					text = "Resistance is futile, give up!"
				},
				mga_s06 = {
					text = "This is your last warning!"
				},
				mga_s07 = {
					text = "We will not give up until all the hostages are released!"
				},
				a01 = {
					text = "They've got a gun!"
				},
				a02 = {
					text = "Please stay back."
				},
				a03 = {
					text = "Sorry, this area is for personnel only."
				},
				a05 = {
					text = "Two-Four reporting in, all quiet here."
				},
				a06 = {
					text = "[idle]"
				},
				a07a = {
					text = "Alerted",
					variants = {
						cop = {
							line_variations = {
								whisper_mode = {
									"Wha-?"
								}
							}
						}
					}
				},
				a07b = {
					text = "That's weird..." --see something suspicious
				},
				a08 = {
					text = "Intruder!"
				},
				a09 = {
					text = "Sound the alarm!"
				},
				a10 = {
					text = "Two-Four reporting in, there's a broken window here..."
				},
				a11 = {
					text = "Two-Four reporting in, there's a dead body here..."
				},
				a12 = {
					text = "Two-Four reporting in, I've spotted a dead officer..."
				},
				a13 = {
					text = "Two-Four reporting in, I've spotted a tied up civilian..."
				},
				a14 = {
					text = "Two-Four reporting in, I've spotted a tied up officer..."
				},
				a15 = {
					text = "Two-Four reporting in, we've got a situation here..."
				},
				a16 = {
					text = "Two-Four reporting in, we've got an officer signalling for help..."
				},
				a17 = {
					text = "Two-Four reporting in, there's a security door that shouldn't be open here..."
				},
				a18 = {
					text = "Two-Four reporting in, somebody set a fire over here..."
				},
				a19 = {
					text = "Two-Four reporting in, I've got a bodybag over here..."
				},
				a20 = {
					text = "Two-Four reporting in, I've spotted some kind of sentry gun over here..."
				},
				a21 = {
					text = "Two-Four reporting in, I've spotted a trip mine..."
				},
				a22 = {
					text = "Two-Four reporting in, I've spotted a suspicious bag..."
				},
				a23 = {
					text = "Two-Four reporting in, there's signs of intruders here..."
				},
				a24 = {
					text = "Two-Four reporting in, somebody's been messing with the computer here..."
				},
				a25 = {
					text = "Two-Four reporting in, I've spotted some heavy drilling equipment here..."
				},
				amm = {
					text = "They've brought extra ammo with them!"
				},
				att = {
					text = "Weapons hot!" --fire at will, gogogo!
				},
				b01 = {
					text = "Two-Three reporting in, Entrance is A-OK. Over."
				},
				b02 = {
					text = "Two-Three reporting in, Hall A is all clear. Over."
				},
				b03 = {
					text = "Two-Three reporting in, Hall B is all clear. Over."
				},
				b04 = {
					text = "Two-Three reporting in, Hall C is all clear. Over."
				},
				b05 = {
					text = "Two-Three reporting in, Hall D is all clear. Over."
				},
				b06 = {
					text = "Two-Three reporting in, Roof is all clear. Over."
				},
				b07 = {
					text = "Two-Three reporting in, Basement is all clear. Over."
				},
				b08 = {
					text = "Two-Three reporting in, Ground Floor is all clear. Over."
				},
				b09 = {
					text = "Two-Three reporting in, Second Floor is all clear. Over."
				},
				b10 = {
					text = "Two-Three reporting in, Third Floor is all clear. Over."
				},
				b11 = {
					text = "Two-Three reporting in, Pool Area is all clear. Over."
				},
				b12 = {
					text = "Two-Three reporting in, Balcony is all clear. Over."
				},
				b13 = {
					text = "Two-Three reporting in, Living Room is all clear. Over."
				},
				b14 = {
					text = "Two-Three reporting in, Corridor is all clear. Over."
				},
				b15 = {
					text = "Two-Three reporting in, Lobby is all clear. Over."
				},
				b16 = {
					text = "Two-Three reporting in, Security Door is shut and locked, everything's fine. Over."
				},
				b17 = {
					text = "Two-Three reporting in, Security Room is all clear. Over."
				},
				b18 = {
					text = "Two-Three reporting in, camera is working fine, no sign of tampering. Over."
				},
				b19 = {
					text = "Two-Three reporting in, Staircase is all clear. Over."
				},
				b20 = {
					text = "Two-Three reporting in, Penthouse is clear. Over."
				},
				b21 = {
					text = "Two-Three reporting in, Garage is clear. Over."
				},
				b22 = {
					text = "Moving on."
				},
				b23 = {
					text = "Two-Three to Control, could someone buzz me through the door?."
				},
				b24 = {
					text = "Two-Three to Control, this whole place is clear, I'm going home. Over and out."
				},
				b25 = {
					text = "Reporting in, glass shards everywhere! Signs of break in! Send reinforcements!"
				},
				b26 = {
					text = "Two-Three reporting in, someone's been fiddling with this camera. Send backup!"
				},
				b27 = {
					text = "Two-Three reporting in, I hear some kind of noise. Send backup!"
				},
				b28 = {
					text = "Two-Three reporting in, I'm outside the lobby. Over."
				},
				bak = {
					text = "Watch your background, civilians on scene!"
				},
				burndeath = {
					text = "[fire death]"
				},
				burnhurt = {
					variants = {
						clk = {
							text = "[fire hurt]"
						},
						mdc = {
							text = "[fire hurt]"
						},
						shd = {
							text = "[fire hurt]"
						},
						bdz = {
							text = "[fire hurt]"
						},
						tsr = {
							text = "[fire hurt]"
						},
						criminal = {
							disabled = true
						}
					}
				},
				c01 = {
					text = "Contact!"
				}, --spotted criminal
				ch1 = {
					text = "Watch out for the trip mines!"
				},
				ch2 = {
					text = "Watch out for the sentry gun!"
				},
				ch3 = {
					text = "Argh! Some kind of jammer!"
				}, --ecm feedback
				ch4 = {
					text = "That maniac has a fucking SAW!"
				},
				civ = {
					text = "Get the hostages!"
				},
				clr = {
					text = "Area clear."
				},
				cn1 = {
					text = "[converted to joker]"
				},
				cr1 = {
					text = "Hey, stay calm, we're getting you out."
				}, --to hostage
				d01 = {
					text = "Deploy smoke."
				},
				d02 = {
					text = "Throwing a flashbang!"
				},
				e01 = {
					text = "Disable that drill!"
				},
				e02 = {
					text = "Disable their gear!"
				},
				e03 = {
					text = "Disabling the power!"
				},
				e04 = {
					text = "Do what you can to slow them down."
				},
				e05 = {
					text = "Drill is disabled, over."
				},
				e06 = {
					text = "Disabled their gear."
				},
				g90 = {
					text = "[chatter]",
					disabled = "whisper_mode",
					variants = {
						tsr = {
							text = "[Taser taunt]",
							disabled = false
						},
						clk = {
							text = "[Cloaker taunt]",
							disabled = false
						},
						mdc = {
							text = "[Medic taunt]",
							disabled = false
						},
						bdz = {
							text = "[Bulldozer taunt]",
							disabled = false
						},
						criminal = {
							disabled = true
						}
					}
				}, --it's the clowns from tv!
				gr1a = {
					text = "Rescue team Alpha going in."
				},
				gr1b = {
					text = "Rescue team Bravo going in."
				},
				gr1c = {
					text = "Rescue team Charlie going in."
				},
				gr1d = {
					text = "Rescue team Delta going in."
				},
				gr2a = {
					text = "Assault team Alpha going in."
				},
				gr2b = {
					text = "Assault team Bravo going in."
				},
				gr2c = {
					text = "Assault team Charlie going in."
				},
				gr2d = {
					text = "Assault team Delta going in"
				},
				h01 = {
					text = "Freeing hostage"
				},
				hlp = {
					text = "HELP!",
					disabled = "whisper_mode"
				},
				i01 = {
					text = "Freeze!" --or "Hold it!"
				},
				i02 = {
					text = "No sudden movements!"
				},
				i03 = {
					text = "This ends now!"
				},
				l01 = {
					text = "Get those bags!"
				},
				lk3a = {
					text = "Jeez!"
				},
				lk3b = {
					text = "Fucking hell!"
				},
				m01 = {
					text = "Cease fire, exit point!"
				},
				med = {
					text = "There's a doctor bag! They must have a field medic!"
				},
				mov = {
					text = "Move!",
					disabled = "whisper_mode"
				},
				pos = {
					text = "I'm in position."
				},
				prm = {
					text = "Wait for my signal."
				},
				pus = {
					text = "Rush them!"
				},
				r01 = {
					text = "Roger that."
				},
				rdy = {
					text = "Ready!",
					disabled = true
				},
				rrl = {
					text = "He's reloading!"
				},
				s01x = {
					text = "Okay, okay! Just don't shoot!"
				},
				t01 = {
					text = "Looking for another way in."
				},
				x01a_any_3p = {
					text = "[pain]",
					disabled = true
				},
				lt2_c01 = {
					variants = {
						cop = {
							line_variations = {
								any_mode = {
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
							line_variations = {
								any_mode = {
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
				lt1_aes = {
					variants = {
						cop = {
							line_variations = {
								any_mode = {
									"What the fuck is this?!",
									"Oh, fuck me sideways!",
									"Who let them in, eh, what the fuck?",
									"Shit!",
									"Who the hell do you think you are?",
									"Who is this, who the fuck are you?!"
								}
							}
						}
					}
				},
	--mission specific dialogue; i removed the variant/subvariant tables for these since they will play from any source, and don't require a specific voice prefix.
				--no mercy
				Play_bil_nmh_01_01 = {
					override_name = "Bill",
					line_variations = {
						any_mode = {
							"Come on, ya stinkin' elevator...",
							"Don't break down on me, elevator...",
							"Alright, let's go!",
							"Let's move, people!"
						}
					}
				},
				Play_bil_nmh_01_02 = {
					override_name = "Bill",
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
							"Excuse me, sirs, this is your floor, so can you kindly get the HELL off of my elevator?",
							"Well come on, I don't have all day, get the hell off!",
							"This is your floor, not mine, hurry up and get the hell off.",
							"I think this is your floor."
						}
					}
				},
				Play_doc_nmh_a = {
					override_name = "Dr. Schneider",
					duration = 20,
					line_variations = {
						any_mode = {
							"Welcome. Let's start the round.",
							"I see you have your gloves on already. Great.",
							"Welcome. We've been expecting you. Shall we start the round?"
						}
					}
				},
				Play_doc_nmh_b = {
					override_name = "Dr. Schneider",
					duration = 4,
					text = "First, let's look at Isolation B." --no variations for these
				},
				Play_doc_nmh_c = {
					override_name = "Dr. Schneider",
					duration = 4,
					text = "Now, let's look at Isolation A."
				},
				--not sure what happened to c
				Play_doc_nmh_d = {
					override_name = "Dr. Schneider",
					duration = 4,
					text = "Finally, let's look at Isolation C."
				},
				Play_doc_nmh_e = {
					override_name = "Dr. Schneider",
					duration = 4,
					line_variations = {
						any_mode = {
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
					duration = 20,
					line_variations = {
						any_mode = {
							"Let's check the blood pressures as well.",
							"Let's take another lap and check each patient's blood pressure, too.",
							"Let's take another round and look at the blood pressure of the patients, as well.",
							"Let's take another loop for a blood pressure check-up."
						}
					}
				},
				Play_doc_nmh_g = {
					override_name = "Dr. Schneider",
					duration = 20,
					line_variations = {
						any_mode = {
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
					duration = 5,
					text = "If you need me, I'll be over there." --no variations
				},
				Play_doc_nmh_i = {
					override_name = "Dr. Schneider",
					duration = 5,
					line_variations = {
						any_mode = {
							"That's all I can tell you about the patients, doctor.", --two variations with only slight differences
							"That's all I can tell you about the patients, doctor..."
						}
					}
				},
				Play_doc_nmh_run_01 = {
					override_name = "Dr. Schneider",
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					--variants not included
					line_variations = {
						any_mode = {
							"Only employees are allowed here.",
							"I'm sorry. This area is only for personnel.",
							"Please. Only staff are allowed here.",
							"This area is staff only, I'm afraid."
						}
					}
				},

				--panic room
				Play_bnc_flt_01 = {
					variants = {
						cop = {
							line_variations = {
								any_mode = {
									"Get inside. It's straight ahead.",
									"[whistle] Hey, open up!"
								}
							}
						}

					}
				},
				Play_bnc_flt_02 = {
					variants = {
						cop = {
							duration = 5,
							line_variations = {
								any_mode = {
									"Gentlemen.",
									"They're here.",
									"You can go inside now. They're expecting you."
								}
							}
						}
					}
				},
				Play_dlr_flt_01 = {
					variants = {
						cop = {
							duration = 5,
							text = "Welcome. Put the money by the table."
						}
					}
				},
				Play_dlr_flt_02 = {
					variants = {
						cop = {
							duration = 5,
							line_variations = {
								any_mode = {
									"You're messin' with me? Show me the money!",
									"Put your bag on the table, I'm waiting."
								}
							}
						}
					}
				},
				Play_dlr_flt_03 = {
					variants = {
						cop = {
							duration = 6,
							text = "I'll get my main man Chavez to hook you guys up. You guys 'ang around."
						}
					}
				},
				
		--counterfeit
				Play_bkn_pal_01 = {
					override_name = "Sunbathing Party Guest",
					text = "Ugh, what are you looking at?",
					line_variations = {
						"Ugh, what are you looking at?",
						"Get out of there, you're blocking the sun...",
						"Get out of there, you're blocking the sun!"
					}
				},
				Play_bkn_pal_02 = {
					override_name = "Sunbathing Party Guest",
					text = "Get me some tanning lotion.",
					override_text_color = ClosedCaptions.color_data.neutral1, --this field is necessary for when voicelines are set to play through a source that is not a unit's sound() extension 
					line_variations = {
						"Get me some tanning lotion, will ya?",
						"Get me some tanning lotion, baby.",
						"Get me some tanning lotion."
					}
				},
				Play_bkn_pal_03 = {
					override_name = "Party 'Guest'",
					text = "You should get us some weed, too.",
					override_text_color = ClosedCaptions.color_data.neutral1,
					line_variations = {
						"[flirtatious] Ooh, you should totally get us some weed, as well.",
						"Oh, and you should probably get us some weed, too."
					}
				},
				Play_bkn_pal_04 = {
					override_name = "Party 'Guest'",
					text = "Mitchell, can we go shopping again?",
					line_variations = {
						any_mode = {
							"Hey, Mitchell, can I go shopping again?",
							"Mitchell, can we go shopping again?"									
						}
					}
				},
				Play_bkn_pal_05 = {
					override_name = "Party 'Guest'",
					text = "Mitchell, fix the pool, already!",
					line_variations = {
						any_mode = {
							"Hey, Mitchell? When will the pool be ready?",
							"Fix that pool! I wanna take a swim!",
							"Fix that pool! I wanna take a swim! YESTERDAY!",
							"Mitchell! Get that pool fixed, okay?"
						}
					}
				},
				Play_mch_pal_01 = {
					override_name = "Mitchell",
					text = "How do I make my money? Uh...",
					line_variations = {
						any_mode = {
							"How do I make my money? ...publishing. [nervous chuckle] Yeah, publishing...",
							"I'm a self-made millionaire. When I run dry, well... I just make another million.",
							"[pensive] How do I make my money? Well, you could say I make a lot of it.",
							"[pensive] How do I make my money? Well, let's just say... let's just say I make a lot of it.",
							"You know wanna know how I make my money? Hard work. Right through the night.",
							"My money comes from... well, a sort of trust fund. I'd let you in, but I'd have to trust you.",
							"Eh, my work is pretty dull, like a machine, but it pays well.",
							"How do I make my money? I just keep pressing. Yeah."
						}
					}
				},
				Play_mch_pal_02 = {
					override_name = "Mitchell",
					text = "[boasting about his money]",
					line_variations = {
						recombinable = true,
						any_mode = {
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
					text = "[boasting about expensive hookers]",
					line_variations = {
						any_mode = {
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
					text = "[boasting about The King]",
					line_variations = {
						recombinable = true,
						any_mode = {
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
					override_text_color = ClosedCaptions.color_data.neutral1,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					line_variations = {
						any_mode = {
							"It's just down here.",
							"Watch your step down here.",
							"Alright, down here."									
						}
					}
				},
				Play_mch_pal_07 = {
					override_name = "Mitchell",
					duration = 7,
					text = "See those pipes, leaking down the walls! It's fucked! This is a $10,000 carpet!",
					line_variations = {
						any_mode = {
							"You see it? Water, fuckin' running down the wall! Totally fucked, man!",
							"There! Fuckin' pissing all down the wall!",
							"Alright, you see those pipes? You know, leaking down the wall? Fucked!"
						}
					}
				},
				Play_mch_pal_08 = {
					override_name = "Mitchell",
					text = "Hey, I'm not paying you guys to hang around! Get down there!",
					duration = 7,
					line_variations = {
						any_mode = {
							"Hey, I'm not paying you guys to hang around! Get down there!",
							"Hey, I'm not paying you guys to hang around! Get the FUCK down in the basement!",
							"Hey, stop scratching your balls and get down here!"
						}
					}
				},
				Play_mch_pal_09 = {
					override_name = "Mitchell",
					text = "Fix it, already!",
					duration = 20,
					line_variations = {
						recombinable = true,
						any_mode = {
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
					line_variations = {
						any_mode = {
							"And I don't wanna see no bills written up for this.",
							"[annoyed] Oh, guys? I hope it's free service.",
							"And don't think about billing me for this shit."
						}
					}
				},
				Play_mch_pal_11 = {
					override_name = "Mitchell",
					text = "Aw, fuck!",
					line_variations = {
						any_mode = {
							"Oh, fuck!",
							"Okay, you got me, you got me good.",
							"[groans] Shit! I guess I had it coming."
						}
					}
				},
				Play_mch_pal_12 = {
					override_name = "Mitchell",
					text = "Play_mch_pal_12",
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
							"Fucking clowns! You shouldn't be here!",
							"[angry laugh] Fucking clowns!",
							"[angry laugh]"
						}
					}
				},
				Play_bqg_pal_01 = {
					override_name = "Party 'Guest'",
					text = "It's only $10,000 a day.",
					line_variations = {
						any_mode = {
							"[flirtatious] C'mon, you can afford it, I'm sure!",
							"[sultry] Yeah, it's $10,000 a day.",
							"[sultry] Yeah, it's only $10,000 a day."
						}
					}
				},
				Play_bqg_pal_02 = {
					override_name = "Party 'Guest'",
					text = "You don't want us to leave, do you?",
					line_variations = {
						any_mode = {
							"You don't want us to... leave, do you? We're having so much fun together!",
							"You don't want us to leave, do you?"
						}
					}
				},
				Play_bqg_pal_03 = {
					override_name = "Party 'Guest'",
					text = "When these plumbers are gone, we can get this party started for real!",
					duration = 6,
					line_variations = {
						any_mode = {
							"When these plumbers are gone, we can get this party started for real!",
							"Once pool fixers are gone, we can get this party started for real!"
						}
					}
				},
				Play_bqg_pal_04 = {
					override_name = "Party 'Guest'",
					text = "I'm fed up waiting for that meat!",
					duration = 6,
					line_variations = {
						any_mode = {
							"I'm fed up waiting for that meat!",
							"[impatiently] Will those steaks ever be ready?",
							"Hey Mitchell?! I said 'medium rare', not 'well done'! How long could it take?!"
						}
					}
				},
				Play_cm1_pal_01 = {
					override_name = "Party 'Guest'",
					duration = 6,
					text = "My friend wants another $10k for the party supplies.",
					line_variations = {
						any_mode = {
							"She, uh, wants another $10k to do... that thing.",
							"Hey, uh, my buddy has the blow. Wants $10k for it.",
							"THAT chick? She'll do it, but wants another $10k."
						}
					}
				},
				Play_cm1_pal_02 = {
					override_name = "Party 'Guest'",
					duration = 6,
					text = "Someone's gonna notice all this spending.",
					line_variations = {
						any_mode = {
							"Someone's gonna notice all this spending.",
							"Oh, we shouldn't have spent so much money so quickly...",
							"We're pissing a lot of cash. Someone's gonna notice."
						}
					}
				},
				Play_cm1_pal_03 = {
					override_name = "Party 'Guest'",
					text = "Yeah, so... anyway...",
					line_variations = {
						any_mode = {
							"Yeah, so... anyway...",
							"[groans] Shit...",
							"Man..."
						}
					}
				},
				Play_cm2_pal_01 = {
					override_name = "Mitchell's friend",
					text = "It's all in the basement, man. Go on, help yourself.",
					line_variations = {
						any_mode = {
							"It's all in the basement, man. Go on, help yourself.",
							"Downstairs, brother. Go get a loan.",
							"It's all in the base. Man, c'mon, help yourself."
						}
					}
				},
				Play_cm2_pal_02 = {
					override_name = "Mitchell's friend",
					text = "Play_cm2_pal_02",
					line_variations = {
						any_mode = {
							"It's free money, brother!",
							"It's not like we, uh... can't get more, right?",
							"Hey, stay cool, brother!"
						}
					}
				},
				Play_pil_pal_01 = {
					text = "Who are those people?",
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
							"[Russian accent] Somebody fetch me a drink.",
							"[Russian accent] Do you have anything stronger, 'homie'?"
						}
					}
				},
				Play_pil_pal_03 = {
					text = "[angry Russian]"
				},
				cft_piano_music = {
					override_name = "SFX",
					source_id = "sfx",
					text = "[classical piano music]"
				},
				
		--undercover		
				Play_txm_man_01 = {
					override_name = "Taxman",
					text = "It's close by, but I want to see the funds.",
					line_variations = {
						any_mode = {
							"It's close by, but I want to see the funds.",
							"It's... it's somewhere close, but I want to see the funds.",
							"It's... it's somewhere close. I want to see the funds.",
							"It's nearby. Can I see the funds?"
						}
					}
				},
				Play_txm_man_02 = {
					override_name = "Taxman",
					text = "Great. I'll go get the server.",
					line_variations = {
						any_mode = {
							"Nice. I'll get the server.",
							"Excellent. I'll get the server.",
							"Great. I'll go get the server."
						}
					}
				},
				Play_txm_man_03 = {
					override_name = "Taxman",
					text = "Where are you taking me?",
					line_variations = {
						any_mode = {
							"Huh? Where the fuck am I?",
							"Where are you taking me?"
						}
					}
				},
				Play_txm_man_04 = {
					override_name = "Taxman",
					text = "No, I won't move! Too much shooting!",
					line_variations = {
						any_mode = {
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
					text = "I know what you guys are after, but I won't give it to you."
				},
				Play_txm_man_06 = {
					override_name = "Taxman",
					text = "Resisting interrogation",
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
							"[weakly] Enough!",
							"[coughs] Okay! [continues coughing] Okay, okay...",
							"[hoarsely] Okay... easy, easy!"
						}
					}
				},
				Play_txm_man_08a = {
					duration = 6,
					override_name = "Taxman",
					text = "The login... is MercyKill. Capital'M', capital 'K'."
				},
				Play_txm_man_08b = {
					duration = 7,
					override_name = "Taxman",
					text = "The account is 'Starbreezer'! It's 'Starbreezer'! [gritting teeth in pain] FUCK!"
				},
				Play_txm_man_08c = {
					duration = 8,
					override_name = "Taxman",
					text = "[hoarsely] The password is SYGON. All... capital letters. [groaning in pain] Agh, FUUUCK!"
				},
				Play_txm_man_09 = {
					override_name = "Taxman",
					text = "Resistance failing",
					line_variations = {
						any_mode = {
							"[groaning in pain] I won't... say... another... syllable!",
							"[groaning in pain] You won't get another WORD out of me!",
							"[groaning in pain] I told you too much already!",
							"[groaning in pain] You hit like a girl!"
						}
					}
				},
				Play_txm_man_10 = {
					override_name = "Taxman",
					text = "Being interrogated",
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
							"[burning alive inside limo, pounding on doors]",
							"[muffled screaming]",
							"[screaming in excruciating pain]"
						}
					}
				},
				Play_txm_man_12 = {
					override_name = "Taxman",
					text = "[coughing]",
					line_variations = {
						any_mode = {
							"[coughing]",
							"[violent coughing]",
							"[weakly coughing]"
						}
					}
				},
				Play_txm_man_13 = {
					override_name = "Taxman",
					text = "[cries out in pain]"
				},
				
			--hoxton revenge
				Play_hct_hb3_01 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "Finally, you're opening the timelock!",
					line_variations = {
						any_mode = {
							"Are you guys finally bringing me some real food, instead of these fried pig assholes? I'm fucking starving in here!",
							"Finally! Did you bring me some magazines? There's not a whole lot to do in here.",
							"Goddammit, are you farting in the air supply? Can I come out now?"
						}
					}
				},
				Play_hct_hb3_02 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "Impatiently waiting for timelock",
					line_variations = {
						any_mode = {
							"Fuck the timelock! Let me out already, I need a goddamn smoke! [smoker's cough]",
							"Tick-tock... [scoffs] You fancy you endless layers of bullshit! I want some fresh air, dammit!",
							"[frustrated groan] Stupid timelock. You feds are paranoid motherfuckers. I'm tired of sitting in this fucking metal box."
						}
					}
				},
				Play_hct_hb3_03 = {
					override_name = "Hector",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "No... it can't be you!",
					line_variations = {
						any_mode = {
							"No... it can't be you!",
							"How did you...?! Cocksuckers!",
							"Oh, shit... it's YOU!"							
						}
					}
				},
				Play_hct_hb3_04 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "(swearing at heisters)",
					line_variations = {
						any_mode = {
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
					line_variations = {
						any_mode = {
							"Time to say adios... adios to you! To that fuckface, Bain... say... 'ADIOS!'",
							"Time to say goodbye! You were useful... for a while. But now? ADIOS, clown fucks!",
							"It's a shame we had to part this way. You were good tools, I'll give you that. But in the end... just tools."
						}
					}
				},
				Play_hct_hb3_06 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "Come! Come on! Open the door! I have a 'surprise' for you!",
					line_variations = {
						any_mode = {
							"Come! Come on! Open the door! I have a 'surprise' for you!",
							"Alright then! [deep sniffing] All fucking right then!",
							"You know, if you even manage to take this door down, I got a little surprise for you 'putas'!"
						}
					}
				},
				Play_hct_hb3_07 = {
					override_name = "The Rat",
					override_text_color = ClosedCaptions.color_data.boss,
					text = "HEEEEERE'S HECTOR!",
					line_variations = {
						any_mode = {
							"SAY 'HOLA' TO MY LITTLE FRIENDS!",
							"HEEEEEEE'S HECTOR!",
							"READY OR NOT, HERE I COME!"
						}
					}
				}
			}
		}
	},
	event_ids = {}
}