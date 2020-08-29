--this didn't execute so for first public release i'm gonna make sure this super extra doesn't execute by commenting it out
--[[
core:module("CoreSubtitleSequence")
core:import("CoreClass")


SubtitleSequence = SubtitleSequence or CoreClass.class()
Subtitle = Subtitle or CoreClass.class()
StringIDSubtitle = StringIDSubtitle or CoreClass.class(Subtitle)


function SubtitleSequence:_report_bad_string_id(string_id)
	Localizer:lookup(string_id)
	
	local path = Application:nice_path("mods/saves/MISSING_SUBTITLE_FILES.txt",true)
	local file = io.open(path,"a+")
	if file then
		file:write("MISSING_SUBTITLE : " .. string_id .. "\n")
		file:close()
	else
	end
end
--]]

--[[ 
function SubtitleSequence:_load_from_xml(sequence_node)
	assert(managers.localization, "Localization Manager not ready.")
	assert(sequence_node and sequence_node:name() == "sequence", "Attempting to construct from non-sequence XML node.")
	assert(sequence_node:parameter("name"), "Sequence must have a name.")

	self.__parameters = sequence_node:parameter_map()
	self.__subtitles = {}

	for node in sequence_node:children() do
		local string_id = self:_xml_assert(node:parameter("text_id"), node, string.format("Sequence \"%s\" has entries without text_ids.", self:name()))

		if not managers.localization:exists(string_id) then
			self:_report_bad_string_id(string_id)
		end

		local start_time = self:_xml_assert(tonumber(node:parameter("time")), node, string.format("Sequence \"%s\" has entries without valid times.", self:name()))
		local subtitle = StringIDSubtitle:new(string_id, start_time, tonumber(node:parameter("duration") or 2))

		self:add_subtitle(CoreClass.freeze(subtitle))
	end

	CoreClass.freeze(self.__subtitles)
end

function Subtitle:init(string_data, start_time, duration)
	self.__string_data = string_data ~= nil and assert(tostring(string_data), "Invalid string argument.") or ""
	self.__start_time = assert(tonumber(start_time), "Invalid start time argument.")
	self.__duration = duration ~= nil and assert(tonumber(duration), "Invalid duration argument.") or nil
end


--]]