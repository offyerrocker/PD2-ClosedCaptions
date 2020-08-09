--todo gambler?
ClosedCaptions._sounds = {
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
					text = "[picked up ammo]",
					source = "sfx",
					disabled = true
				},
				flashbang_beep = {
					text = "[flashbang beeping]",
					source = "sfx",
					disabled = true
				},
				tasered_loop = {
					text = "tased",
					source = "sfx",
					disabled = true
				},
				melee_hit_body = {
					text = "melee impact",
					disabled = true
				},
				player_hit = {
					text = "armor damage",
					disabled = true
				},
				g01 = {
					variants = {
						criminal = {
							text = "Go downstairs",
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Down the stairs",
										"Downstairs."
									}
								},
								rb15 = {
									text_variations = { --technically has loud/stealth sound variants
										"Downstairs!",
										"Down the stairs!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Upstairs!",
										"Up the stairs!"
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
							text_variations = {
								"To the left!",
								"Left!"
							}
						}
					}
				},
				g04 = {
					variants = {
						criminal = {
							text = "Go right",
							priority = 5,
							text_variations = {
								"To the right!",
								"Right!"
							}
						}
					}
				},
				g05 = {
					variants = {
						criminal = {
							text = "Go up",
							priority = 5,
							variations = {
								criminal = {
									whisper_mode = {
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
				},
				g06 = {
					variants = {
						criminal = {
							text = "Go down",
							priority = 5,
							whisper_mode = {
								"Down!",
								"Keep going down!"
							},
							assault_mode = {
								"Down, down!",
								"Keep going down!"
							}
						}
					}
				},
				g07 = {
					variants = {
						criminal = {
							text = "We need to get out",
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"We've got to get out.",
										"We've got to get out!",
										"Get out!"
									}
								},
								rb15 = {
									text_variations = {
										"Get out!",
										"We've gotta get out!"
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
							text_variations = {
								"Inside!",
								"Get in!"
							}
						}
					}
				},
				g09 = {
					variants = {
						criminal = {
							text = "Hurry",
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"C'mon, faster!",
										"Double time!",
										"Hurry up!",
										"Hurry, hurry!"
									}
								},
								rb15 = {
									text_variations = {
										"Hurry, hurry!",
										"HURRY!",
										"Hurry up!",
										"C'mon, faster!"
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
							text_variations = {
								"Careful, now!",
								"Careful!"
							}
						}
					}
				},
				g11 = {
					variants = {
						criminal = {
							text = "Wrong way",
							priority = 5,
								text_variations = {
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
							variations = {
								rb4 = {
									text_variations = {
										"This way!",
										"We're on the right track."
									}
								},
								rb15 = {
									text_variations = {
										"This is right!",
										"This way!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Come on.",
										"Let's go."
									}
								},
								rb15 = {
									text_variations = {
										"Come on!",
										"Let's go!"
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
							variations = {
								rb4 = {
									text_variations = {
										"This is it.",
										"This is the place."
									}
								},
								rb15 = {
									text_variations = {
										"This is it!",
										"This is the place!"
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
							text_variations = {
								"Over there!",
								"There!"
							}
						}
					}
				},
				g16 = {
					variants = {
						criminal = {
							text = "Keep defending",
							priority = 5,
							variations = {
								rb4 = { --!
									assault_mode = {
										"Keep defending!",
										"Keep 'em away!",
										"Hold the fort!"
									}
								},
								rb15 = {
									assault_mode = {
										"Keep defending!",
										"Left!"
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
							variations = {
								rb4 = {
									assault_mode = {
									},
									whisper_mode = {
										"We've got to get out of here.",
										"Time to go."
									}
								},
								rb15 = {
									assault_mode = {
										"Let's be off!",
										"Let's head out!",
										"Time to go!",
										"We gotta get outta here!"
									},
									whisper_mode = {
										"We've got to get out of here.",
										"Time to go."
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
							variations = {
								rb4 = {
									whisper_mode = {
										"Move!",
										"Move it."
									},
									assault_mode = {}
								},
								rb15 = {
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
									whisper_mode = {
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
				},
				g19 = {
					variants = {
						criminal = {
							text = "Go straight",
							priority = 5,
							text_variations = {
								"Straight on!",
								"Straight ahead!"
							}
						}
					}
				},
				g20 = {
					variants = {
						criminal = {
							text = "Jump down",
							priority = 5,
							variations = {
								rb4 = {
									whisper_mode = {
										"Jump down!",
										"Down here!"
									},
									assault_mode = {
									}
								},
								rb15 = {
									whisper_mode = {
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
					priority = 5
				},
				g21 = {
					variants = {
						criminal = {
							text = "Placed drill",
							priority = 5,
							variations = {
								rb4 = {
									whisper_mode = {
										"Drill's in place.",
										"Drill in place.",
										"Drill mounted."
									},
									assault_mode = {
									}
								}
								rb15 = {
									whisper_mode = {
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
				},
				g22 = {
					variants = {
						criminal = {
							text = nil, --only houston and chains have sound vo for this, so do not display cc for anyone else for this line
							variations = {
								rb222 = {
									text_variations = {	
										"Piece of shit drill!",
										"Broke-dick piece of shit drill!"
									}
								},
								rb555 = { --!
									text_variations = {	
										"Piece of shit drill!",
										"This drill is a piece of shit!"
									}
								}
							}
						}
					}
				},
				g23 = {
					text = "Shoot them!",
					variants = {
						criminal = {
							rb4 = {
								text_variations = {
									"Shoot 'em!",
									"Shoot!"
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
							variations = {
								rb4 = {
									whisper_mode = {
										
									},
									assault_mode = {
										"I almost can't believe we did it!",
										"Yeah! We pulled that off! Fantastic!",
										"Fantastic! Just fantastic!",
										"Haha! We're in the clear!",
										"Great work, my friends, great work!",
										"Yes! Tightest crew ever!",
									}
								},
								rb15 = {
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
				},
				g25 = {
					text = "Take out the cameras!",
					variants = {
						criminal = {
							text_variations = {
								"Take out the cameras!",
								"Remember, take out the cameras!"
							}
						}
					}
				},
				g26 = {
					variants = {
						criminal = {
							text = "Use cable ties",
							priority = 5,
							variations = {
								rb4 = {
									whisper_mode = {
										"Rope down the people with the Cable Ties.",
										"Remember the Cable Ties.",
										"Use those Cable Ties!",
										"Cable Ties- make use of 'em!"
									}
								},
								rb15 = {
									whisper_mode = {
										"Tie 'em up.",
										"Tie everybody down.",
										"Well, how about using the cable ties, dipshit?"
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
							variations = {
								rb4 = {
									whisper_mode = {
										"Careful with the people!",
										"Watch the crowd!",
										"Watch the civvies!",
										"Keep the crowds in check."
									}
								},
								rb15 = {
									whisper_mode = {
										"Hey, watch the bloody civilians!",
										"Crikey, keep the civvies in check!"
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
							variations = {
								rb4 = {
									whisper_mode = {
										"We're gonna make it!",
										"Almost there, almost there!",
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
							variations = {
								rb4 = {
									whisper_mode = {
										"Aw, shit!",
										"FUCK! Oh, FUCK!",
										"Shit!",
										"Damn!"
									}
								},
								rb15 = {
									whisper_mode = {
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
				},
				g30 = {
					variants = {
						criminal = {
							text = "Killed Bulldozer",
							priority = 5,
							rb4 = {
								whisper_mode = { --! check whisper variant for get stuffed
									"Bulldozer down!",
									"Bulldozer eliminated!",
									"Bulldozer taken care of!",
									"Bulldozer's history!"
								},
								assault_mode = {
								}
							},
							rb15 = {
								whisper_mode = { --! check whisper variant for get stuffed
									"Bulldozer down!",
									"Fuck off, dozer!",
									"Fuck you, Bulldozer!",
									"Dozer's history!",
									"Killed a dozer!"
								},
								assault_mode = {
									"Fuck you, Bulldozer!",
									"Bulldozer down!",
									"Get stuffed, dozer fuck!",
									"Fuck off, dozer!",
									"Killed a dozer!",
									"Dozer's history!"
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
								text_variations = {
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
							},
							rb15 = {
								text_variations = {
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
				},
				g50 = {
					text = "Get ready for action.",
					variants = {}
				},
				g60 = {
					variants = {
						criminal = {
							text = "Awestruck",
							priority = 5,
							variations = {
								rb4 = {
									whisper_mode = {
										"Oh, fuck...",
										"Fuck me...",
										"[chuckles] Oho, shit...",
										"Sheeit!",
										"Fuck...!",
										"Damn..."
									},
									assault_mode = {}
								},
								rb15 = {
									whisper_mode = {
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
				},
				g61 = {
					variants = {
						criminal = {
							text = "I got the drill",
							priority = 5,
							variations = {
								rb4 = {
									whisper_mode = {
										"I got the drill.",
										"I got the drill!",
										
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
							variations = {
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
							variations = {
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
							variations = {
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
							variations = {
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
							variations = {
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
							variations = {
								rb4 = {
									whisper_mode = {
										"Any second now.",
										"Any second...",
										"Steady now! Hold it...",
										"Wait for it, wait for it..."
									},
									assault_mode = {}
								},
								rb15 = {
									whisper_mode = {
										"Let's just fucking go!",
										"Time to dance!",
										"Get fucking ready.",
										"Any second now, c'mon!"
									},
									assault_mode = {}
								}
							}
						}}
				},
				g68 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
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
				},
				g69 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"We're easy targets here...",
										"We're easy targets, this place is no good."
									}
								}
							}
						}
					}
				},
				g70 = {
					text = "Cops just got here.",
					variants = {}
				},
				g72 = {
					text = "I'm on it!",
					variants = {}
				},
				g92 = {
					variants = {
						criminal = {
							text = "Picked up Gage Package",
							priority = 5,
							variations = {
								rb4 = {
									whisper_mode = {
										"Gotcha!",
										"Gotcha.",
										"Alriiight!",
									},
									assault_mode = {}
								},
								rb15 = {
									whisper_mode = {
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
				},
				p01 = {
					variants = {
						cop = {
							text = "They have hostages! We need to delay the assault!"
						},
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Alright, let's do this.",
										"Okay, let's do this.",
										"'kay, let's do this, buddies."
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
							variations = {
								rb4 = {
									text_variations = {
										"Time to make that money.",
										"Going to work.",
										"Let's make that money"
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
							variations = {
								rb4 = {
									text_variations = {
										"Time to break a little bad.",
										"Let's break bad."
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
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p05 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p06 = {	
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p07 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p08 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p09 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Computer's beeping again!",
										"We gotta fix the computer again!",
										"A machine ain't workin' again!",
										"Wondering if it's the OS, or what?",
										"[chuckles] Another technical problem with the computer.",
										"[chuckles] Wonder if it's the software.",
										"Wonder whether it's software or hardware failures.",
										
									}
								}
							}
						}
					}
				},
				p10 = {
					text = "Broke-dick piece of shit drill!",
					variants = {}
				},
				p12 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Go, go!",
										"GO, GO!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Get a move on!",
										"GET A MOVE ON!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Move it!",
										"MOVE IT!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Get moving!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Move!",
										"Go!",
										"GO!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Only seconds away!",
										"Any moment now!",
										"Any second!",
										"Any second...",
										"Any second now!",
										"We're almost done!",
										"Just a couple more seconds!",
										
									}
								}
							}
						}
					}
				},
				p18 = {
					text = "What're you waiting for!?",
					variants = {}
				},
				p19 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p20 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Follow me!",
										"Follow me.",
										"Come with me!",
										"Come with me."
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
							variations = {
								rb4 = {
									text_variations = {
										"Ah, fuck it. I never liked 'Plan A' anyway!",
										"Let's fuck shit up!",
										"Looks like we'll have to 'Plan B' it!",
										"Let's go to 'Plan B'!"
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
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p23 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Get ready for action!",
										"Get ready for action.",
										"Get ready now!"
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
							variations = {
								rb4 = {
									text_variations = {
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
								},
								rb15 = {
									text_variations = {
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
				},
				p25 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p26 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Don't get loose with it now!",
										"Cover the flanks!",
										"Watch your tails!",
										"Don't let 'em get cagey on us!"
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
							variations = {
								rb4 = {
									whisper_mode = {
										"Lootbag secured.",
										"Got a bag.",
										"One down.",
										"And another one!",
										"I got a lootbag.",
										"And another!",
										"One bag down!"
									},
									assault_mode = {}
								},
								rb15 = {
									whisper_mode = {
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
				},
				p28 = {
					variants = {
						criminal = {
							text = "All loot secured",
							priority = 5,
							variations = {
								rb4 = {
									whisper_mode = {
										"That's all of 'em!",
										"Haha, that's all of 'em!"
									},
									assault_mode = {}
								},
								rb15 = {
									whisper_mode = {
										"We got 'em all.",
										"That's all of 'em!",
										"That's all the bags!"
									},
									assault_mode = {}
								}
							}
						}
					}
				},
				p29 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Picking the lock.",
										"I'm picking the lock!",
										"Springing this damned lock. C'mon!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Yeah, using a keycard..."
										"Using a keycard.",
										"Using a keycard!",
										"Using a key.",
										"Yep, using a key."
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
							variations = {
								rb4 = {
									text_variations = {
										"These dirty fucking cops are stealing our loot!",
										"Pay attention! Cops are stealing our stuff!",
										"Goddamned cops! Can't even keep their hands off our hard-earned loot!",
										"Hey! Look at what those cops are doing!",
										"HEY! They're stealin' our shit!",
										"[chuckles] Look at these cops! Even dirtier than I thought!"
									}
								},
								rb15 = {
									text_variations = {
										"Hey, those pigs are grubbin' our shit!",
										"They're takin' our bags, KILL 'EM!",
										"Those FUCKWITS are stealing our loot!"
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
							variations = {
								rb4 = {
									text_variations = {
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
								},
								rb15 = {
									text_variations = {
										"You go ahead. I'll be ready when things go crazy.",
										"You go ahead. Call me when the fun begins.",
										"You go ahead. I'm here for the exciting bit.",
										"You go ahead. I'll turn the head up when it's time.",
										"Go on, then. I'll be ready when things go crazy.",
										"Go on, then. Call me when the fun begins.",
										"Go on, then. I'm here for the exciting bit.",
										"Check the place out. I'll be ready when things go crazy.",
										"Check the place out. Call me when the fun begins.",
										"Check the place out. I'm here for the exciting bit.",
										"Check the place out. I'll turn the heat up when it's time.",
										"Yeah, yeah- I'll wait here. I'll be ready when things go crazy.",
										"Yeah, yeah- I'll wait here. Call me when the fun begins.",
										"Yeah, yeah- I'll wait here. I'm here for the exciting bit.",
										"Yeah, yeah- I'll wait here. I'll turn the heat up when it's time."
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
							variations = {
								rb4 = {
									text_variations = {
										"They're coming through the skylights!",
										"They're coming from the ceiling!",
										"They're coming through the panels above!"										
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
							variations = {
								rb4 = {
									text_variations = {
										"They're coming in from above!",
										"They're on the roof!"
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
							variations = {
								rb4 = {
									text_variations = {
										"They're coming down the walls!",
										"They're coming down the sides!"
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
							variations = {
								rb4 = {
									text_variations = {
										"They're coming through the wall!",
										"They're coming through the wall panels!",
										"They're coming through the windows!"
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
							variations = {
								rb4 = {
									text_variations = {
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
				},
				p38 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"They're coming in from outside!",
										"They're climbing in from outside!"
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
							variations = {
								rb4 = {
									text_variations = {
										"They're climbing down on the outside!"
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
							variations = {
								rb4 = {
									text_variations = {
										"They're climbing up on the outside!"
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
							variations = {
								rb4 = {
									"SWAT chopper incoming!",
									"We got a helicopter inbound!"
								},
								rb15 = {
									text_variations = {
										"A bloody helicopter, inbound!",
										"SWAT chopper, incoming!"
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
							variations = {
								rb4 = {
									"SWAT insertion! Van coming in!"
								},
								rb15 = {
									text_variations = {
										"We got a SWAT van incoming!",
										"SWAT van, approaching!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Snipers!",
										"Heads down! Sniper!",
										"Watch out! Sniper!"
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
							variations = {
								rb4 = {
									text_variations = {
										"They're coming from the forest!",
										"They're coming out of the woods!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Friends, help!",
										"SOMEBODY! Help me!",
										"Friends, help me up!",
										"SOMEBODY! HELP!",
										"Somebody! I need help!",
										"Hey guys! You gotta help me!",
										"Somebody! Help me up!",
										"Hey, my friends! Help me!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Jump!"
									}
								}
							}
						}
					}
				},
				p47 = {
					variants = {
						criminal = {
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
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
				},
				v01 = {
					variants = {
						criminal = {
							text = "Got it",
							priority = 5,
							variations = {
								rb4 = {
									text_variations = {
										"Okay, we're on it!",
										"Okay, on it!",
										"Okay, we'll take care of it!",
										"Okay, will do!",
										"Alright, we're on it!",
										"Alright, we'll take care of it!",
										"Alright, will do!",
										"Acknowledged. We're on it!",
										"Acknowledged. On it!",
										"Acknowledged. We'll take care of it!",
										"Acknowledged. Will do!"
									}
								},
								rb15 = {
									text_variations = {
										"Alright, we're on it.",
										"Alright, on it!",
										"Alright, will do.",
										"Alright, we'll take care of it.",
										"Okay, we're on it!",
										"Okay, on it!",
										"Okay, will do.",
										"Okay, we'll take care of it.",
										"Got it, we're on it!",
										"Got it, on it!",
										"Got it, will do.",
										"Got it, we'll take care of it.",
										"I hear you, we're on it.",
										"I hear you, on it!",
										"I hear you, will do.",
										"I hear you, we'll take care of it."
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
							variations = {
								rb4 = {
									text_variations = {
										"We're in.",
										"We're through!",
										"We're inside!",
										"It's open!"
									}
								},
								rb15 = {
									text_variations = {
										"We're inside.",
										"It's open!",
										"We're in!",
										"We're through!"
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
							variations = {
								rb4 = {
									whisper_mode = {
										"It's here!",
										"Here it is!",
										"Found it!",
										"We got it!"
									},
									assault_mode = {}
								},
								rb15 = {
									whisper_mode = {
										"We got it!",
										"Here it is!",
										"Found it!"
									assault_mode = {}
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
							variations = {
								rb4 = {
									text_variations = {
										"Found one!",
										"Got one!"
									}
								},
								rb15 = {
									text_variations = {
										"We got one!",
										"Here's one!",
										"Found one!"
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
							variations = {
								rb4 = {
									text_variations = {
										"Got one more.",
										"We got one.",
										"Found another one.",
										"Here's another!"
									}
								},
								rb15 = {
									text_variations = {
										"Got one more.",
										"We got one.",
										"Found another one!",
										"Here's another!"
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
							variations = {
								rb15 = {
									text_variations = {
										"It's done!",
										"Done!"
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
							variations = {
								rb15 = {
									text_variations = {
										"We're done!",
										"DONE!"
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
							variations = {
								rb15 = {
									text_variations = {
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
				},
				v10 = {
					variants = {
						criminal = {
							text = "Found keycard",
							priority = 5,
							variations = {
								rb15 = {
									text_variations = {
										"I found a keycard!",
										"I found a keycard."
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
							variations = {
								rb15 = {
									text_variations = {
										"I got the keycard!",
										"I found the keycard!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Fucking hell, these things make it too easy!",
										"Almost too easy, yeah?",
										"Well, bugger me, this is easy!",
										"This makes shit too easy!"
									}
								}
							}
						}
					}
				},
				v13 = {
					variants = {
						criminal = {
							text = "Planted C4",
							priority = 5,
							variations = {
								rb15 = {
									text_variations = {
										"Get the fuck back!",
										"Cover ya' ears!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Fuck keycards when you can blow shit up!",
										"We're through!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Let's open this fuckin' door!",
										"Someone get the door open!",
										"Get the bloody door open!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Let's OPEN this shit!",
										"Crack it open!",
										"Let's open this motherfucker up!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Let's fuckin' go!"
									}
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
							variations = {
								rb15 = {
									text_variations = {
										"GET 'EM!",
										"KILL 'EM ALL!"
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
							variations = {
								rb15 = {
									text_variations = {
										"INCOMING!",
										"Here it comes!"
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
							variations = {
								rb15 = {
									whisper_mode = {
										"We got it!",
										"It's here!",
										"It's here, it's here!"
									},
									assault_mode = {
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
							variations = {
								rb15 = {
									text_variations = {
										"EMPTY this place!",
										"Get fuckin' all of it!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Well, bugger me, that's bloody nice!",
										"That's all of it!",
										"Now, THIS is a PAYDAY!"
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
							variations = {
								rb15 = {
									text_variations = {
										"That's the drill done!",
										"Drill's done!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Computer is finally fuckin' finished!",
										"Bloody hell, computer is FINALLY done!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Finally, fuckin' done!",
										"It's finished!"
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
							variations = {
								rb15 = {
									text_variations = {
										"We're gettin' out this way.",
										"Time to go, that's the way!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Those fuckwits are in the vents!",
										"Well, bugger me, the fuckers are in the vents!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Alright, I see the mark!",
										"Right, got the mark!"
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
							variations = {
								rb15 = {
									text_variations = {
										"She's there!",
										"She's there."
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
							variations = {
								rb15 = {
									text_variations = {
										"He's there!",
										"He's there."
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
							variations = {
								rb15 = {
									text_variations = {
										"They're there!",
										"They're there."
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
							variations = {
								rb15 = {
									text_variations = {
										"It's over there.",
										"It's over there!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Find that bloody bastard!",
										"FIND that bloody bastard!"
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
							variations = {
								rb15 = { --! need to write multi-line code to split it up because it's fuckin long
									text_variations = { 
										"Listen up, you bloody drongos! This is a robbery! We're not here to hurt you, but that can quickly change dependin' on your FUCKIN' actions, got it? We're after this BANK'S money, not yours, all your BLOODY money's insured by the FUCKIN' government, alright? You won't lose a FUCKIN' penny so think of your dipshit FAMILIES, now, your fat spouses and your ugly kids, you just KEEP IT SHUT like the good tools you are and STAY DOWN, and this'll be over in a bloody heartbeat."
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
							priority = 5,
							variations = {
								rb15 = {
									text_variations = {
										"BAIN!?",
										"BAIN?!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Well, now bloody what?",
										"So what the fuck do we do now, then?"
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
							variations = {
								rb15 = {
									text_variations = {
										"I'm gettin' a bad feelin' about this!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Search the place!",
										"Search the place."
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
							variations = {
								rb15 = {
									text_variations = {
										"Find the fucking mark!",
										"Find the fuckin' mark."
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
							variations = {
								rb15 = {
									text_variations = {
										"Find her!",
										"Find her."
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
							variations = {
								rb15 = {
									text_variations = {
										"Find that bloody bastard.",
										"Find that BLOODY bastard!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Let's find 'em!",
										"Let's find 'em."
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
							variations = {
								rb15 = {
									text_variations = {
										"Find it, now!",
										"Find it, NOW!"	
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
							variations = {
								rb15 = {
									text_variations = {
										"Keep looking1",
										"Keep looking."
									}
								}
							}
						}
					}
				},
				v45 = {
					text = "Aw, shit, they brought a turret!",
					variants = {},
					priority = 5
				},
				v46 = {
					variants = {
						criminal = {
							text = "Battle cry",
							priority = 5,
							variations = {
								rb15 = {
									text_variations = {
										"Take that!",
										"Hah, take that!",
										"Hahaha, fuck yes!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Have we got enough?"
									}
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
							variations = {
								rb15 = {
									text_variations = {
										"Fuck no, take it all!"
									}
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
							variations = {
								rb15 = {
									text_variations = {
										"Shoot it down!"
									}
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
							variations = {
								rb15 = {
									text_variations = {
										"Bunch a' bloody murkies!",
										"Fuckin' murkies over here!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Grab a bag and go!",
										"Grab a fuckin' bag and move it!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Can't move the fucker!",
										"Fucker's stuck!"
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
							variations = {
								rb15 = {
									text_variations = {
										"What is that fuckin' smell?!",
										"What is that bloody stench?!"
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
							variations = {
								rb15 = {
									text_variations = {
										"You tosser, could you have warned us?!",
										"Aw, shit, that was loud!"
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
							variations = {
								rb15 = {
									text_variations = {
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
				},
				v56 = {
					variants = {
						criminal = {
							text = "Greeting",
							priority = 5,
							variations = {
								rb15 = {
									text_variations = {
										"Hi.",
										"What's up?"
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
							variations = {
								rb15 = {
									text_variations = {
										"Found myself a crowbar!",
										"Got a crowbar!"
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
							variations = {
								rb15 = {
									text_variations = {
										"Sit the fuck down!",
										"Sit your arse down, you tosser!"
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
							variations = {
								rb15 = {
									whisper_mode = {
										"I see a Bulldozer!",
										"It's a Bulldozer!",
										"Bulldozer!",
										"Got a Bulldozer!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"I see a Bulldozer!",
										"It's a Bulldozer!",
										"Bulldozer!",
										"Got a Bulldozer!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"I've spotted a Shield!",
										"We've got a Shield over here!",
										"We've got a Shield!",
										"Shield!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"I've spotted a Shield!",
										"We've got a Shield over here!",
										"We've got a Shield!",
										"Shield!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Taser spotted, look out!",
										"Taser spotted!",
										"We've got a taser!",
										"Taser!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Taser spotted!",
										"Taser spotted, look out!",
										"We've got a taser!",
										"Taser!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Spotted a Cloaker!",
										"It's a Cloaker!",
										"We've got a Cloaker!",
										"Cloaker!",
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Spotted a Cloaker!",
										"It's a Cloaker!",
										"We've got a Cloaker!",
										"Cloaker!",
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Look out! Sniper!",
										"Stay back! Sniper!",
										"Watch out! Sniper!",
										"Sniper!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Look out! Sniper!",
										"Stay back! Sniper!",
										"Watch out! Sniper!",
										"Sniper!"
									},
									assault_mode = {
									
									}
								}
							}
						}
					}
				},
				f44x_any = {
					variants = {
						criminal = {
							text = "Spotted Sniper",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"SWAT Turret!",
										"Turret!",
										"Fuck! Turret!",
										"Turret! Watch out!",
										"Turret! Bloody careful, now!"
									},
									assault_mode = {
									
									}
								}
							}
						}
					}
				},
				f42_any = {
					text = "Look out!",
					variants = {}
				},
				f45x_any = {
					variants = {
						criminal = {
							text = "Spotted Captain",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"Watch out! Captain!",
										"It's a Captain!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"It's an enemy Medic!",
										"Look out! Medic!", --should these have "enemy" in front of them for clarity?
										"Enemy Medic!",
										"Shit, Medic!"
									},
									assault_mode = {
									
									}
								}
							}
						}
					}
				},
				g30x_any = { --with 1s delay
					variants = {
						criminal = {
							text = "Bulldozer down!",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"Bulldozer down.",
										"Fuck off, dozer.",
										"Fuck you, Bulldozer.",
										"Dozer's history.",
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
				},
				g31x_any = { --1s delay
					variants = {
						criminal = {
							text = "Killed Shield",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"Killed a Shield.",
										"Bye-bye, arsehole Shield.",
										"Got the fuckin' Shield.",
										"Get stuffed, Shield fuck.",
										"Fuck off, drongo Shield."
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"I got the Taser.",
										"Fuck off, Taser."
										"Taser's dead.",
										"Get stuffed, Taser fuck.",
										"Eat that, you tosser. (Taser)"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Cloaker's dead.",
										"Eat that, Cloaker fuck.",
										"Get stuffed, Cloaker.",
										"Sleep tight, Cloaker.",
										"Sit on my dick, Cloaker."
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Took care of the Sniper.",
										"Sniper's dead.",
										"Get stuffed, Sniper fuck.",
										"Fuck off, Sniper.",
										"Got a Sniper."
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Fuck off, Medic.",
										"Try an' heal any of those wounds, ya pussy. (Medic)",
										"Bye-bye, Medic fuck."										
									},
									assault_mode = {
									
									}
								}
							}
						}
					}
				},
				
				g40x_any = {
					text = "SMOKE!",
					variants = {}
				},
				g41x_any = {
					variants = {
						criminal = {
							text = "Flashbanged",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"FUCK, I TOOK A FLASHBANG IN THE FACE!",
										"BLOODY HELL, I'VE BEEN FLASHED!",
										"AAAGH, WHAT THE FUCK!",
										"CRIKEY, I'M COMPLETELY BLIND!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"AAGH, TEARGAS! [coughing] I'LL BLOODY KILL THE BASTARD WHO THREW THAT!",
										"FUCK, TEARGAS! [coughing] THESE FUCKWITS ARE USING GAS!",
										"TEARGAS! [coughing] WE NEED GAS MASKS, NOT CLOWN MASKS!",
										"FUCK, TEARGAS! [coughing] FUCK, THAT STINGS BAD!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"I'm such a drongo, I should NOT have been hit! Who's got a Medic Bag?",
										"I'm such a drongo, I should NOT have been hit! Anybody got a Medic Bag?",
										"I'm such a drongo, I should NOT have been hit! Can someone spare a Medic Bag?",
										"I'm such a drongo, I should NOT have been hit! I could really use a Medic Bag!",
										"Those fuckwits got me good! Who's got a Medic Bag?",
										"Those fuckwits got me good! Anybody got a Medic Bag?",
										"Those fuckwits got me good! Can someone spare a Medic Bag?",
										"Those fuckwits got me good! I could really use a Medic Bag!",
										"Crikey, how many bullets did I eat? Who's got a Medic Bag?",
										"Crikey, how many bullets did I eat? Anybody got a Medic Bag?",
										"Crikey, how many bullets did I eat? Can someone spare a Medic Bag?",
										"Crikey, how many bullets did I eat? I could really use a Medic Bag!",
										"Fuckin' cowards got me! Who's got a Medic Bag?",
										"Fuckin' cowards got me! Anybody got a Medic Bag?",
										"Fuckin' cowards got me! Can someone spare a Medic Bag?",
										"Fuckin' cowards got me! I could really use a Medic Bag!",
										"Can't take much more of this! Who's got a Medic Bag?",
										"Can't take much more of this! Anybody got a Medic Bag?",
										"Can't take much more of this! Can someone spare a Medic Bag?",
										"Can't take much more of this! I could really use a Medic Bag!",
										"[screaming in pain] Fuck! Who's got a Medic Bag?",
										"[screaming in pain] Fuck! Can someone spare a Medic Bag?",
										"[screaming in pain] Fuck! Can someone spare a Medic Bag?",
										"[screaming in pain] Fuck! I could really use a Medic Bag!",
										"Fuck, this hurts! Who's got a Medic Bag?",
										"Fuck, this hurts! I could really use a Medic Bag!",
										"Fuck, this hurts! Can someone spare a Medic Bag?",
										"Fuck, this hurts! I could really use a Medic Bag!",
										"Shit, I'm hurting bad! Who's got a Medic Bag?",
										"Shit, I'm hurting bad! Anybody got a Medic Bag?",
										"Shit, I'm hurting bad! Can someone spare a Medic Bag?",
										"Shit, I'm hurting bad! I could really use a Medic Bag!",
										"Fuckin' dipshits got me good! Who's got a Medic Bag?",
										"Fuckin' dipshits got me good! Anybody got a Medic Bag?",
										"Fuckin' dipshits got me good! Can someone spare a Medic Bag?",
										"Fuckin' dipshits got me good! I could really use a Medic Bag!",
										"Fuck me, that bullet hurts! Who's got a Medic Bag?",
										"Fuck me, that bullet hurts! Anybody got a Medic Bag?",
										"Fuck me, that bullet hurts! Can someone spare a Medic Bag?",
										"Fuck me, that bullet hurts! I could really use a Medic Bag!",
										"[groaning in pain] Christ, this shit hurts! Who's got a Medic Bag?",
										"[groaning in pain] Christ, this shit hurts! Anybody got a Medic Bag?",
										"[groaning in pain] Christ, this shit hurts! Can someone spare a Medic Bag?",
										"[groaning in pain] Christ, this shit hurts! I could really use a Medic Bag!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"I'm almost out of ammo! I need some bloody ammo!",
										"I'm almost out of ammo! Get me some bloody bullets!",
										"I'm almost out of ammo! Get me some fucking ammo!",
										"I'm almost out of ammo! Get me some ammo!",
										"I'm low on ammo! I need some bloody ammo!",
										"I'm low on ammo! Get me some bloody bullets!",
										"I'm low on ammo! Get me some fucking ammo!",
										"I'm low on ammo! Get me some ammo!",
										"I'm running out of ammo! I need some bloody ammo!",
										"I'm running out of ammo! Get me some bloody bullets!",
										"I'm running out of ammo! Get me some fucking ammo!",
										"I'm running out of ammo! Get me some ammo!",
										"I'm almost out of ammo! I need some bloody ammo!",
										"I'm almost out of ammo! Get me some bloody bullets!",
										"I'm almost out of ammo! Get me some fucking ammo!",
										"I'm almost out of ammo! Get me some ammo!",
										"Mag's almost empty! I need some bloody ammo!",
										"Mag's almost empty! Get me some bloody bullets!",
										"Mag's almost empty! Get me some fucking ammo!",
										"Mag's almost empty! Get me some ammo!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"More ammo over here.",
										"There's ammo over here.",
										"Extra ammo over here.",
										"I dropped an Ammo Bag over here.",
									},
									assault_mode = {
									
									}
								}
							}
						}
					}
				},
				s02x_plu = {
					variants = {
						criminal = {
							text = "Placed Ammo Bag",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"I got a Medic Bag right here.",
										"Medic Bag over here.",
										"Medic Bag over here.", --two soundfile variations
										"Some medic supplies here."
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"[groans] I guess I should say 'thanks.'",
										"[groans] I guess I owe you one.",
										"[groans] Finally!",
										"[groans] Thanks for that.",
									},
									assault_mode = {
									
									}
								}
							}
						}
					}
				},
				s07x_sin = {
					variants = {
						criminal = {
							variations = {
								rb3 = {
									text_variations = {									
										"[electrocuted gibberish]"
									}
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
							variations = {
								rb15 = {
									whisper_mode = {
										"You'll be up in no time.",
										"Lemme get you up.",
										"I'll get you back up.",
										"Let's get you up."
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Here's a First Aid Kit.", --three variations on this line
										"Here's a First Aid Kit.",
										"Here's a First Aid Kit!",
										"First Aid Kit here."										
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Bodybag Case!",
										"Got a Bodybag Case here!"
									},
									assault_mode = {
									
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
					text = "I'm out of cable ties...",
					variants = {}
				},
				f11e_plu = { -- f [eleven] e_plu ... curse you, monospace font
					variants = {
						criminal = {
							text = "Need help",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"HELP ME!",
										"Get me up!",
										"Help!",
										"You gotta help me!"
									},
									assault_mode = {
									
									}
								}
							}
						}
					}
				},
				s20x_sin = {
					text = "Gonna slip out of these cuffs...",
					variants = {}
				},
				s21x_sin = {
					text = "I got out of my cuffs.",
					variants = {}
				},
				f02x_plu = {
					variants = {
						criminal = {
							text = "Get down",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"Down.",
										"Down on the ground.",
										"On the ground.",
										"Get down on the ground.",
										"Ge'down."
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Hit the floor.",
										"Down.",
										"Get down.",
										"Ge'down.",
										"On the ground.",
										"On the ground.",
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Get down, or get killed.",
										"I said, 'down.'",
										"Don't make me say it again.",
										"Did I stutter?",
										"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Stay down.",
										"Stay.",
										"Stay still.",
										"Stay down, little doggy.",
										"Stay put.",
										"Don't move.",
										"Don't move."										
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
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
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"And stay down.",
										"And don't fucking move.",
										"And stay there!",
										"Stay down.",
										"And don't move."
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
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
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Guard! Stay back.",
										"Careful! Guard!",
										"Guard! Watch it.",
										"Guard!",
										"Guard! Stay quiet.",
										"Don't bloody alert the Guard.",
										"Guard! Stay alert!",
										"Look out! Guard!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Come with me!",
										"Follow me!",
										"Follow me!",
										"Come on!"
									},
									assault_mode = {
									
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Watch out! Camera!",
										"Smile for the Camera.",
										"Camera!.",
										"CCTV!",
										"Watch out! (Camera)",
										"Don't get caught on tape.",
										"Camera over there!"
									},
									assault_mode = {
									
									}
								}
							}
						}
					}
				},
				f40_any = { --taxman go faster
					variants = {
						criminal = {
							text = "Move Faster",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"Run faster, dipshit!",
										"Move it!",
										"Move it, you drongo!",
										"Move!"
									},
									assault_mode = {
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Get the fuck up, I'm not kiddin'.",
										"Get back in the fight, ya' tosser.",
										"Get the fuck up.",
										"Get on your feet!",
										"Get up and fight!"
									},
									assault_mode = {
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Get up and fight!",
										"Get the fuck up!",
										"Get back in the fight, ya' tosser.",
										"Get the fuck up, I'm not kiddin'.",
										"Get on your feet!",
										"Up with ya'!"
									},
									assault_mode = {
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
							variations = {
								rb15 = {
									whisper_mode = {
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
									},
									assault_mode = {
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Just stay there.",
										"Hey, wait over there.",
										"Wait over there.",
									},
									assault_mode = {
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
							variations = {
								rb15 = {
									whisper_mode = {
										"The drill's jammed! Someone's gotta fix it!",
										"The drill's jammed! We need to get it fixed!",
										"The drill's jammed! We have to fix it!",
										"The drill's jammed! We've gotta get it fixed!",
										"We've got a jammed drill on our hands! Someone's gotta fix it!",
										"We've got a jammed drill on our hands! We need to get it fixed!",
										"We've got a jammed drill on our hands! We have to fix it!",
										"We've got a jammed drill on our hands! We've gotta get it fixed!",
										"I think the drill is stuck! Someone's gotta fix it!",
										"I think the drill is stuck! We need to get it fixed!",
										"I think the drill is stuck! We have to fix it!",
										"I think the drill is stuck! We've gotta get it fixed!"
									},
									assault_mode = {
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
							variations = {
								rb15 = {
									text_variations = {
										"The drill's jammed! Someone's gotta fix it!",
										"The drill's jammed! We need to get it fixed!",
										"The drill's jammed! We have to fix it!",
										"The drill's jammed! We've gotta get it fixed!",
										"We've got a jammed drill on our hands! Someone's gotta fix it!",
										"We've got a jammed drill on our hands! We need to get it fixed!",
										"We've got a jammed drill on our hands! We have to fix it!",
										"We've got a jammed drill on our hands! We've gotta get it fixed!",
										"I think the drill is stuck! Someone's gotta fix it!",
										"I think the drill is stuck! We need to get it fixed!",
										"I think the drill is stuck! We have to fix it!",
										"I think the drill is stuck! We've gotta get it fixed!"
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
							variations = {
								rb15 = {
									whisper_mode = {
										"Why is the computer beeping?!",
										"Fuck, something's not right with the computer!",
										"The computer process is jammed!",
										"The bloody computer is stuck!"
									}
								}
							}
						}
					}
				},
				d03_sin = {
					text = "Sounds like the lance is jammed!",
					variants = {}
				},
				d04_plu = {
					text = "The computer's jammed again!",
					variants = {}
				},
				d04_sin = {
					text = "The thermal lance is jammed!",
					variants = {}
				},
				d05 = {
					variants = {
						criminal = {
							text = "It's broken",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
										"It's stuck! We need to get it fixed!",
										"It's stuck! We have to fix it!",
										"It's stuck! Someone's gotta fix it!",
										"Something's not right! We need to get it fixed!",
										"Something's not right! We have to fix it!",
										"Something's not right! Someone's gotta fix it!",
										"It's jammed! We need to get it fixed!",
										"It's jammed! We have to fix it!",
										"It's jammed! Someone's gotta fix it!",
										"What's that? We need to get it fixed!",
										"What's that? We have to fix it!",
										"What's that? Someone's gotta fix it!"
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
							variations = {
								rb7 = {
									text = "It's showtime, you shites..."
								},
								rb15 = {
									text_variations = {
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
					text = "[Anticipation phase]",
					variants = {}
				},
				r01x_sin = { --bot 'follow me' response; short delay
					variants = {
						criminal = {
							rb15 = {
								text = "Gotcha.",
								priority = 15,
								variations = {
									text_variations = {
										"Got it.",
										"I got it!",
										"Right on it."
									}
								}
							}
						}
					}
				},
				r02a_sin = { --bot response; short delay
					variants = {
						criminal = {
							rb15 = {
								text = "I'm on my way",
								priority = 15,
								variations = {
									text_variations = {
										"I'm comin'. Hang in there!",
										"I'm comin'. Bloody hang in there!",
										"I'm comin'. Just hang on!",
										"On the way. Hang in there!",
										"On the way. Bloody hang in there!",
										"On the way. Just hang on!",
										"As soon as I can. Hang in there!",
										"As soon as I can. Bloody hang in there!",
										"As soon as I can. Just hang on!",
										"I'm right there. Hang in there!",
										"I'm right there. Bloody hang in there!",
										"I'm right there. Just hang on!"
									}
								}
							}
						}
					}
				},
				t01x_sin = {
					text = "Just a few minutes left.",
					variants = {}
				},
				t02x_sin = {
					text = "Halfway there.",
					variants = {}
				},
				t03x_sin = {
					text = "Any second now!",
					variants = {}
				l01x_sin = {
					variants = {
						criminal = {
							text = "Intimidation stage 1",
							priority = 5,
							variations = {
								rb15 = {
									assault_mode = {
										"Put your bloody hands up!",
										"Get your hands up!",
										"Hands up, fucker!",
										"Drop it!",
										"Get your hands up, dipshit!",
										"Drop the gun!",
										"Drop the weapon now!"
									},
									whisper_mode = {
										"Put your hands up.",
										"Put 'em up, fuckwit!",
										"Drop your weapon!",
										"Drop your gun.",
										"Hands in the fuckin' air!",
										"Hands up, ya fucker!",
										"Lower ya weapon!",
										"Hands where I can see them."
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
							variations = {
								rb15 = {
									whisper_mode = {
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
				}, --intimidate 2
				l03x_sin = {
					variants = {
						criminal = {
							text = "Now put your cuffs on.",
							priority = 5,
							variations = {
								rb15 = {
									whisper_mode = {
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
				}, --intimidate
				whistling_attention = {
					text = "[whistle]",
					variants = {},
					priority = 5
				},
				dsp_radio_checking_1 = {
					variants = {
						criminal = {
							text = "[Answering pager]",
							variations = {
								rb15 = {
									text_variations = {
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
				},
				dsp_stop_all = {
					text = "[radio static ends]",
					variants = {},
					disabled = true,
					priority = 5
				}, --disable this
				s09a = {
					text = "[reviving] Hey, man, you're not looking too good...",
					variants = {}
				},
				s09b = {
					text = "[reviving] Woah, you look even worse than before.",
					variants = {}
				},
				s09c = {
					text = "[reviving] You're looking really beat up, use a doctor bag!",
					variants = {}
				},
				s05a_sin = {
					text = "I feel terrible, heal me!",
					variants = {}
				}, --! bad
				s05b_sin = {
					text = "Whew, thanks.",
					variants = {}
				},

		--cops
				l3n_civ = {
					variants = {
						cop = {
							text = "Rescue the hostages",
							priority = 5,
							variations = {
								whisper_mode = {
									"Get the canaries!",
									"Get the hostages!",
									"Get the civilians!",
									"Get the civvies!"
								},
								assault_mode = {
								
								}
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
							variations = {
								whisper_mode = {
									"Deploy smoke!",
									"Smoke 'em!",
									"Smoke 'em out!",
									"Smoke!"
								},
								assault_mode = {
								
								}
							}
						}
					},
					disabled = true
				},
				l2n_mov = {
					variants = {
						cop = {
							text = "Tactical chatter",
							priority = 5,
							variations = {
								text_variations = {
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
									"Forward!"
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
				cloaker_detect_mono = {
					text = "[CLOAKER CHARGE]", --wololololo
					disabled = false
				},
				cloaker_presence_loop = {
					text = "[Cloaker idle]"
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
							text_variations = {
								"Somebody order a Medic?",
								"Medic in the house!",
								"There's blood all over!"
							}
						},
						shld = {
							text = "[Shield spawned]",
							text_variations = {
								"Shield coming through.",
								"[Shield clanking]"
							}
						}
					}
				},
				mdc_entrance = {
					text = "Somebody order a Medic?"
				},
				entrance_elite = {
					text = "ELITE BULLDOZER, COMING THROUGH!"
				},
				cpa_a03_01 = {
					text = "Turret'll be here any second!"
				},
				cpa_a04_01 = {
					text = "Turret's arrived!"
				},
				cpa_a02_01 = {
					text = "Captain's just got here, time to turn this around!"
				},
				cpw_a04 = {
					text = "(Winters retreat)"
				},
				cpw_a05 = {
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
						cf1 = {
							text = "Hello? 911? I need help, there's armed robbers here!"
						},
						cm1 = {
							text = "Hello? 911? I need help, there's armed robbers here!"
						},
						criminal = {
							disabled = true
						}
					}
				},
				a02x_any = {
					text = "(fearful screaming)",
					disabled = "whisper_mode"
				},
				a03x_any = {
					variants = {
						cm1 = {
							text = "(screaming in fear)",
							disabled = "whisper_mode"
						},
						cf1 = {
							text = "(screaming in fear)",
							disabled = "whisper_mode"
						}
					}
				},
				dsp_radio_buzz = {
					disabled = "whisper_mode",
					text = "[pager buzz]"
				},
				dsp_radio_query_1 = {
					text = "[pager ring]",
					disabled = "whisper_mode"
				},
				dsp_fooled_1 = {
					text = "[pager operator fooled]",
					disabled = "whisper_mode"
				},
				mga_death_scream = {
					text = "[megaphone feedback]",
					variants = {}
				},
				mga_deploy_snipers = {
					text = "Deploying snipers!",
					variants = {}
				},
				mga_generic_a = {
					text = "How's it going? Is everyone alright?",
					variants = {}
				},
				mga_generic_b = {
					text = "Give up! There's no way you'll get away with this!",
					variants = {}
				},
				mga_generic_c = {
					text = "We're past negotiations- you die tonight!",
					variants = {}
				},
				mga_hostage_assault_delay = {
					text = "We know you took hostages!", --alt. "very clever, we're delayed"
					variants = {}
				},
				mga_intro = {
					text = "This is the Washington Police, there is no way out!",
					variants = {}
				},
				mga_killed_civ_1st = {
					text = "You've killed a civilian! You're not helping me or yourself.",
					variants = {}
				},
				mga_killed_civ_2nd = {
					text = "Multiple kills, you're way outta line! This is madness!",
					variants = {}
				},
				mga_leave = {
					text = "Fuck this, I'm hitting the golf course!",
					variants = {}
				},
				mga_robbers_clever = {
					text = "Impressive! But you still won't get away!",
					variants = {}
				},
				mga_thermite = {
					text = "Thermite to get into the vault? Ha! But now we have you trapped!",
					variants = {}
				},
				mga_vault_a = {
					text = "There's no way into the vault, give up!",
					variants = {}
				},
				mga_vault_b = {
					text = "That's a multilayer vault! Didn't think it'd be that easy did you?",
					variants = {}
				},
				mga_vault_c = {
					text = "You've breached the vault, but now you're heavy and we're fast.",
					variants = {}
				},
				mga_t01a_con_plu = {
					text = "We're willing to do a hostage trade.",
					variants = {}
				},
				mga_s01 = {
					text = "Listen up! This is the police!",
					variants = {}
				},
				mga_s02 = {
					text = "We know you're in there",
					variants = {}
				},
				mga_s03 = {
					text = "We have you surrounded",
					variants = {}
				},
				mga_s04 = {
					text = "Make no mistake, we're in charge of this situation!",
					variants = {}
				},
				mga_s05 = {
					text = "Resistance is futile, give up!",
					variants = {}
				},
				mga_s06 = {
					text = "This is your last warning!",
					variants = {}
				},
				mga_s07 = {
					text = "We will not give up until all the hostages are released!",
					variants = {}
				},
				a01 = {
					text = "They've got a gun!",
					variants = {}
				},
				a02 = {
					text = "Please stay back.",
					variants = {}
				},
				a03 = {
					text = "Sorry, this area is for personnel only.",
					variants = {}
				},
				a05 = {
					text = "Two-Four reporting in, all quiet here.",
					variants = {}
				},
				a06 = {
					text = "[idle]",
					variants = {}
				},
				a07a = {
					text = "Wha-?", --see something suspicious
					variants = {}
				},
				a07b = {
					text = "That's weird...", --see something suspicious
					variants = {}
				},
				a08 = {
					text = "Intruder!",
					variants = {}
				},
				a09 = {
					text = "Sound the alarm!",
					variants = {}
				},
				a10 = {
					text = "Two-Four reporting in, there's a broken window here...",
					variants = {}
				},
				a11 = {
					text = "Two-Four reporting in, there's a dead body here...",
					variants = {}
				},
				a12 = {
					text = "Two-Four reporting in, I've spotted a dead officer...",
					variants = {}
				},
				a13 = {
					text = "Two-Four reporting in, I've spotted a tied up civilian...",
					variants = {}
				},
				a14 = {
					text = "Two-Four reporting in, I've spotted a tied up officer...",
					variants = {}
				},
				a15 = {
					text = "Two-Four reporting in, we've got a situation here...",
					variants = {}
				},
				a16 = {
					text = "Two-Four reporting in, we've got an officer signalling for help...",
					variants = {}
				},
				a17 = {
					text = "Two-Four reporting in, there's a security door that shouldn't be open here...",
					variants = {}
				},
				a18 = {
					text = "Two-Four reporting in, somebody set a fire over here...",
					variants = {}
				},
				a19 = {
					text = "Two-Four reporting in, I've got a bodybag over here...",
					variants = {}
				},
				a20 = {
					text = "Two-Four reporting in, I've spotted some kind of sentry gun over here...",
					variants = {}
				},
				a21 = {
					text = "Two-Four reporting in, I've spotted a trip mine...",
					variants = {}
				},
				a22 = {
					text = "Two-Four reporting in, I've spotted a suspicious bag...",
					variants = {}
				},
				a23 = {
					text = "Two-Four reporting in, there's signs of intruders here...",
					variants = {}
				},
				a24 = {
					text = "Two-Four reporting in, somebody's been messing with the computer here...",
					variants = {}
				},
				a25 = {
					text = "Two-Four reporting in, I've spotted some heavy drilling equipment here...",
					variants = {}
				},
				amm = {
					text = "They've brought extra ammo with them!",
					variants = {}
				},
				att = {
					text = "Weapons hot!", --fire at will, gogogo!
					variants = {}
				},
				b01 = {
					text = "Two-Three reporting in, Entrance is A-OK. Over.",
					variants = {}
				},
				b02 = {
					text = "Two-Three reporting in, Hall A is all clear. Over.",
					variants = {}
				},
				b03 = {
					text = "Two-Three reporting in, Hall B is all clear. Over.",
					variants = {}
				},
				b04 = {
					text = "Two-Three reporting in, Hall C is all clear. Over.",
					variants = {}
				},
				b05 = {
					text = "Two-Three reporting in, Hall D is all clear. Over.",
					variants = {}
				},
				b06 = {
					text = "Two-Three reporting in, Roof is all clear. Over.",
					variants = {}
				},
				b07 = {
					text = "Two-Three reporting in, Basement is all clear. Over.",
					variants = {}
				},
				b08 = {
					text = "Two-Three reporting in, Ground Floor is all clear. Over.",
					variants = {}
				},
				b09 = {
					text = "Two-Three reporting in, Second Floor is all clear. Over.",
					variants = {}
				},
				b10 = {
					text = "Two-Three reporting in, Third Floor is all clear. Over.",
					variants = {}
				},
				b11 = {
					text = "Two-Three reporting in, Pool Area is all clear. Over.",
					variants = {}
				},
				b12 = {
					text = "Two-Three reporting in, Balcony is all clear. Over.",
					variants = {}
				},
				b13 = {
					text = "Two-Three reporting in, Living Room is all clear. Over.",
					variants = {}
				},
				b14 = {
					text = "Two-Three reporting in, Corridor is all clear. Over.",
					variants = {}
				},
				b15 = {
					text = "Two-Three reporting in, Lobby is all clear. Over.",
					variants = {}
				},
				b16 = {
					text = "Two-Three reporting in, Security Door is shut and locked, everything's fine. Over.",
					variants = {}
				},
				b17 = {
					text = "Two-Three reporting in, Security Room is all clear. Over.",
					variants = {}
				},
				b18 = {
					text = "Two-Three reporting in, camera is working fine, no sign of tampering. Over.",
					variants = {}
				},
				b19 = {
					text = "Two-Three reporting in, Staircase is all clear. Over.",
					variants = {}
				},
				b20 = {
					text = "Two-Three reporting in, Penthouse is clear. Over.",
					variants = {}
				},
				b21 = {
					text = "Two-Three reporting in, Garage is clear. Over.",
					variants = {}
				},
				b22 = {
					text = "Moving on.",
					variants = {}
				},
				b23 = {
					text = "Two-Three to Control, could someone buzz me through the door?.",
					variants = {}
				},
				b24 = {
					text = "Two-Three to Control, this whole place is clear, I'm going home. Over and out.",
					variants = {}
				},
				b25 = {
					text = "Reporting in, glass shards everywhere! Signs of break in! Send reinforcements!",
					variants = {}
				},
				b26 = {
					text = "Two-Three reporting in, someone's been fiddling with this camera. Send backup!",
					variants = {}
				},
				b27 = {
					text = "Two-Three reporting in, I hear some kind of noise. Send backup!",
					variants = {}
				},
				b28 = {
					text = "Two-Three reporting in, I'm outside the lobby. Over.",
					variants = {}
				},	
				bak = {
					text = "Watch your background, civilians on scene!",
					variants = {}
				},
				burndeath = {
					text = "[fire death]",
					variants = {}
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
					text = "Contact!",
					variants = {}
				}, --spotted criminal
				ch1 = {
					text = "Watch out for the trip mines!",
					variants = {}
				},
				ch2 = {
					text = "Watch out for the sentry gun!",
					variants = {}
				},
				ch3 = {
					text = "Argh! Some kind of jammer!",
					variants = {}
				}, --ecm feedback
				ch4 = {
					text = "That maniac has a fucking SAW!",
					variants = {}
				},
				civ = {
					text = "Get the hostages!",
					variants = {}
				},
				clr = {
					text = "Area clear.",
					variants = {}
				},
				cn1 = {
					text = "[converted to joker]",
					variants = {}
				},
				cr1 = {
					text = "Hey, stay calm, we're getting you out.",
					variants = {}
				}, --to hostage
				d01 = {
					text = "Deploy smoke.",
					variants = {}
				},
				d02 = {
					text = "Throwing a flashbang!",
					variants = {}
				},
				e01 = {
					text = "Disable that drill!",
					variants = {}
				},
				e02 = {
					text = "Disable their gear!",
					variants = {}
				},
				e03 = {
					text = "Disabling the power!",
					variants = {}
				},
				e04 = {
					text = "Do what you can to slow them down.",
					variants = {}
				},
				e05 = {
					text = "Drill is disabled, over.",
					variants = {}
				},
				e06 = {
					text = "Disabled their gear.",
					variants = {}
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
					text = "Rescue team Alpha going in.",
					variants = {}
				},
				gr1b = {
					text = "Rescue team Bravo going in.",
					variants = {}
				},
				gr1c = {
					text = "Rescue team Charlie going in.",
					variants = {}
				},
				gr1d = {
					text = "Rescue team Delta going in.",
					variants = {}
				},
				gr2a = {
					text = "Assault team Alpha going in.",
					variants = {}
				},
				gr2b = {
					text = "Assault team Bravo going in.",
					variants = {}
				},
				gr2c = {
					text = "Assault team Charlie going in.",
					variants = {}
				},
				gr2d = {
					text = "Assault team Delta going in",
					variants = {}
				},
				h01 = {
					text = "Freeing hostage",
					variants = {}
				},
				hlp = {
					text = "HELP!",
					disabled = "whisper_mode",
					variants = {}
				},
				i01 = {
					text = "Freeze!", --or "Hold it!"
					variants = {}
				},
				i02 = {
					text = "No sudden movements!",
					variants = {}
				},
				i03 = {
					text = "This ends now!",
					variants = {}
				},
				l01 = {
					text = "Get those bags!",
					variants = {}
				},
				lk3a = {
					text = "Jeez!",
					variants = {}
				},
				lk3b = {
					text = "Fucking hell!",
					variants = {}
				},	
				m01 = {
					text = "Cease fire, exit point!",
					variants = {}
				},
				med = {
					text = "There's a doctor bag! They must have a field medic!",
					variants = {}
				},
				mov = {
					text = "Move!",
					disabled = "whisper_mode",
					variants = {}
				},
				pos = {
					text = "I'm in position.",
					variants = {}
				},
				prm = {
					text = "Wait for my signal.",
					variants = {}
				},
				pus = {
					text = "Rush them!",
					variants = {}
				},
				r01 = {
					text = "Roger that.",
					variants = {}
				},
				rdy = {
					text = "Ready!",
					variants = {}
				},
				rrl = {
					text = "He's reloading!",
					variants = {}
				},
				s01x = {
					text = "Okay, okay! Just don't shoot!",
					variants = {}
				},
				t01 = {
					text = "Looking for another way in.",
					variants = {}
				},
				x01a_any_3p = {
					text = "[pain]",
					variants = {
						--
					}
				},
				Play_bnc_flt_01 = {
					text = "[whistle] Hey, open up!"
				},
				Play_bnc_flt_02 = {
					text = "Gentlemen."
				},
				Play_dlr_flt_01 = {
					text = "Welcome. Put the money by the table."
				},
				Play_dlr_flt_02 = {
					text = "You messin' with me? Show me the money!"
				},
				Play_dlr_flt_03 = {
					text = "I'll get my main man Chavez to hook you guys up. You guys 'ang around."
				}
			}
		}
	},
	event_ids = {}
}