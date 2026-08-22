--[[


so yeah the whole technical idea behind the mod (and sound_data specifically)
is extrapolating data about the sound line solely based on the event id and whatever info we can get via lua
such as whether the game is stealth or loud (which we can get).
because sound events are more or less all treated equally by the game,
but to us humans with limited eyeball space and visual processing capacity,
some events are definitely more important than others.


TODO

- setup in menu so that captions can be shown in the menu (eg contractor briefings), not just ingame

- better streamlined flow- remove subtitles consistently



no unit names by tweak table
cookoff: gangster death lingers forever





carshop manager chatter
	Play_man_ch1_01 









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


if false then -- sample convert absolute timestamps to fragment sentence durations
	local s = [[
	0
	1.62
	5.7
	7.9
	9.3
	11
	12.5
	15.7
	19
	22.9
	25.4
	30
	32.1
	33.5
	36.3
	37.3
	42.2
	45
	47.8
	49.8
	53.1
	55.4
	59.3
	61.2
	62.7
	65.6
	69.5
	72.5
	74
	76.6
	78.3
	81.3
	83.5
	86.9
	90
	94.7
	99
	102.3
	104.2
	105.7
	107.6
	110.2
	111.0
	115.7
	120.7
	123.7
	128
	130.8
	134.0
	135.9
	142.3
	144.2
	150.6
	153.6
	157.9
	161.4
	165.7
	167.4
	168.1
	170.4
	171.9
	173.6
	175
	179.3
	180.9
	185.8
	189.6
	192
	194.1
	198.3
	200.2
	201.3
	205.1
	207.6
	209.4
	212.1
	214.0
	218.3
	221.7
	222.9
	224.4
	226.8
	228.2
	231.2
	232.7
	236.4
	239.0
	241.6
	244
	245.2
	247.5
	251.2
	253.2
	256.7
	258.7
	261.2
	264.9
	266.7
	271.1
	273.4
	274.5
	275.7
	278.9
	282.4
	288.1
	292.7
	295.3
	296.5
	299.8
	301.0
	302.8
	307.1
	311.0
	312.1
	316.7
	320.4
	]]


	local out = nil
	local results = {}
	local prev = 0
	local i = 0
	local b = string.split(s,"\n")
	for j,v in ipairs(b) do 
		if v ~= "" then
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

	--logall(results)
end

