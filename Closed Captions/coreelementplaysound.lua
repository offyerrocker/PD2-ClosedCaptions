core:module("CoreElementPlaySound")
core:import("CoreMissionScriptElement")

ElementPlaySound = ElementPlaySound or class(CoreMissionScriptElement.MissionScriptElement)


local playsound = ElementPlaySound._play_sound
function ElementPlaySound:_play_sound(...)
	local result = {playsound(self,...)}
	--[[
	if _G.Log then 
		_G.Log("Played " .. tostring(self._values.sound_event) .. " at " .. tostring(self._values.position))
		_G.logall(self._values)
		_G.Log(self._source)
	end
	--]]
	if _G.ClosedCaptions then 
		local source_id = tostring(self._source)
		local source = nil -- = self._source --not used for this; we want to use a custom position instead
		local variant = ""
		local prefix = ""
		local expire_t = Application:time() + 60 --this sound does not give expire_t or duration naturally; instead, it supplies a callback for when the sound ends, so let's rely on that
		_G.ClosedCaptions:add_line(self._values.sound_event,source,source_id,variant,prefix,expire_t,self._values.position)
	end
--[[
	if self._values.sound_event then
		if self._source then
			self._source:stop()
		end

		self._source = SoundDevice:create_source(self._editor_name)

		self._source:set_position(self._values.position)
		self._source:set_orientation(self._values.rotation)

		if self._source:post_event(self._values.sound_event, callback(self, self, "sound_ended"), nil, "end_of_event") then
			self._mission_script:add_save_state_cb(self._id)
		end
	elseif Application:editor() then
		managers.editor:output_error("Cant play sound event nil [" .. self._editor_name .. "]")
	end
	--]]
	return unpack(result)
end

local soundended = ElementPlaySound.sound_ended
function ElementPlaySound:sound_ended(...)
	if _G.ClosedCaptions then 
--		_G.Log("ElementPlaySound:sound_ended() " .. tostring(self._values.sound_event),{color=Color(1,0.3,0)})
		_G.ClosedCaptions:_remove_line({sound_id = self._values.sound_event,source_id = tostring(self._source)})
	end
	return soundended(self,...)
end

local onexecuted = ElementPlaySound.on_executed
function ElementPlaySound:on_executed(instigator,...)
	_G.pbird = instigator
	local state
	if self._values.use_instigator then 
		state = 1
	elseif not self._values.elements or #self._values.elements == 0 then
		state = 2
	elseif Network:is_server() then
		state = 3
	end
	if _G.Log then 
		_G.Log("ElementPlaySound:on_executed(" .. tostring(instigator) .. ") debug state: [" .. tostring(state) .. "] soundevent:" .. tostring(self._values.sound_event))
	end
	if self._values.elements and #self._values.elements > 0 then 
--		if _G.logall then
--			_G.logall(self._values.elements)
--		end
	end
--[[
	if not self._values.enabled then
		return
	end

	if self._source and self:value("interrupt") ~= false then
		self._source:stop()
	end

	if self._values.use_instigator then
		if Network:is_server() and alive(instigator) and instigator:id() ~= -1 then
			instigator:sound():say(self._values.sound_event, true, not self._values.append_prefix, true)
		end
	elseif not self._values.elements or #self._values.elements == 0 then
		self:_play_sound()
	elseif Network:is_server() then
		self:_play_sound_on_elements()
	end

	ElementPlaySound.super.on_executed(self, instigator)
	--]]
	return onexecuted(self,instigator,...)
end

if true then return end


local playsoundonelements = ElementPlaySound._play_sound_on_elements
function ElementPlaySound:_play_sound_on_elements(...)
--[[
	local function f(unit)
		if unit:id() ~= -1 then
			unit:sound():say(self._values.sound_event, true, not self._values.append_prefix, true)
		end
	end

	for _, id in ipairs(self._values.elements) do
		local element = self:get_mission_element(id)

		element:execute_on_all_units(f)
	end
	--]]
	return playsoundonelements(self,...)
end

--[[
Hooks:PreHook(ElementPlaySound,"operation_remove","closedcaptions_elementplaysound_operation_remove",function(self)
	if self._source then
		self._source:stop()
		self:sound_ended()
	end
end)
Hooks:PreHook(ElementPlaySound,"sound_ended","closedcaptions_elementplaysound_sound_ended",function(self,...)
--	self._mission_script:remove_save_state_cb(self._id)
end)
--]]