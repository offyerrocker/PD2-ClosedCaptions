--[[

- todo before release:
-- conversations are not respecting distance
-- placement customization
-- menu/game state handling
-- anim subtitle removal handling






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


resdogs
	Play_loc_rvd_02 - includes a baked snippet at the end of mr blue going "i'll take care of our lil boy here"


carshop manager chatter
	Play_man_ch1_01 


oil whatever
	Play_new_deep_01
	Play_gab_deep_01

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
7.8
10.5
14.3
17.5
22.7 
30.2
33.2
37.7
43
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

