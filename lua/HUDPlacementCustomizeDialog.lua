
--[[


goals:
simple/minimalistic
mkb AND controller friendly

--]]


local env = getfenv(1)

core:module("SystemMenuManager") -- setfenv to core to yoink the BaseDialog class global
local HUDPlacementCustomizeDialog = class(BaseDialog)
--local env = setmetatable({}, {__index=_G})
setfenv(1,env) -- go back to regular global env

local ids_mouse1 = Idstring("0")
local ids_mouse2 = Idstring("1")

--HUDPlacementCustomizeDialog.INPUT_IGNORE_DELAY_INTERVAL = 0.1 -- ignore input for this many seconds after opening, to prevent misinputs

function HUDPlacementCustomizeDialog:init(manager,data,...)
	HUDPlacementCustomizeDialog.super.init(self,manager,data,...)
	--callbacks and input
	self._controller = self._data.controller or manager:_get_controller()
	self._save_settings_callback = self._data.save_settings_callback
	self._realign_hud_callback = self._data.realign_hud_callback
	self._cancel_func = callback(self,self,"hide")
	
	self._BGBOX_PARAMS = { tile_size=self._data.parent._BGBOX_PARAMS.tile_size,color = Color(0.4,0.4,0.4) }
	self._BGBOX_PANEL_CONFIG = {alpha=1,valign="grow",halign="grow"}
	self._BGBOX_TILE_CONFIG = self._data.parent._BGBOX_TILE_CONFIG
	
	self.CreateBGBox = self._data.parent.CreateBGBox
	
	self.inherited_settings = self._data.settings
	
	self._fullscreen_ws = self._data.workspace
	
	self._text_color = Color.white
	
	self._mouse_drag_x_start = nil
	self._mouse_drag_y_start = nil
	self._held_object = nil
	self._held_button = nil -- idstring of current mousedrag/hold button
	
	self._ui_objects = nil
	self._sorted_ui_objects = nil
	
	self:create_gui()
end


-- create the customization window
-- (alignment and settings buttons)
function HUDPlacementCustomizeDialog:create_gui()
	local settings = self.inherited_settings
	
	local max_window_hidden_hor_margin = 0 --no more than this many pixels of the window can be horizontally hidden (above or below the edge of the screen)
	local max_window_hidden_ver_margin = 0 --no more than this many pixels of the window can be vertically hidden (above or below the edge of the screen)
	local window_w = 200
	local window_h = 200
	
	local ws = self._fullscreen_ws
	local ws_panel = ws:panel()
	
	local parent_panel = ws_panel:child("customize_dialog")
	if alive(parent_panel) then
		ws_panel:remove(parent_panel)
		parent_panel = nil
	end
	
	parent_panel = ws_panel:panel({
		name = "customize_dialog_parent",
		layer = 4 -- draw above regular captions
	})
	self._parent_panel = parent_panel
	
	
	local panel = parent_panel:panel({
		name = "dialog_window",
		w = window_w,
		h = window_h,
		layer = 1
	})
	
	local header_title = panel:text({
		name = "header_title",
		font = tweak_data.hud_players.ammo_font,
		font_size = 16, --!
		text = self._data.title,
		x = 0,
		y = 0,
		align = "center",
		vertical = "top",
		color = self._text_color,
		layer = 2
	})
	
	local reset_button = panel:panel({
		name = "reset_button",
		x = 100,
		y = 100,
		w = 50,
		h = 20,
		alpha = 1,
		layer = 3
	})
	local reset_bg = reset_button:rect({
		name = "reset_bg",
		valign = "grow",
		halign = "grow",
		color = Color.red,
		layer = 1
	})
	local reset_label = reset_button:text({
		name = "reset_label",
		font = tweak_data.hud_players.ammo_font,
		font_size = 12, --!
		text = self._data.title,
		align = "center",
		vertical = "center",
		color = self._text_color,
		layer = 2
	})
	-- reset settings and positions to defaults
	
	
	
	
	
	local bgbox = self.CreateBGBox(panel,self._BGBOX_PARAMS,self._BGBOX_PANEL_CONFIG,self._BGBOX_TILE_CONFIG)
	local MIN_CAPTIONS_W = 200
	local MIN_CAPTIONS_H = 200
	local MAX_CAPTIONS_W = ws_panel:w()
	local MAX_CAPTIONS_H = ws_panel:h()
	local function clbk_resize_mouse_click(o,button,x,y) --click (on releasing if this object is the currently held object)
		if self._save_settings_callback then 
			self._save_settings_callback()
		end
	end
	local function clbk_resize_mouse_press(o,button,x,y) -- on initial press
		self._mouse_drag_x_start,self._mouse_drag_y_start = x,y
		self._held_object = o
		
		local obj = self._data.parent._panel
		self._target_drag_x_start,self._target_drag_y_start = obj:position()
		self._target_drag_cx_start,self._target_drag_cy_start = obj:center()
		self._target_drag_w_start,self._target_drag_h_start = obj:size()
		self._target_drag_x2_start = obj:right()
		self._target_drag_y2_start = obj:bottom()
	end
	self._ui_objects = {
		customize_area = { -- key must EXACTLY match the name of the gui object!
			object = self._data.parent._customize_panel,
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = function(o,button,x,y) --click (on releasing if this object is the currently held object)
				if self._save_settings_callback then 
					self._save_settings_callback()
				end
			end,
			mouse_press_callback = function(o,button,x,y) -- on initial press
				self._mouse_drag_x_start,self._mouse_drag_y_start = x,y
				self._held_object = o
				
				local obj = self._data.parent._panel
				self._target_drag_x_start,self._target_drag_y_start = obj:position()
			end,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					-- move
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					
					local obj = self._data.parent._panel
					local parent_panel = obj:parent()
					
					local bw,bh = obj:size()
					local min_x = max_window_hidden_hor_margin - bw
					local min_y = max_window_hidden_ver_margin - bh
					local max_x = parent_panel:w() - max_window_hidden_hor_margin
					local max_y = parent_panel:h() - max_window_hidden_ver_margin
					local to_x = math.clamp( start_x + d_x, min_x, max_x )
					local to_y = math.clamp( start_y + d_y, min_y, max_y )
					
					obj:set_position(to_x,to_y)
					
					self.inherited_settings.caption_x = to_x
					self.inherited_settings.caption_y = to_y
				end
			end
		},
		resize_left = {
			object = self._data.parent._customize_panel:child("resize_left"),
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = clbk_resize_mouse_click,
			mouse_press_callback = clbk_resize_mouse_press,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					local obj = self._data.parent._panel
					local parent = obj:parent()
					local bw,bh = obj:size()
					
					local to_w = math.clamp(self._target_drag_w_start - d_x,MIN_CAPTIONS_W,MAX_CAPTIONS_W)
					obj:set_w(to_w)
					obj:set_right(self._target_drag_x2_start)
					self.inherited_settings.caption_w = to_w
					self.inherited_settings.caption_x = obj:x()
					
					if self._realign_hud_callback then
						self._realign_hud_callback()
					end
				end
			end
		},
		resize_right = {
			object = self._data.parent._customize_panel:child("resize_right"),
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = clbk_resize_mouse_click,
			mouse_press_callback = clbk_resize_mouse_press,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					local obj = self._data.parent._panel
					local parent = obj:parent()
					local bw,bh = obj:size()
					
					local to_w = math.clamp(self._target_drag_w_start + d_x,MIN_CAPTIONS_W,MAX_CAPTIONS_W)
					obj:set_w(to_w)
					obj:set_left(self._target_drag_x_start)
					self.inherited_settings.caption_w = to_w
					self.inherited_settings.caption_x = obj:x()
					
					if self._realign_hud_callback then
						self._realign_hud_callback()
					end
				end
			end
		},
		resize_top = {
			object = self._data.parent._customize_panel:child("resize_top"),
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = clbk_resize_mouse_click,
			mouse_press_callback = clbk_resize_mouse_press,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					local obj = self._data.parent._panel
					local parent = obj:parent()
					local bw,bh = obj:size()
					
					local to_h = math.clamp(self._target_drag_h_start - d_y,MIN_CAPTIONS_H,MAX_CAPTIONS_H)
					obj:set_h(to_h)
					obj:set_bottom(self._target_drag_y2_start)
					self.inherited_settings.caption_h = to_h
					self.inherited_settings.caption_y = obj:y()
					
					if self._realign_hud_callback then
						self._realign_hud_callback()
					end
				end
			end
		},
		resize_bottom = {
			object = self._data.parent._customize_panel:child("resize_bottom"),
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = clbk_resize_mouse_click,
			mouse_press_callback = clbk_resize_mouse_press,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					local obj = self._data.parent._panel
					local parent = obj:parent()
					local bw,bh = obj:size()
					
					local to_h = math.clamp(self._target_drag_h_start + d_y,MIN_CAPTIONS_H,MAX_CAPTIONS_H)
					obj:set_h(to_h)
					obj:set_top(self._target_drag_y_start)
					self.inherited_settings.caption_h = to_h
					self.inherited_settings.caption_y = obj:y()
					
					if self._realign_hud_callback then
						self._realign_hud_callback()
					end
				end
			end
		},
		resize_topleft = {
			object = self._data.parent._customize_panel:child("resize_topleft"),
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = clbk_resize_mouse_click,
			mouse_press_callback = clbk_resize_mouse_press,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					local obj = self._data.parent._panel
					local parent = obj:parent()
					local bw,bh = obj:size()
					
					local to_w = math.clamp(self._target_drag_w_start - d_x,MIN_CAPTIONS_W,MAX_CAPTIONS_W)
					obj:set_w(to_w)
					obj:set_right(self._target_drag_x2_start)
					self.inherited_settings.caption_w = to_w
					self.inherited_settings.caption_x = obj:x()
					
					local to_h = math.clamp(self._target_drag_h_start - d_y,MIN_CAPTIONS_H,MAX_CAPTIONS_H)
					obj:set_h(to_h)
					obj:set_bottom(self._target_drag_y2_start)
					self.inherited_settings.caption_h = to_h
					self.inherited_settings.caption_y = obj:y()
					
					if self._realign_hud_callback then
						self._realign_hud_callback()
					end
				end
			end
		},
		resize_topright = {
			object = self._data.parent._customize_panel:child("resize_topright"),
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = clbk_resize_mouse_click,
			mouse_press_callback = clbk_resize_mouse_press,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					local obj = self._data.parent._panel
					local parent = obj:parent()
					local bw,bh = obj:size()
					
					local to_w = math.clamp(self._target_drag_w_start + d_x,MIN_CAPTIONS_W,MAX_CAPTIONS_W)
					obj:set_w(to_w)
					obj:set_left(self._target_drag_x_start)
					self.inherited_settings.caption_w = to_w
					self.inherited_settings.caption_x = obj:x()
					
					local to_h = math.clamp(self._target_drag_h_start - d_y,MIN_CAPTIONS_H,MAX_CAPTIONS_H)
					obj:set_h(to_h)
					obj:set_bottom(self._target_drag_y2_start)
					self.inherited_settings.caption_h = to_h
					self.inherited_settings.caption_y = obj:y()
					
					if self._realign_hud_callback then
						self._realign_hud_callback()
					end
				end
			end
		},
		resize_bottomleft = {
			object = self._data.parent._customize_panel:child("resize_bottomleft"),
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = clbk_resize_mouse_click,
			mouse_press_callback = clbk_resize_mouse_press,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					local obj = self._data.parent._panel
					local parent = obj:parent()
					local bw,bh = obj:size()
					
					local to_w = math.clamp(self._target_drag_w_start - d_x,MIN_CAPTIONS_W,MAX_CAPTIONS_W)
					obj:set_w(to_w)
					obj:set_right(self._target_drag_x2_start)
					self.inherited_settings.caption_w = to_w
					self.inherited_settings.caption_x = obj:x()
					
					local to_h = math.clamp(self._target_drag_h_start + d_y,MIN_CAPTIONS_H,MAX_CAPTIONS_H)
					obj:set_h(to_h)
					obj:set_top(self._target_drag_y_start)
					self.inherited_settings.caption_h = to_h
					self.inherited_settings.caption_y = obj:y()
					
					if self._realign_hud_callback then
						self._realign_hud_callback()
					end
				end
			end
		},
		resize_bottomright = {
			object = self._data.parent._customize_panel:child("resize_bottomright"),
			mouseover_point = "hand",
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = clbk_resize_mouse_click,
			mouse_press_callback = clbk_resize_mouse_press,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				if self._held_button == ids_mouse1 then
					local start_x = self._target_drag_x_start
					local start_y = self._target_drag_y_start
					local obj = self._data.parent._panel
					local parent = obj:parent()
					local bw,bh = obj:size()
					
					local to_w = math.clamp(self._target_drag_w_start + d_x,MIN_CAPTIONS_W,MAX_CAPTIONS_W)
					obj:set_w(to_w)
					obj:set_left(self._target_drag_x_start)
					self.inherited_settings.caption_w = to_w
					self.inherited_settings.caption_x = obj:x()
					
					local to_h = math.clamp(self._target_drag_h_start + d_y,MIN_CAPTIONS_H,MAX_CAPTIONS_H)
					obj:set_h(to_h)
					obj:set_top(self._target_drag_y_start)
					self.inherited_settings.caption_h = to_h
					self.inherited_settings.caption_y = obj:y()
					
					if self._realign_hud_callback then
						self._realign_hud_callback()
					end
				end
			end
		},
		dialog_window = {
			object = panel,
			mouseover_pointer = "hand", --arrow link hand grab
			drag_pointer = "grab",
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = function(o,button,x,y) -- click (on releasing if this object is the currently held object)
				if self._save_settings_callback then 
					self._save_settings_callback()
				end
			end,
			mouse_press_callback = function(o,button,x,y) -- click (on initial press)
				self._mouse_drag_x_start,self._mouse_drag_y_start = x,y
				self._held_object = o
				self._target_drag_x_start,self._target_drag_y_start = panel:position()
			end,
			mouse_release_callback = nil,
			mouse_drag_event_callback = function(o,x,y)
				local d_x = x - self._mouse_drag_x_start
				local d_y = y - self._mouse_drag_y_start
				
				local start_x = self._target_drag_x_start
				local start_y = self._target_drag_y_start
				if self._held_button == ids_mouse1 then
					local bw,bh = o:size()
					local min_x = max_window_hidden_hor_margin - bw
					local min_y = max_window_hidden_ver_margin - bh
					local max_x = parent_panel:w() - max_window_hidden_hor_margin
					local max_y = parent_panel:h() - (bh + max_window_hidden_ver_margin)
					local to_x = math.clamp( start_x + d_x, min_x, max_x )
					local to_y = math.clamp( start_y + d_y, min_y, max_y )
					
					o:set_position(to_x,to_y)
					
					self.inherited_settings.dialog_x = to_x
					self.inherited_settings.dialog_y = to_y
				end
			end
		},
		reset_button = {
			object = reset_button,
			mouseover_pointer = "link",
			drag_pointer = nil,
			mouseover_event_start_callback = nil,
			mouseover_event_stop_callback = nil,
			mouse_click_callback = function(o,button,x,y) --left click (on release)
				_G.Print("TODO")
			end,
			mouse_drag_event_callback = nil
		}
	}
	
	local sorted_ui_objects = {}
	for obj_name,cb_data in pairs(self._ui_objects) do 
		table.insert(sorted_ui_objects,obj_name)
	end
	table.sort(sorted_ui_objects,function(a,b)
		local data_a = self._ui_objects[a]
		local data_b = self._ui_objects[b]
		if data_a.object:layer() > data_b.object:layer() then
			return true
		end
		return false
	end)
	self._sorted_ui_objects = sorted_ui_objects
	
	
	
	
	
end

function HUDPlacementCustomizeDialog:set_input_enabled(enabled)
	local controller = self._controller
	if not self._input_enabled ~= not enabled then
		if enabled then
			--controller:add_trigger("confirm", self._confirm_func)

			if managers.controller:get_default_wrapper_type() == "pc" or managers.controller:get_default_wrapper_type() == "steam" then -- or managers.controller:get_default_wrapper_type() == "vr"
				controller:add_trigger("toggle_menu", self._cancel_func)

				self._mouse_id = managers.mouse_pointer:get_id()
				self._removed_mouse = nil
				local data = {
					mouse_move = callback(self, self, "callback_mouse_moved"),
					mouse_press = callback(self, self, "callback_mouse_pressed"),
					mouse_release = callback(self, self, "callback_mouse_released"),
					--mouse_click = callback(self, self, "callback_mouse_clicked"), --don't use this
					id = self._mouse_id
				}
				self._fullscreen_ws:connect_keyboard(Input:keyboard())
				--self._input_text:key_press(callback(self, self, "callback_key_press"))
				--self._input_text:key_release(callback(self, self, "callback_key_release"))

				
				managers.mouse_pointer:use_mouse(data)
				managers.mouse_pointer:set_pointer_image("arrow")
			else
				self._removed_mouse = nil

				--controller:add_trigger("cancel", self._cancel_func)
				managers.mouse_pointer:disable()
			end
		else
			self._is_holding_mouse_button = false
			self._held_object = nil
			self._target_drag_x_start = nil
			self._target_drag_y_start = nil
			self._mouse_drag_x_start = nil
			self._mouse_drag_y_start = nil
		
			self._fullscreen_ws:disconnect_keyboard()
			--self._panel:key_release(nil)
			--self:release_scroll_bar() --not used
			--controller:remove_trigger("confirm", self._confirm_func)

			if managers.controller:get_default_wrapper_type() == "pc" or managers.controller:get_default_wrapper_type() == "steam" then -- or managers.controller:get_default_wrapper_type() == "vr" then
				controller:remove_trigger("toggle_menu", self._cancel_func)
			else
				--controller:remove_trigger("cancel", self._cancel_func)
			end

			self:remove_mouse()
		end

		self._input_enabled = enabled

		managers.controller:set_menu_mode_enabled(enabled)
	end
end

function HUDPlacementCustomizeDialog:callback_key_press(o,k)
	Print("Press",o,k)
end

function HUDPlacementCustomizeDialog:callback_key_release(o,k)
	Print("Release",o,k)
end

function HUDPlacementCustomizeDialog:show()
	if _G.setup and _G.setup:has_queued_exec() then
		return
	end
	
--	self._input_delay_timer = self.INPUT_IGNORE_DELAY_INTERVAL
	self._parent_panel:show()
	if FreeFlightCamera and FreeFlightCamera._state == 0 then
		FreeFlightCamera._con:disable()
	end
	
	
	self._data.parent._customize_panel:show()
	self:set_input_enabled(true)
--	managers.menu:post_event("prompt_enter") --snd
	self._visible = true
	self._manager:event_dialog_shown(self)
	return true
end

function HUDPlacementCustomizeDialog:hide()
--[[
	if self.inherited_settings.console_pause_game_on_focus and Global.game_settings.single_player then 
		if managers.menu and managers.menu:active_menu() and managers.menu:active_menu().renderer then 
			managers.menu:active_menu().renderer:disable_input(0.01)
			Application:set_pause(false)
			managers.menu:post_event("game_resume")
			SoundDevice:set_rtpc("ingame_sound", 1)
		end
	end
	--]]
	if FreeFlightCamera and FreeFlightCamera._state == 0 then
		FreeFlightCamera._con:enable()
	end
	self:set_input_enabled(false)
	self._key_held_ids = nil
	self._key_held_t = nil
	self._visible = false
	self._parent_panel:hide()
	self._data.parent._customize_panel:hide()
--	managers.menu:post_event("menu_exit")
	self._manager:event_dialog_hidden(self)
end

function HUDPlacementCustomizeDialog:remove_mouse()
	if not self._removed_mouse then
		self._removed_mouse = true

		if managers.controller:get_default_wrapper_type() == "pc" or managers.controller:get_default_wrapper_type() == "steam" or managers.controller:get_default_wrapper_type() == "vr" then
			managers.mouse_pointer:remove_mouse(self._mouse_id)
		else
			managers.mouse_pointer:enable()
		end

		self._mouse_id = nil
	end
end

function HUDPlacementCustomizeDialog:close(...)
	return HUDPlacementCustomizeDialog.super.close(self,...)
--	self._manager:event_dialog_closed(self)
--	self:hide()
--	self:_close_dialog_gui()
--	self.is_active = false
end



function HUDPlacementCustomizeDialog:get_mouseover_target(x,y)

	local ui_objects = self._ui_objects
	for _,id in ipairs(self._sorted_ui_objects) do 
		local data = ui_objects[id]
		local object = data.object
		if alive(object) and object:inside(x,y) then 
			return id,object
		end
	end
	
	return
end

function HUDPlacementCustomizeDialog:callback_mouse_moved(o,x,y)
--	log("moved " .. tostring(x) .. " " .. tostring(y))
	
	--get point-at target
	
	if self._is_holding_mouse_button then 
		
		local held_obj = self._held_object
		if alive(held_obj) then
			local id = held_obj:name()
			local ui_object_data = self._ui_objects[id]
			
			if ui_object_data.mouse_drag_event_callback then 
				ui_object_data.mouse_drag_event_callback(held_obj,x,y)
			end
--			if ui_object_data.pointer then 
--				managers.mouse_pointer:set_pointer_image(ui_object_data.pointer)
--			end
			if ui_object_data.drag_pointer then 
				managers.mouse_pointer:set_pointer_image(ui_object_data.drag_pointer)
			end
			
			
		else
			managers.mouse_pointer:set_pointer_image("arrow")
		end
	else
		local id,mouseover_target = self:get_mouseover_target(x,y)
		local prev_mouseover_object = self._mouseover_object
		if mouseover_target ~= prev_mouseover_object then
			if alive(prev_mouseover_object) then  --stop mouseover event
				local _id = prev_mouseover_object:name()
				local ui_object_data = self._ui_objects[_id]
				assert(ui_object_data,"No ui object data for " .. tostring(_id))
				if ui_object_data.mouseover_event_stop_callback then 
					ui_object_data.mouseover_event_stop_callback(prev_mouseover_object,x,y)
				end
			end
		end
		
		if alive(mouseover_target) then
			local ui_object_data = self._ui_objects[id]
			if mouseover_target ~= prev_mouseover_object then --start mouseover event
				self._mouseover_object = mouseover_target
				if ui_object_data.mouseover_event_start_callback then 
					ui_object_data.mouseover_event_start_callback(mouseover_target,x,y)
				end
			end
			
			if ui_object_data.mouseover_pointer then 
				managers.mouse_pointer:set_pointer_image(ui_object_data.mouseover_pointer)
			else
				managers.mouse_pointer:set_pointer_image("arrow")
			end
		else
			managers.mouse_pointer:set_pointer_image("arrow")
			self._mouseover_object = nil
		end
	end
	
	self._mouse_x = x
	self._mouse_y = y
	--]]
end

function HUDPlacementCustomizeDialog:callback_mouse_pressed(o,button,x,y)
--	log("pressed  " .. tostring(x) .. " " .. tostring(y))
	
	if button == ids_mouse1 or button == ids_mouse2 then
		if not self._held_button then
			self._held_button = button
		
			self._is_holding_mouse_button = true
			local id,mouseover_target = self:get_mouseover_target(x,y)
			Print("Clicking",id)
			--drag start (can be overridden by object-specific callbacks)
			self._mouse_drag_x_start = x
			self._mouse_drag_y_start = y
			self._target_drag_x_start = x
			self._target_drag_y_start = y
			self._held_object = mouseover_target
			
			if mouseover_target then
				local ui_object_data = self._ui_objects[id]
				if ui_object_data.mouse_press_callback then
					ui_object_data.mouse_press_callback(mouseover_target,button,x,y)
				end
			end
		end
		--[[
	elseif button == Idstring("mouse wheel up") then 
		--scroll up
		local direction = self:is_scrollwheel_direction_reversed() and -1 or 1
		local mul = self.inherited_settings.input_mousewheel_scroll_speed
		self:perform_vscroll_amount(direction * mul * self.inherited_settings.window_font_size)
	elseif button == Idstring("mouse wheel down") then 
		local direction = self:is_scrollwheel_direction_reversed() and 1 or -1
		local mul = self.inherited_settings.input_mousewheel_scroll_speed
		self:perform_vscroll_amount(direction * mul * self.inherited_settings.window_font_size)
		--scroll down
		--]]
	end
end

function HUDPlacementCustomizeDialog:callback_mouse_released(o,button,x,y)
--	log("released  " .. tostring(x) .. " " .. tostring(y))
	if  button == self._held_button then
		
		local held_object = self._held_object
		if alive(held_object) then
			local id,mouseover_target = self:get_mouseover_target(x,y)
			if id then
				local ui_object_data = self._ui_objects[id]
				if mouseover_target == held_object then 
					if ui_object_data.mouse_click_callback then
--						log("leftclick  " .. tostring(x) .. " " .. tostring(y))
						ui_object_data.mouse_click_callback(mouseover_target,button,x,y)
					end
				end
				
				if ui_object_data.mouse_release_callback then
					ui_object_data.mouse_release_callback(mouseover_target,button,x,y)
				end
				
				if ui_object_data.mouseover_pointer then 
					managers.mouse_pointer:set_pointer_image(ui_object_data.mouseover_pointer)
				else
					managers.mouse_pointer:set_pointer_image("arrow")
				end
			end
		end
		self._is_holding_mouse_button = false
		self._held_object = nil
		self._target_drag_x_start = nil
		self._target_drag_y_start = nil
		self._mouse_drag_x_start = nil
		self._mouse_drag_y_start = nil
		self._target_drag_cx_start,self._target_drag_cy_start = nil,nil
		self._target_drag_w_start,self._target_drag_h_start = nil,nil
		self._target_drag_x2_start,self._target_drag_y2_start = nil,nil
		
		self._held_button = nil
	end
end


function HUDPlacementCustomizeDialog:visible()
	return self._visible
end


if false then
function HUDPlacementCustomizeDialog:callback_mouse_clicked(o,button,x,y) --don't use this, as pd2's click detection is too lax
--	log("Mouse clicked")
	--[[
		--this callback is called whenever the mouse is released after clicking.
		--but it isn't capable of checking whether the mouseover object is the same one from when the mouse was pressed.
		--and by definition a mouse must always first press before releasing. that is how clicks work.
		--also it's executed after release instead of before.
		--so it's completely worthless to me. 
		
	if button == Idstring("0") then 
		local id,mouseover_target = self:get_mouseover_target(x,y)
		if id then
			local ui_object_data = self._ui_objects[id]
			if ui_object_data.mouse_left_click_callback then
				ui_object_data.mouse_left_click_callback(mouseover_target,x,y)
			end
		end	
	end
	--]]
end


function HUDPlacementCustomizeDialog:on_key_press(k,held)
--[[
	local focused_text = self._focused_text
	if not alive(focused_text) then 
		return
	end
	local is_input_focused = self._input_text == focused_text
	local is_writable = self:is_focused_text_writable()
	local input_text = self._input_text
	local current_text = focused_text:text()
	
	local s,e = focused_text:selection()
	if not (s and e) then 
		focused_text:set_selection(0,0)
		s,e = focused_text:selection()
	end
	local shift_held = self:key_shift_down()
	local ctrl_held = self:key_ctrl_down()
	local alt_held = self:key_alt_down()
	if k == Idstring("enter") or k == Idstring("return") then
		self:set_current_history_input_text(current_text)
		self:confirm_text()
	elseif k == Idstring("`") and not shift_held then 
	elseif k == Idstring("z") and ctrl_held then 
		--todo
	elseif k == Idstring("x") and ctrl_held then
		if is_writable and (s ~= e) then
			Application:set_clipboard(string.sub(current_text,s+1,e+1))
			focused_text:replace_text("")
			focused_text:set_selection(s,s)
		end
	elseif k == Idstring("c") and ctrl_held then
		if s ~= e then
			--copy selection to clipboard, 
			Application:set_clipboard(string.sub(current_text,s+1,e+1))
			--success feedback?
		end
		self:reset_caret_blink_t()
	elseif k == Idstring("v") and ctrl_held then
		local clipboard = Application:get_clipboard()
		if clipboard and is_writable then
			focused_text:replace_text(tostring(clipboard))
		end
		self:reset_caret_blink_t()
		self:set_current_history_input_text(current_text)
	elseif k == Idstring("home") then 
		if shift_held then
			if self._selection_dir == -1 then 
				direction = s
			else
				direction = e
			end
			focused_text:set_selection(0,direction)
		else
			focused_text:set_selection(0, 0)
		end
		self._selection_dir = -1
	elseif k == Idstring("end") then 
		local current_len = string.len(current_text)
		if shift_held then
			if self._selection_dir == -1 then 
				direction = s
			else
				direction = e
			end
			focused_text:set_selection(direction,current_len)
		else
			focused_text:set_selection(current_len,current_len)
		end
		self._selection_dir = 1
	elseif k == Idstring("left") then
		if shift_held then 
			if s == e then 
				self._selection_dir = -1
			end

		--elseif control_held then find next space/char
			if (s > 0) and (self._selection_dir < 0) then -- forward select (increase selection)
				focused_text:set_selection(s-1,e)
			elseif (e > 0) and (self._selection_dir > 0) then --backward select (decrease selection) 
				focused_text:set_selection(s,e-1)
			end
		else --move caret
			if (s < e) then --cancel selection and move caret left
				focused_text:set_selection(s,s)
			elseif (s > 0) then --else if no selection then keep caret left
				focused_text:set_selection(s - 1, s - 1)
			end
		end
		self:reset_caret_blink_t()
	elseif k == Idstring("right") then
		local current_len = string.len(current_text)
		if ctrl_held then 
			local pattern
			local direction
			if self._selection_dir == -1 then 
				direction = s
			else
				direction = e
			end
			local current_char = string.sub(current_text,direction,direction)
			
			local space_index = string.find(current_char,"%s")
			if space_index then
				pattern = "^%s"
			else
				local alphanum_index = string.find(current_char,"%w") 
				if alphanum_index then
					--if currently at alphanumeric char(s), look for things that aren't that
					pattern = "^%w"
				else
					local punct_index = string.find(current_char,"%p")
					--same for punctuation
					if punct_index then
						pattern = "^%p"
					end
				end
--				string.find("asdkfjdlasdkjflakdfj  239847293847 (*#$&@$(*# &$( kjsdhfksjdh fK*(#@IHFIDS& *")
			end
			if pattern then
				local next_space_index_start,next_space_index_end = string.find(current_text,pattern,direction)
				if next_space_index_start then 
					if self._selection_dir == -1 then 
						focused_text:set_selection(s,next_space_index_start)
					else
						focused_text:set_selection(next_space_index_start,e)
					end
				end
			end
		end
		
		if shift_held then 
			if (s == e) then --if no selection then set direction right
				self._selection_dir = 1
			end
			if (e < current_len) and (self._selection_dir > 0) then --forward select (increase selection)
				focused_text:set_selection(s,e + 1)
			elseif (e > s) and (self._selection_dir < 0) then --backward select (decrease selection)
				focused_text:set_selection(s + 1,e)	
			end
		else
			if s < e then --cancel selection and keep caret right
				focused_text:set_selection(e,e)
			elseif s < current_len then --move caret right
				focused_text:set_selection(s + 1, s + 1)
			end
		end
		self:reset_caret_blink_t()
	elseif k == Idstring("down") then
		--newer history
		if is_input_focused then
			local num_input_log = #self._input_log
			if num_input_log > 0 then
				local new_text
				if self._input_history_index == 0 then 
					self:set_current_history_input_text(current_text)
				end
				local history_index = (1 + self._input_history_index) % (num_input_log + 1)
				if history_index == 0 then 
					new_text = self._current_input_text_string
				else
					focused_text:set_alpha(0.5)
					new_text = self._input_log[history_index].input
				end
				self._input_history_index = history_index
				if new_text then
					focused_text:set_text(new_text)
					local new_len = string.len(new_text)
					focused_text:set_selection(new_len,new_len)
				end
			end
		end
		
		self:reset_caret_blink_t()
	elseif k == Idstring("up") then
		--older history
		if is_input_focused then
			local num_input_log = #self._input_log
			if num_input_log > 0 then
				local new_text
				if self._input_history_index == 0 then 
					self:set_current_history_input_text(current_text)
				end
				
				local history_index = (-1 + self._input_history_index) % (num_input_log + 1)
				if history_index == 0 then 
					new_text = self._current_input_text_string
				else
					focused_text:set_alpha(0.5)
					new_text = self._input_log[history_index].input
				end
				self._input_history_index = history_index
				if new_text then
					focused_text:set_text(new_text)
					local new_len = string.len(new_text)
					focused_text:set_selection(new_len,new_len)
				end
			end
		end
		
		self:reset_caret_blink_t()
	elseif k == Idstring("a") and ctrl_held then 
		local current_len = string.len(current_text)
		focused_text:set_selection(0,current_len)
		self:reset_caret_blink_t()
	elseif k == Idstring("backspace") then --delete selection or text character behind caret
		if is_writable then
			self:set_current_history_input_text(current_text)
			local current_len = string.len(current_text)
			if s == e and s > 0 then
				focused_text:set_selection(s - 1, e)
			end
			focused_text:replace_text("")
		end
		self:reset_caret_blink_t()
	elseif k == Idstring("delete") then --delete selection or text character after caret
		if is_writable then
			self:set_current_history_input_text(current_text)
			
			if not shift_held then
				local current_len = string.len(current_text)
				if s == e and s < current_len then
					focused_text:set_selection(s, e + 1)
				end
			end
			focused_text:replace_text("")
		end
		self:reset_caret_blink_t()
	elseif k == Idstring("page up") then 
		local direction = self:is_scrollbar_direction_reversed() and 1 or -1
		self:perform_scroll_page(direction)
		
		--do scroll
	elseif k == Idstring("page down") then 
		local direction = self:is_scrollbar_direction_reversed() and -1 or 1
		self:perform_scroll_page(direction)
		--do scroll
	end
	--]]
end

function HUDPlacementCustomizeDialog:callback_key_press(o,k)
	self._key_held_ids = k
	self._key_held_t = self.INPUT_REPEAT_INTERVAL_INITIAL
	self:on_key_press(k,false)
end

function HUDPlacementCustomizeDialog:callback_key_release(o,k)
	if k == self._key_held_ids then
		self._key_held_ids = nil
		self._key_held_t = nil
	end
end






function ConsoleModDialog:force_close()
	self._manager:event_dialog_closed(self)
--	self:close()
	self._panel:hide()
	self.is_active = false
	self:_close_dialog_gui()
--	Dialog.force_close(self)
end

function ConsoleModDialog:_hide_dialog_gui()
	self._panel:hide()
	managers.viewport:remove_resolution_changed_func(self._resolution_changed_callback)
end


function ConsoleModDialog:remove_mouse()
	if not self._removed_mouse then
		self._removed_mouse = true

		if managers.controller:get_default_wrapper_type() == "pc" or managers.controller:get_default_wrapper_type() == "steam" or managers.controller:get_default_wrapper_type() == "vr" then
			managers.mouse_pointer:remove_mouse(self._mouse_id)
		else
			managers.mouse_pointer:enable()
		end

		self._mouse_id = nil
	end
end
function ConsoleModDialog:resolution_changed_callback()
--	log("resolution changed")
--	self:resize_panel(self.inherited_settings.window_w,self.inherited_settings.window_h)
end
function ConsoleModDialog:button_pressed_callback()
	--self:confirm_text()
--	self:remove_mouse()
--	self:button_pressed(self._panel_script:get_focus_button())
end
function ConsoleModDialog:dialog_cancel_callback() --not really used?
--	log("Cancel")
	self:hide()
	if #self._data.button_list == 1 then
		self:remove_mouse()
--		self:button_pressed(1)
	end

	for i, btn in ipairs(self._data.button_list) do
		if btn.cancel_button then
			self:remove_mouse()
--			self:button_pressed(i)

			return
		end
	end
end

end






















return HUDPlacementCustomizeDialog