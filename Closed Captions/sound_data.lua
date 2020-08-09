ClosedCaptions._sounds = {
	languages = {
		english = {
			vo_special = {
				["f11@_sin"] = { --macroized
					text = "$CHARACTER_NAME! Help me up!",
					caps = true,
					macro = true
				}, 
				["f13@_sin"] = { --macroized
					text = "$CHARACTER_NAME, come uncuff me!",
					macro = true
				},
				["f21@_sin"] = { --macroized
					text = "$CHARACTER_NAME, follow me!",
					macro = true
				}
			},
			vo = {	
				pickup_ammo = {
					text = "[picked up ammo]",
					variants = {},
					source = "sfx",
					disabled = true
				},
				flashbang_beep = {
					text = "[flashbang beeping]",
					variants = {},
					source = "sfx",
					disabled = true
				},
				tasered_loop = {
					text = "tased",
					source = "sfx",
					disabled = true
				},
				melee_hit_body = {
					text = "hit",
					disabled = true
				},
				player_hit = {
					text = "armor damage",
					disabled = true
				},
				g01 = {
					text = "Downstairs!",
					text_generic = "Go downstairs",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Downstairs!",
									"Down the stairs!"
								}
							}
						}
					},
					priority = 5
				},
				g02 = {
					text = "Upstairs!",
					text_generic = "Go upstairs",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Upstairs!",
									"Up the stairs!"
								}
							}
						}
					},
					priority = 5
				},
				g03 = {
					text = "Left!",
					text_generic = "Go left",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"To the left!",
									"Left!"
								}
							}
						}
					},
					priority = 5
				},
				g04 = {
					text = "Right!",
					text_generic = "Go right",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"To the right!",
									"Right!"
								}
							}
						}
					},
					priority = 5
				},
				g05 = {
					text = "Go up!",
					text_generic = "Go up",
					variants = {
						criminal = {
							rb15 = {
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
					},
					priority = 5
				},
				g06 = {
					text = "Go down!",
					text_generic = "Go down",
					variants = {
						criminal = {
							rb15 = {
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
					priority = 5
				},
				g07 = {
					text = "We need to get out of here!",
					text_generic = "We need to get out",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Get out!",
									"We've gotta get out!"
								}
							}
						}
					},
					priority = 5
				},
				g08 = {
					text = "Get inside!",
					text_generic = "Get in",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Inside!",
									"Get in!"
								}
							}
						}
					},
					priority = 5
				},
				g09 = {
					text = "Hurry!",
					text_generic = "Hurry",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Hurry, hurry!",
									"HURRY!",
									"Hurry up!",
									"C'mon, faster!"
								}
							}
						}
					},
					priority = 5
				},
				g10 = {
					text = "Careful!",
					text_generic = "Careful",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Careful, now!",
									"Careful!"
								}
							}
						}
					},
					priority = 5
				},
				g11 = {
					text = "This is the wrong way!",
					text_generic = "Wrong way",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"This is the wrong way",
									"Not this way!"
								}
							}
						}
					},
					priority = 5
				},
				g12 = {
					text = "This is the right way!",
					text_generic = "This way",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"This is right!",
									"This way!"
								}
							}
						}
					},
					priority = 5
				},
				g13 = {
					text = "Let's go!",
					text_generic = "Let's go",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Come on!",
									"Let's go!"
								}
							}
						}
					},
					priority = 5
				},
				g14 = {
					text = "This is the place!",
					text_generic = "This is it",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"This is it!",
									"This is the place!"
								}
							}
						}
					},
					priority = 5
				},
				g15 = {
					text = "Look over there!",
					text_generic = "Look there",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Over there!",
									"There!"
								}
							}
						}
					},
					priority = 5
				},
				g16 = {
					text = "Keep defending!",
					text_generic = "Defend",
					variants = {
						criminal = {
							rb15 = { --!
								assault_mode = {
									"Keep defending!",
									"Left!"
								}
							}
						}
					},
					priority = 5
				},
				g17 = {
					text = "Time to go!",
					text_generic = "Time to go",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				g18 = {
					text = "Move faster!",
					text_generic = "Inspire basic",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				g19 = {
					text = "Go straight!",
					text_generic = "Go straight",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Straight on!",
									"Straight ahead!"
								}
							}
						}
					},
					priority = 5
				},
				g20 = {
					text = "Jump down!",
					text_generic = "Jump down",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				g21 = {
					text = "Drill mounted!",
					text_generic = "Placed drill",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				g22 = {
					text = "Piece of shit drill!",
					variants = {},
					priority = 5
				},
				g23 = {
					text = "Shoot them!",
					variants = {},
					priority = 5
				},
				g24 = {
					text = "We did it!",
					text_generic = "Victory",
					variants = {
						criminal = {
							rb15 = {
								whisper_mode = {
									"Yeah, I'll admit, that was smooth.",
									"That was a ripper!",
									"[sarcastic] Hooraaay, we did the job SILENTLY. I'm still bored as BATSHIT.",
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
					},
					priority = 5
				},
				g25 = {
					text = "Take out the cameras!",
					variants = {},
					priority = 5
				},
				g26 = {
					text = "Use your cable ties.",
					text_generic = "Use cable ties",
					variants = {
						criminal = {
							rb15 = {
								whisper_mode = {
									"Tie 'em up.",
									"Tie everybody down.",
									"Well, how about using the cable ties, dipshit?"
								}
							}
						}
					},
					priority = 5
				},
				g27 = {
					text = "Watch out for civilians!",
					text_generic = "Watch civilians",
					variants = {
						criminal = {
							rb15 = {
								whisper_mode = {
									"Hey, watch the bloody civilians!",
									"Crikey, keep the civvies in check!",
									
								}
							}
						}
					},
					priority = 5
				},
				g28 = {
					text = "We're almost there!",
					variants = {},
					priority = 5
				},
				g29 = {
					text = "FUCK!",
					text_generic = "Swearing",
					variants = {
						criminal = {
							rb15 = {
								whisper_mode = {
									"SHIT!",
									"Aw, shit!",
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
					},
					priority = 5
				},
				g30 = {
					text = "Bulldozer down!",
					text_generic = "Killed Bulldozer",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				g43 = {
					text = "Grenade out!",
					text_generic = "Throwing grenade",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				g50 = {
					text = "Get ready for action.",
					variants = {},
					priority = 5
				},
				g60 = {
					text = "Well, shit!", --! not the right desc
					text_generic = "Pleased",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				g61 = {
					text = "I got the drill.",
					variants = {},
					priority = 5
				},
				g62 = {
					text = "Thirty seconds!",
					variants = {},
					priority = 5
				},
				g63 = {
					text = "One minute.",
					variants = {},
					priority = 5
				},
				g64 = {
					text = "One minute thirty.",
					variants = {},
					priority = 5
				},
				g65 = {
					text = "Two minutes.",
					variants = {},
					priority = 5
				},
				g66 = {
					text = "Two minutes thirty.",
					variants = {},
					priority = 5
				},
				g67 = {
					text = "Any second now...",
					variants = {},
					priority = 5
				},
				g68 = {
					text = "This place is overrun!",
					variants = {},
					priority = 5
				},
				g69 = {
					text = "We can't stay here!",
					variants = {},
					priority = 5
				},
				g70 = {
					text = "Cops just got here.",
					variants = {},
					priority = 5
				},
				g72 = {
					text = "I'm on it!",
					variants = {},
					priority = 5
				},
				g92 = {
					text = "Got it.", --Gage packages
					text_generic = "Picked up package",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				p01 = { --! probably not used for heisters??
					text = "They have hostages! We need to delay the assault!",
					variants = {
						criminal = {
							generic = {
								text = "Alright, let's do this.",
							}
						}
					},
					priority = 5
				},
				p02 = { --! probably not used for heisters??
					text = "Where is the fucking HRT?!",
					variants = {
						criminal = {
							generic = {
								text = "Let's do this.",
							}
						}
					},
					priority = 5
				},
				p03 = {
					text = "No hostages left, full force forward!",
					variants = {
						criminal = {
							generic = {
								text = "Time to go to work.",
							}
						}
					},
					priority = 5
				},
				p04 = {
					text = "Hurry up and freakin' wait!",
					variants = {},
					priority = 5
				},
				p05 = {
					text = "Cops just got here.",
					variants = {},
					priority = 5
				},
				p06 = {	
					text = "OK.",
					variants = {},
					priority = 5
				},
				p07 = {
					text = "We gotta trade that hostage.",
					variants = {},
					priority = 5
				},
				p08 = {
					text = "Computer is jammed.",
					variants = {},
					priority = 5
				},
				p09 = {
					text = "Computer is jammed again!",
					variants = {},
					priority = 5
				},
				p10 = {
					text = "Broke-dick piece of shit drill!",
					variants = {},
					priority = 5
				},
				p12 = {
					text = "Go, go,  go!",
					variants = {},
					priority = 5
				},
				p13 = {
					text = "Get a move on!",
					variants = {},
					priority = 5
				},
				p14 = {
					text = "MOVE IT!",
					variants = {},
					priority = 5
				},
				p15 = {
					text = "Get moving!",
					variants = {},
					priority = 5
				},
				p16 = {
					text = "MOVE!",
					variants = {},
					priority = 5
				},
				p17 = {
					text = "Almost, any second now!",
					variants = {},
					priority = 5
				},
				p18 = {
					text = "What're you waiting for!?",
					variants = {},
					priority = 5
				},
				p19 = {
					text = "I'm coming to revive you!",
					variants = {},
					priority = 5
				},
				p20 = {
					text = "Come with me!",
					variants = {},
					priority = 5
				},
				p21 = {
					text = "Time for Plan B.",
					variants = {},
					priority = 5
				},
				p22 = {
					text = "Police assault incoming.",
					variants = {},
					priority = 5
				},
				p23 = {
					text = "Get ready for action...",
					variants = {},
					priority = 5
				},
				p24 = {
					text = "Alright, back to work.",
					text_generic = "Assault finished",
					variants = {
						criminal = {
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
					},
					priority = 5
				}, --assault over
				p25 = {
					text = "Flashbang!",
					variants = {},
					priority = 5
				},
				p26 = {
					text = "Cover their flanks!",
					variants = {},
					priority = 5
				},
				p27 = {
					text = "Loot bag secured.",
					text_generic = "Secured loot",
					variants = {
						criminal = {
							rb15 = {
								whisper_mode = {
									"It's secured.",
									"It's at the drop.",
									"One lootbag, at the drop.",
									"It's delivered!",
									"One lootbag, stashed."
								}
							}
						}
					},
					priority = 5
				},
				p28 = {
					text = "That's all the loot bags.",
					text_generic = "All loot secured",
					variants = {
						criminal = {
							rb15 = {
								whisper_mode = {
									"We got 'em all.",
									"That's all of 'em!",
									"That's all the bags!"
								}
							}
						}
					},
					priority = 5
				},
				p29 = {
					text = "Picking the lock.",
					variants = {},
					priority = 5
				},
				p30 = {
					text = "Using a keycard.",
					variants = {},
					priority = 5
				},
				p31 = {
					text = "The cops are stealing our loot!",
					text_generic = "Cops taking our loot",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Hey, those pigs are grubbin' our shit!",
									"They're takin' our bags, KILL 'EM!",
									"Those FUCKWITS are stealing our loot!"
								}
							}
						}
					},
					priority = 5
				},
				p32 = { --priority
					text = "You go case the joint, I'll wait here.",
					text_generic = "Waiting here",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
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
									"Yeah, yeah- I'll wait here. I'll turn the heat up when it's time.",
									"You go ahead. I'll be ready when things go crazy.",
									"You go ahead. Call me when the fun begins.",
									"You go ahead. I'm here for the exciting bit.",
									"You go ahead. I'll turn the head up when it's time."
								}
							}
						}
					},
					priority = 5
				},
				p33 = {
					text = "They're coming in through the skylights!",
					variants = {},
					priority = 5
				},
				p34 = {
					text = "They're on the roof!",
					variants = {},
					priority = 5
				},
				p35 = {
					text = "They're coming down the walls!",
					variants = {},
					priority = 5
				},
				p36 = {
					text = "They're coming through the wall panel!",
					variants = {},
					priority = 5
				},
				p37 = {
					text = "They're coming from the floors",
					variants = {},
					priority = 5
				},
				p38 = {
					text = "They're coming from outside!",
					variants = {},
					priority = 5
				},
				p39 = {
					text = "They're climbing down the outside!",
					variants = {},
					priority = 5
				},
				p40 = {
					text = "They're climbing up the outside",
					variants = {},
					priority = 5
				},
				p41 = {
					text = "SWAT helicopter inbound.",
					text_generic = "Spotted SWAT Helicopter",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"A bloody helicopter, inbound!",
									"SWAT chopper, incoming!"
								}
							}
						}
					},
					priority = 5
				},
				p42 = {
					text = "SWAT insertion inbound.",
					text_generic = "Spotted SWAT Van",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"We got a SWAT van incoming!",
									"SWAT van, approaching!"
								}
							}
						}
					},
					priority = 5
				},
				p43 = {
					text = "Snipers are here!",
					text_generic = "",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"SNIPERS ARE HERE" --!
								}
							}
						}
					},
					priority = 5
				},
				p44 = {
					text = "They're coming from the woods.",
					variants = {},
					priority = 5
				},
				p45 = {
					text = "Someone help me!",
					variants = {},
					priority = 5
				},
				p46 = {
					text = "Jump!",
					variants = {},
					priority = 5
				},
				p47 = {
					text = "Let's get the party Started!",
					variants = {},
					priority = 5
				},
				v01 = {
					text = "Okay,on it!",
					text_generic = "Got it",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				v03 = {
					text = "We're in!",
					text_generic = "We're inside",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"We're inside.",
									"It's open!",
									"We're in!",
									"We're through!"
								}
							}
						}
					},
					priority = 5
				},
				v04 = {
					text = "Found it, it's here!",
					variants = {},
					priority = 5
				},
				v05 = {
					text = "Got one.",
					text_generic = "Found it",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"We got it!",
									"Here it is!",
									"Found it!"
								}
							}
						}
					},
					priority = 5
				},
				v06 = {
					text = "Found another.",
					text_generic = "Found another",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Got one more.",
									"We got one.",
									"Found another one!",
									"Here's another!"
								}
							}
						}
					},
					priority = 5
				},
				v07 = {
					text = "It's done!",
					text_generic = "It's done",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"It's done!",
									"Done!"
								}
							}
						}
					},
					priority = 5
				},
				v08 = {
					text = "We're done!",
					text_generic = "We're done",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"We're done!",
									"DONE!"
								}
							}
						}
					},
					priority = 5
				},
				v09 = {
					text = "What next?",
					text_generic = "Keep on heisting",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				v10 = {
					text = "Found a keycard over here.",
					text_generic = "Found keycard",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"I found a keycard!",
									"I found a keycard."
								}
							}
						}
					},
					priority = 5
				},
				v11 = {
					text = "Grabbed a keycard.",
					text_generic = "Grabbed keycard",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"I got the keycard!",
									"I found the keycard!"
								}
							}
						}
					},
					priority = 5
				},
				v12 = {
					text = "BEEP BEEP MOTHERFUCKER", --!
					text_generic = "Used keycard",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Fucking hell, these things make it too easy!",
									"Almost too easy, yeah?",
									"Well, bugger me, this is easy!",
									"This makes shit too easy!"
								}
							}
						}
					},
					priority = 5
				}, --used keycard
				v13 = {
					text = "Planting C4.",
					text_generic = "Planting C4",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Get the fuck back!",
									"Cover ya' ears!"
								}
							}
						}
					},
					priority = 5
				},
				v14 = {
					text = "Sometimes it's easier to make your own doors!",
					text_generic = "Detonated C4",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Fuck keycards, when you can blow shit up!",
									"We're through!"
								}
							}
						}
					},
					priority = 5
				},
				v15 = {
					text = "Get door open!",
					text_generic = "Open this door",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Let's open this fuckin' door!",
									"Someone get the door open!",
									"Get the bloody door open!"
								}
							}
						}
					},
					priority = 5
				},
				v16 = {
					text = "Get this thing open!",
					text_generic = "Open this",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Let's OPEN this shit!",
									"Crack it open!",
									"Let's open this motherfucker up!"
								}
							}
						}
					},
					priority = 5
				},
				v17 = {
					text = "Let's go, team!",
					text_generic = "Team encouragement",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Let's fuckin' go!"
								}
							}
						}
					},
					priority = 5
				},
				v18 = {
					text = "Wipe 'em out!",
					text_generic = "Kill them all",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"GET 'EM!",
									"KILL 'EM ALL!"
								}
							}
						}
					},
					priority = 5
				},
				v19 = {
					text = "Here it comes!",
					text_generic = "Incoming",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"INCOMING!",
									"Here it comes!"
								}
							}
						}
					},
					priority = 5
				},
				v20 = {
					text = "It's here!",
					variants = {},
					priority = 5
				}, --it's arrived
				v21 = {
					text = "It's PAYDAY!",
					text_generic = "Loot it",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"EMPTY this place!",
									"Get fuckin' all of it!"
								}
							}
						}
					},
					priority = 5
				},
				v22 = {
					text = "We got all of it!",
					text_generic = "Got all of it",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Well, bugger me, that's bloody nice!",
									"That's all of it!",
									"Now, THIS is a PAYDAY!"
								}
							}
						}
					},
					priority = 5
				},
				v23 = {
					text = "The drill is done.",
					text_generic = "Drill finished",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"That's the drill done!",
									"Drill's done!"
								}
							}
						}
					},
					priority = 5
				},
				v24 = {
					text = "The computer is done.",
					text_generic = "Hack finished",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Computer is finally fuckin' finished!",
									"Bloody hell, computer is FINALLY done!"
								}
							}
						}
					},
					priority = 5
				},
				v25 = {
					text = "That's done, let's move on.",
					text_generic = "It's done",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Finally, fuckin' done!",
									"It's finished!"
								}
							}
						}
					},
					priority = 5
				},
				v26 = {
					text = "There's our ride.",
					text_generic = "Exit this way",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"We're gettin' out this way.",
									"Time to go, that's the way!"
								}
							}
						}
					},
					priority = 5
				}, --there's our escape
				v27 = {
					text = "There's cops in the vents!",
					text_generic = "Spotted cops in vents",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Those fuckwits are in the vents!",
									"Well, bugger me, the fuckers are in the vents!"
								}
							}
						}
					},
					priority = 5
				},
				v28 = {
					text = "Spotted the mark.",
					text_generic = "Spotted the mark",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Alright, I see the mark!",
									"Right, got the mark!"
								}
							}
						}
					},
					priority = 5
				},
				v29 = {
					text = "There she is.",
					text_generic = "She's there",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"She's there!",
									"She's there."
								}
							}
						}
					},
					priority = 5
				},
				v30 = {
					text = "There he is.",
					text_generic = "He's there",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"He's there!",
									"He's there."
								}
							}
						}
					},
					priority = 5
				},
				v31 = {
					text = "There they are.",
					text_generic = "They're there",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"They're there!",
									"They're there."
								}
							}
						}
					},
					priority = 5
				},
				v32 = {
					text = "There it is.",
					text_generic = "It's there",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"It's over there.",
									"It's over there!"
								}
							}
						}
					},
					priority = 5
				},
				v33 = {
					text = "Where's the manager!?",
					text_generic = "Find the manager",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Find that bloody bastard!",
									"FIND that bloody bastard!"
								}
							}
						}
					},
					priority = 5
				},
				v34 = {
					text = "LISTEN UP, THIS IS A ROBBERY!",
					text_generic = "",
					variants = {
						criminal = {
							rb15 = { --! need to write multi-line code to split it up because it's fuckin long
								text_variations = { 
									"Listen up, you bloody drongos! This is a robbery! We're not here to hurt you, but that can quickly change dependin' on your FUCKIN' actions, got it? We're after this BANK'S money, not yours, all your BLOODY money's insured by the FUCKIN' government, alright? You won't lose a FUCKIN' penny so think of your dipshit FAMILIES, now, your fat spouses and your ugly kids, you just KEEP IT SHUT like the good tools you are and STAY DOWN, and this'll be over in a bloody heartbeat."
								}
							}
						}
					},
					priority = 5
				}, --heat speech
				v35 = {
					text = "Bain!?",
					text_generic = "Bain?",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"BAIN!?",
									"BAIN?!"
								}
							}
						}
					},
					priority = 5
				},
				v36 = {
					text = "Fuck! Now what?",
					text_generic = "Now what",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Well, now bloody what?",
									"So what the fuck do we do now, then?"
								}
							}
						}
					},
					priority = 5
				},
				v37 = {
					text = "Stay sharp, I got a bad feeling about this.",
					text_generic = "Feeling uneasy",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"I'm gettin' a bad feelin' about this!"
								}
							}
						}
					},
					priority = 5
				},
				v38 = {
					text = "Search the place.",
					text_generic = "Search the place",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Search the place!",
									"Search the place."
								}
							}
						}
					},
					priority = 5
				},
				v39 = {
					text = "Find the target.", --or "find the mark"
					text_generic = "Find the mark",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Find the fucking mark!",
									"Find the fuckin' mark."
								}
							}
						}
					},
					priority = 5
				},
				v40 = {
					text = "C'mon, find her!",
					text_generic = "Find her",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Find her!",
									"Find her."
								}
							}
						}
					},
					priority = 5
				},
				v41 = {
					text = "C'mon, find him!",
					text_generic = "Find him",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Find that bloody bastard.",
									"Find that BLOODY bastard!"
								}
							}
						}
					},
					priority = 5
				},
				v42 = {
					text = "C'mon, find them!",
					text_generic = "Find them",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Let's find 'em!",
									"Let's find 'em."
								}
							}
						}
					},
					priority = 5
				},
				v43 = {
					text = "C'mon, find it!",
					text_generic = "Find it",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Find it, now!",
									"Find it, NOW!"	
								}
							}
						}
					},
					priority = 5
				},
				v44 = {
					text = "Keep looking!",
					text_generic = "Keep looking",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Keep looking1",
									"Keep looking."
								}
							}
						}
					},
					priority = 5
				},
				v45 = {
					text = "Aw, shit, they brought a turret!",
					variants = {},
					priority = 5
				},
				v46 = {
					text = "Fuck yeah!", -- excited
					text_generic = "Battle cry",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Take that!",
									"Hah, take that!",
									"Hahaha, fuck yes!"
								}
							}
						}
					},
					priority = 5
				},
				v47 = {
					text = "Is that enough?", --is that enough loot?
					text_generic = "Got enough?",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Have we got enough?"
								}
							}
						}
					},
					priority = 5
				},
				v48 = {
					text = "Nah, let's take it all.",--nah, let's take all the loot 
					text_generic = "Let's take it all!",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Fuck no, take it all!"
								}
							}
						}
					},
					priority = 5
				},
				v49 = {
					text = "Shoot it down!",
					text_generic = "Shoot it down",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Shoot it down!"
								}
							}
						}
					},
					priority = 5
				},
				v50 = {
					text = "Murkies!",
					text_generic = "Spotted Murkies",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Bunch a' bloody murkies!",
									"Fuckin' murkies over here!"
								}
							}
						}
					},
					priority = 5
				},
				v51 = {
					text = "Let's get this loot moving!",
					text_generic = "Move the loot",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Grab a bag and go!",
									"Grab a fuckin' bag and move it!"
								}
							}
						}
					},
					priority = 5
				},
				v52 = {
					text = "Shit, it's stuck!",
					text_generic = "It's stuck",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Can't move the fucker!",
									"Fucker's stuck!"
								}
							}
						}
					},
					priority = 5
				},
				v53 = {
					text = "What's that fucking smell?!",
					text_generic = "Smells awful",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"What is that fuckin' smell?!",
									"What is that bloody stench?!"
								}
							}
						}
					},
					priority = 5
				},
				v54 = {
					text = "Shit, that was loud!",
					text_generic = "That was loud",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"You tosser, could you have warned us?!",
									"Aw, shit, that was loud!"
								}
							}
						}
					},
					priority = 5
				},
				v55 = {
					text = "[exhilarated screaming]",
					text_generic = "skydive adrenaline rush",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				v56 = {
					text = "Hey.", --hello there 
					text_generic = "Greeting",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Hi.",
									"What's up?"
								}
							}
						}
					},
					priority = 5
				},
				v57 = {
					text = "Found a crowbar.",
					text_generic = "Found crowbar",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Found myself a crowbar!",
									"Got a crowbar!"
								}
							}
						}
					},
					priority = 5
				},
				v58 = { --taxman
					text = "Sit your ass down!",
					text_generic = "Get in the chair",
					variants = {
						criminal = {
							rb15 = {
								text_variations = {
									"Sit the fuck down!",
									"Sit your arse down, you tosser!"
								}
							}
						}
					},
					priority = 5
				},
				g30x_any = { --with 1s delay
					text = "Bulldozer down!",
					text_generic = "",
					variants = {
						criminal = {
							rb15 = {
								whisper_mode = {
									"Bulldozer down!",
									"Fuck off, dozer!",
									"Fuck you, Bulldozer!",
									"Dozer's history!",
									"Killed a dozer!",
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
					},
					priority = 5
				},
				g31x_any = {
					text = "Shield down!",
					variants = {},
					priority = 5
				},
				g32x_any = {
					text = "Taser down!",
					variants = {},
					priority = 5
				},
				g33x_any = {
					text = "Cloaker down!",
					variants = {},
					priority = 5
				},
				g35x_any = {
					text = "Sniper down!",
					variants = {},
					priority = 5
				},
				g36x_any = {
					text = "Medic down!",
					variants = {},
					priority = 5
				},
				f30x_any = {
					text = "Spotted a Bulldozer!",
					variants = {},
					priority = 5
				},
				f30y_any = {
					text = "Oh, shit! BULLDOZER!",
					variants = {},
					priority = 5
				},
				f31x_any = {
					text = "Spotted a Shield!",
					variants = {},
					priority = 5
				},
				f31y_any = {
					text = "Oh, shit! SHIELD!",
					variants = {},
					priority = 5
				},
				f32x_any = {
					text = "Spotted a Taser!",
					variants = {},
					priority = 5
				},
				f32y_any = {
					text = "Oh, shit! TASER!",
					variants = {},
					priority = 5
				},
				f33x_any = {
					text = "Spotted a Cloaker!",
					variants = {},
					priority = 5
				},
				f33y_any = {
					text = "Oh, shit! CLOAKER!",
					variants = {},
					priority = 5
				},
				f34x_any = {
					text = "Spotted a Sniper!",
					variants = {},
					priority = 5
				},
				f34y_any = {
					text = "Oh, shit! SNIPER!",
					variants = {},
					priority = 5
				},
				f44x_any = {
					text = "There's a SWAT Turret!",
					variants = {},
					priority = 5
				},
				f42_any = {
					text = "Look out!",
					variants = {},
					priority = 5
				},
				f45x_any = {
					text = "Watch out!",
					variants = {},
					priority = 5
				},
				f47x_any = {
					text = "There's a Medic!",
					variants = {},
					priority = 5
				},
				g40x_any = {
					text = "SMOKE!",
					variants = {},
					priority = 5
				},
				g41x_any = {
					text = "FLASHBANG!",
					variants = {},
					priority = 5
				},
				g42x_any = {
					text = "TEARGAS!",
					variants = {},
					priority = 5
				},
				g80x_plu = {
					text = "I need a Medic Bag!",
					variants = {},
					priority = 5
				},
				g81x_plu = {
					text = "I need an Ammo Bag!",
					variants = {},
					priority = 5
				},
				s01x_plu = {
					text = "Placed an Ammo Bag.",
					variants = {},
					priority = 5
				},
				s02x_plu = {
					text = "Placed a Doctor Bag.",
					variants = {},
					priority = 5
				},
				s05x_sin = {
					text = "Thanks.",
					variants = {},
					priority = 5
				},
				s07x_sin = {
					text = "[electrocuted gibberish]",
					variants = {},
					priority = 5
				},
				s08x_sin = {
					text = "Hang on, I'm reviving you.",
					variants = {},
					priority = 5
				},
				s12 = {
					text = "Placed a First Aid Kit.",
					variants = {},
					priority = 5
				},
				s13 = {
					text = "Placed a Bodybag Case.",
					variants = {},
					priority = 5
				},
				s14 = {
					text = "Bodybag secured.",
					variants = {},
					priority = 5
				},
				s32x_sin = {
					text = "I'm out of cable ties...",
					variants = {},
					priority = 5
				},
				f11e_plu = {
					text = "Guys, I need help!",
					variants = {},
					priority = 5
				},
				s20x_sin = {
					text = "Gonna slip out of these cuffs...",
					variants = {},
					priority = 5
				},
				s21x_sin = {
					text = "I got out of my cuffs.",
					variants = {},
					priority = 5
				},
				f02x_plu = {
					text = "Everybody ON THE FLOOR!",
					variants = {},
					priority = 5
				}, --to multiple hostages
				f02x_sin = {
					text = "Get down!",
					variants = {},
					priority = 5
				}, --to single target
				f02b_sin = {
					text = "Hey, you! STAY DOWN!",
					variants = {},
					priority = 5
				},
				f03a_plu = {
					text = "Stay down, everyone!",
					variants = {},
					priority = 5
				}, --to everybody
				f03a_sin = {
					text = "Stay down!",
					variants = {},
					priority = 5
				}, --to single target
				f03b_any = {
					text = "And don't move!",
					variants = {},
					priority = 5
				},
				f36x_any = {
					text = "Get the fuck up!",
					variants = {},
					priority = 5
				},
				f37_any = {
					text = "Marked a guard",
					variants = {},
					priority = 5 --marked a guard
				},
				f38_any = {
					text = "Follow me.",
					variants = {},
					priority = 5
				},
				f39_any = {
					text = "Marked a camera.",
					variants = {},
					priority = 5
				},
				f40_any = {
					text = "Get moving!",
					variants = {},
					priority = 5
				}, --to hostage
				f41_any = {
					text = "Wake up, sleepyhead.",
					variants = {},
					priority = 5
				}, --sokol only
				f43_any = {
					text = "Wake up!",
					variants = {},
					priority = 5
				}, --sokol only
				f46x_any = {
					text = "TALK!",
					variants = {},
					priority = 5
				}, --taxman interrogation
				f48x_any = {
					text = "Wait!",
					variants = {},
					priority = 5
				}, --stop/halt/wait
				d01x_sin = {
					text = "Sounds like the drill's jammed!",
					variants = {},
					priority = 5
				},
				d02x_sin = {
					text = "Drill's jammed again!", --obsolete
					variants = {
						criminal = {
							text = "Spotted jammed drill",
							variations = {
								rb15 = {
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
					
					},
					priority = 5
				},
				d03_plu = {
					text = "Sounds like the computer is jammed!",
					variants = {
						criminal = {
							rb15 = {
								whisper_mode = {
									"Why is the computer beeping?!",
									"Fuck, something's not right with the computer!",
									"The computer process is jammed!",
									"The bloody computer is stuck!"
								}
							}
						}
					},
					priority = 5
				},
				d03_sin = {
					text = "Sounds like the lance is jammed!",
					variants = {},
					priority = 5
				},
				d04_plu = {
					text = "The computer's jammed again!",
					variants = {},
					priority = 5
				},
				d04_sin = {
					text = "The thermal lance is jammed!",
					variants = {},
					priority = 5
				},
				d05 = {
					text = "Shit's broke!",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				a01x_any = {
					disabled = true,
					text = "Let's do this.", --mask up
					text_generic = "Masking up",
					priority = 5,
					variants = { --priority
						criminal = {
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
							},
							generic = {
								text = "Alright... let's do this."
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
					variants = {},
					priority = 5
				},
				r01x_sin = {
					text = "Gotcha.",
					variants = {},
					priority = 5
				}, --bot 'follow me' response
				r02a_sin = {
					text = "I'm on my way!",
					variants = {},
					priority = 5
				}, --bot response
				t01x_sin = {
					text = "Just a few minutes left.",
					variants = {},
					priority = 5
				},
				t02x_sin = {
					text = "Halfway there.",
					variants = {},
					priority = 5
				},
				t03x_sin = {
					text = "Any second now!",
					variants = {},
					priority = 5
				},
				l01x_sin = {
					text = "Hands up!",
					variants = {
						criminal = {
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
									"Drop your gun!",
									"Hands in the fuckin' air!",
									"Hands up, ya fucker!",
									"Lower ya weapon!",
									"Hands where I can see them."
								}
							}
						}
					},
					priority = 5
				}, --intimidate
				l02x_sin = {
					text = "Get on your knees!",
					variants = {
						criminal = {
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
					},
					priority = 5
				}, --intimidate 2
				l03x_sin = {
					text = "Now put your cuffs on.",
					variants = {
						criminal = {
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
					},
					priority = 5
				}, --intimidate
				whistling_attention = {
					text = "[whistle]",
					variants = {},
					priority = 5
				},
				dsp_radio_checking_1 = {
					text = "[Answering a pager]",
					variants = {
						criminal = {
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
					},
					priority = 5
				},
				dsp_stop_all = {
					text = "[radio static ends]",
					variants = {},
					disabled = true,
					priority = 5
				}, --disable this
				s09a = {
					text = "[reviving] Hey, man, you're not looking too good...",
					variants = {},
					priority = 5
				},
				s09b = {
					text = "[reviving] Woah, you look even worse than before.",
					variants = {},
					priority = 5
				},
				s09c = {
					text = "[reviving] You're looking really beat up, use a doctor bag!",
					variants = {},
					priority = 5
				},
				s05a_sin = {
					text = "I feel terrible, heal me!",
					variants = {},
					priority = 5
				}, --! bad
				s05b_sin = {
					text = "Whew, thanks.",
					variants = {},
					priority = 5
				},

		--cops
				l3n_civ = {
					text = "l3n_civ (???)",
					disabled = true
				},
				l3n_d01 = {
					text = "l3n_d01 (???)",
					disabled = true
				},
				l2n_mov = {
					text = "Move!", -- (???)
					disabled = true
				},
				dispatch_generic_message = {
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
				visor_lost = {
					text = "[lost visor]"
				},
				entrance = {
					disabled = true,
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
							text_variants = {
								"Somebody order a Medic?",
								"Medic in the house!",
								"There's blood all over!"
							}
						},
						shld = {
							text = "[Shield spawned]",
							text_variants = {
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
					text = "Hello? 911? I need help, there's armed robbers here!",
					variants = {
						criminal = {
							text = "911_call",
							disabled = true
						}
					}
				},
				a02x_any = {
					text = "(fearful screaming)",
					disabled = "whisper_mode"
				},
				a03x_any = {
					disabled = true,
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
					text = "[fire hurt]",
					disabled = true,
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