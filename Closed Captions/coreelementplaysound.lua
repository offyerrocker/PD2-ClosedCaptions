core:module("CoreElementPlaySound")
core:import("CoreMissionScriptElement")

ElementPlaySound = ElementPlaySound or class(CoreMissionScriptElement.MissionScriptElement)

local playsound = ElementPlaySound._play_sound
function ElementPlaySound:_play_sound(...)
	local result = {playsound(self,...)}
	if _G.ClosedCaptions then 
		local source_id = tostring(self._source)
		local source = nil -- = self._source --not used for this; we want to use a custom position instead
		local variant = "element" --indicates that the sound is playing from an element
		local prefix = ""
		local expire_t = Application:time() + 60 --this sound does not give expire_t or duration naturally; instead, it supplies a callback for when the sound ends, so let's rely on that
		_G.ClosedCaptions:add_line(self._values.sound_event,source,source_id,variant,prefix,expire_t,self._values.position)
	end
	return unpack(result)
end

local soundended = ElementPlaySound.sound_ended
function ElementPlaySound:sound_ended(...)
	if _G.ClosedCaptions then 
--		_G.Log("ElementPlaySound:sound_ended() " .. tostring(self._values.sound_event),{color=Color(1,0.3,0)})
		_G.ClosedCaptions:end_line({sound_id = self._values.sound_event,source_id = tostring(self._source)})
	end
	return soundended(self,...)
end












if true then return end


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





--[[
local operationremove = ElementPlaySound.operation_remove
function ElementPlaySound:operation_remove(...)
--this calls sound_ended() so that method does not need its own hook
	if self._source and _G.ClosedCaptions then 
		_G.ClosedCaptions:_remove_line({source_id = tostring(self._source)})
	end
	return operationremove(self,...)
end
--]]

local playsoundonelements = ElementPlaySound._play_sound_on_elements
function ElementPlaySound:_play_sound_on_elements(...)
--this method just goes through the unit sound() extension, which is already caught by ClosedCaption's other hooks in playersound and copsound
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
Hooks:PreHook(ElementPlaySound,"sound_ended","closedcaptions_elementplaysound_sound_ended",function(self,...)
--	self._mission_script:remove_save_state_cb(self._id)
end)
--]]