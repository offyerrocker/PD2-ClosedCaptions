--[[


so yeah the whole technical idea behind the mod (and sound_data specifically)
is extrapolating data about the sound line solely based on the event id and whatever info we can get via lua
such as whether the game is stealth or loud (which we can get).
because sound events are more or less all treated equally by the game,
but to us humans with limited eyeball space and visual processing capacity,
some events are definitely more important than others.


TODO

- allow overriding subtitle font
- menu/game state handling
	- allow subtitles in main menu, when player does not exist
- subtitles for briefing/heist end
	- main menu contract mouseover lines
- allow overriding/adding to standard subtitles
	* see rvd 

- controller support for customize ui

- heist intro/complete lines
- better streamlined flow- remove subtitles consistently
	* look into source style subtitle display- brief delay while the caption animates fadein, queues always cleared from the top - much more readable
		* not exactly feasible since line lengths vary so widely in pd2 (eg. heat speech)

- address "duplicated" sounds
	- sounds that naturally play multiple times in rapid succession
		eg. enemy death
	- sounds that play twice because of jank
		eg. dumpster open/close, plays twice per interaction rather than increasing volume i guess
	- sounds that play from multiple sources so that you can hear them in multiple locations
		eg. PA announcements in Crude Awakening
	* use override_source_id system?
		- can't remove other lines, just display one at a time

- sounds that need converting to conversations:
	- heat speech
		* each heister variant is separate... oy vey
	- flames of love

- possible edge case if a conversation is triggered twice from a standard subtitle while the first is still going











missing lines:


beneath the mountain
	[61] : [blast_door_explosion]
	[62] : [berry_blast_door_blow]

undercover
	Play_pon_man_01
	Play_hnc_man_01
[53] : [Play_pon_man_04] --vars
[54] : [Play_pon_man_07]
[55] : [Play_pon_man_06]

Stealing Xmas
	Play_drs_moon_09

resdogs
	Play_loc_rvd_02 - includes a baked snippet at the end of mr blue going "i'll take care of our lil boy here"
	- probably needs an override and/or convo conversion


carshop manager chatter
	Play_man_ch1_01 


oil whatever
	Play_gab_deep_01
	Play_gab_deep_03
	Play_gab_deep_6A
	Play_civ_deep_01

	[94] : [Play_loc_deep_38A]
	[95] : [hydrogen_tank_pick_up]
	[96] : [hydrogen_tank_put_down]
	[97] : [bar_fan_jam]
	[98] : [bar_fan_jam_cancel]
	[99] : [bar_fan_jam_finished]
	[100] : [Play_loc_deep_39]
	[101] : [bar_twist_valve]
	[102] : [bar_twist_valve_cancel]
	[103] : [bar_twist_valve_finished]
	[104] : [Play_gab_deep_6A]
	[105] : [Play_loc_deep_41]
	[106] : [pick_up_key_card]
	[107] : [Play_loc_deep_42]
	[108] : [chalk_scratch]
	[109] : [bulletproof_shutter_open]
	[110] : [fish_button_push_server_shutdown]
	[111] : [deep_crane_rattle_loop_start]
	[112] : [Play_loc_deep_44]
	[113] : [Play_loc_deep_45]
	[114] : [Play_loc_deep_48]
	[115] : [deep_crane_rattle_loop_stop]
	[116] : [Play_loc_deep_56]
	[117] : [bar_turn_off_cooling_system_start]
	[118] : [bar_turn_off_cooling_system_cancel]
	[119] : [bar_turn_off_cooling_system_finish]
	[120] : [Play_loc_deep_49]
	[121] : [Play_loc_deep_46]
	[122] : [Play_loc_deep_53]
	[123] : []
	[124] : [Play_loc_deep_61]
	[125] : [Play_loc_deep_63]
	[126] : [oil_rig_explosion_distant_stereo]
	[127] : [security_box_lever_pull]
	[128] : [Play_loc_deep_65]
	[129] : [hit_oil_drum]
	[130] : [fire_hydrant]
	[131] : [gas_station_pumps_explode]
	[132] : [alarm_deep_on_slow_fade]
	[133] : [hacking_device_power_off]
	[134] : [wall_explode_muffled]
	[135] : [electrical_box_break_hit]
	[136] : [wall_explosion_large]
	[137] : [Play_loc_deep_66]
	[138] : [Play_loc_deep_67]
	[139] : [unmute]
[147] : [Play_loc_deep_end_loud]

	Unknown contractor subtitle loc_deep_69_01



generic bain callouts 
	Play_pln_pow_01
	play_pln_gen_bfr_10


currently needs beardlib to manage soundsource-unit linking



UNUSED LEGACY LOCALIZATIONS:
	"menu_closedcaptions_set_x_title" : "Set Caption X",
	"menu_closedcaptions_set_x_desc" : "Change captions' horizontal position",
	"menu_closedcaptions_set_y_title" : "Set Caption Y",
	"menu_closedcaptions_set_y_desc" : "Change caption boxes' vertical position",
	"menu_closedcaptions_set_w_title" : "Set Caption W",
	"menu_closedcaptions_set_w_desc" : "Change caption boxes' width",
	"menu_closedcaptions_set_vmargin_title" : "Set Caption Margin",
	"menu_closedcaptions_set_vmargin_desc" : "Change the vertical gap between caption boxes",
	"menu_closedcaptions_set_language_title" : "Set Language",
	"menu_closedcaptions_set_language_desc" : "Change the language of captions' text",
	"menu_closedcaptions_enable_logging_master_title" : "Master Enable Logging",
	"menu_closedcaptions_enable_logging_master_desc" : "Must be enabled for any of the below options.",
	"menu_closedcaptions_enable_logging_missing_title" : "Record Missing IDs",
	"menu_closedcaptions_enable_logging_missing_desc" : "Writes debug messages to mods/saves/CLOSEDCAPTIONS_MISSING_LINES.txt",
	"menu_closedcaptions_enable_logging_ids_title" : "Log Incoming Sound IDs",
	"menu_closedcaptions_enable_logging_ids_desc" : "Outputs sound ids to the BLT log",
	"menu_closedcaptions_enable_logging_debug_title" : "Log Debug Messages",
	"menu_closedcaptions_enable_logging_debug_desc" : "Outputs debug messages to the BLT log",
	"menu_closedcaptions_order_queue" : "Chronological"

--]]




if false then -- sample format absolute timestamps 




	local s = [[3.2

7.1
12.1
17.2
21.8
26.2
30.2
34.9
40.9
46.4
51.8
56.9
65.1
69.4
75.6
79.5
84.5
91.9
95.3
100.0
103.2
	]]


	local out = nil
	local results = {}
	local prev = 0
	local i = 0
	local b = string.split(s,"\n")
	for j,v in ipairs(b) do 
		local _s = string.gsub(v,"%s","")
		if _s ~= "" then
			i = i + 1
			local n = tonumber(v)
			if out then
				out = out .. "," .. string.format("%0.1f",n)
			else
				out = string.format("%0.1f",n)
			end
		end
	end
	Print(out)
	
	
	
	
	
	--[[ -- sample convert absolute timestamps to fragment sentence durations 
	local out = nil
	local results = {}
	local prev = 0
	local i = 0
	local b = string.split(s,"\n")
	for j,v in ipairs(b) do 
		local _s = string.gsub(v,"%s","")
		if _s ~= "" then
			i = i + 1
			local n = tonumber(v)
			local duration = n - prev
			prev = n
			results[i] = duration
			if out then
				out = out .. "," .. string.format("%0.1f",duration)
			else
				out = string.format("%0.1f",duration)
			end
		end
	end
	Print(out)

--]]
	--logall(results)
end


-- format_speaker_name for conversation_data
	if conversation_data then
		-- todo process this in sound data loading
		local sentences = {}
		local color_ranges = {}
		local sp = string.split(string.gsub(managers.localization:text(conversation_data.text),"\n",""),"$b")
		local speaker_names = {}
		for speaker_index,speaker_id in pairs(conversation_data.speakers) do	
			local name = managers.localization:text(speaker_id)
			speaker_names[speaker_index] = name
			
			local range_col = self:GetColor(conversation_data.colors[speaker_index])
			color_ranges[speaker_index] = {0,utf8.len(name)+1,range_col or Color.white}
		end
		
		for i,line in ipairs(sp) do 
			local sentence = line
			local color_range_index = nil
			for speaker_index,speaker_name in pairs(speaker_names) do 
				if not color_range_index and string.find(sentence,"^%$" .. speaker_index) then
					color_range_index = speaker_index
				end

				local count
				sentence,count = string.gsub(sentence,"^%$" .. speaker_index,"")
				if count > 0 then
					local caption_str,text_color,_color_ranges = self:format_speaker_name(speaker_name,sentence,conversation_data.colors[color_range_index])
					sentences[i] = {
						text = sentence,
						color_range_index = color_range_index
					}
					break
				end
			end
		end