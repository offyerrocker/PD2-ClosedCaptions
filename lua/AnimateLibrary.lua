local AnimateLibrary = {}

function AnimateLibrary.animate_wait(o,duration,cb,...)
	wait(duration or 0)
	if cb then
		o:animate(cb,...)
	end
end

function AnimateLibrary.animate_color_lerp(o,cb,duration,from_color,to_color)
	duration = duration or 1
	
	from_color = from_color or o:color()
	to_color = to_color or o:color()
	
	local t,dt = 0,0
	while t < duration do 
		o:set_color(from_color + (to_color-from_color) * math.bezier({0,0,1,1}, t/duration))
		dt = coroutine.yield()
		t = t + dt
	end
	o:set_color(to_color)
	if cb then
		cb(o)
	end
end
function AnimateLibrary.animate_alpha_lerp(o,cb,duration,from_alpha,to_alpha)
	duration = duration or 1
	
	from_alpha = from_alpha or o:alpha()
	to_alpha = to_alpha or o:alpha()
	local d_alpha = to_alpha - from_alpha
	
	local t,dt = 0,0
	while t < duration do 
		o:set_alpha(from_alpha + d_alpha * math.bezier({0,0,1,1}, t/duration))
		dt = coroutine.yield()
		t = t + dt
	end
	o:set_alpha(to_alpha)
	if cb then
		cb(o)
	end
end

-- pulses forever, until stopped
function AnimateLibrary.animate_color_oscillate(o,speed,color_1,color_2)
	local d_color = color_2 - color_1
	local t = 0
	speed = speed * 180 -- speed becomes seconds/period
	while true do 
		local s = math.sin(speed*t)
		o:set_color(color_1 + d_color*s*s)
		t = t + coroutine.yield()
	end
--	o:set_color(color_2)
end

-- pulses forever, until stopped
function AnimateLibrary.animate_alpha_oscillate(o,speed,alpha_1,alpha_2)
	local d_alpha = alpha_2 - alpha_1
	local t = 0
	speed = speed * 180 -- speed becomes seconds/period
	while true do 
		local s = math.sin(speed*t)
		o:set_color(alpha_1 + d_alpha*s*s)
		t = t + coroutine.yield()
	end
end

-- grow height, align to bottom
function AnimateLibrary.animate_grow_h_bottom(o,cb,duration,from_h,to_h)
	local bottom = o:bottom()
	from_h = from_h or o:h()
	local dh = to_h - from_h
	
	local t,dt = 0,0
	while t < duration do 
		o:set_h(from_h + dh * math.bezier({0,0,1,1}, t/duration))
		o:set_bottom(bottom)
		dt = coroutine.yield()
		t = t + dt
	end
	o:set_h(to_h)
	o:set_bottom(bottom)
	if cb then 
		cb(o)
	end
end

-- grow height, align to top (should be the same as grow normal)
function AnimateLibrary.animate_grow_h_top(o,cb,duration,from_h,to_h)
	local top = o:top()
	from_h = from_h or o:h()
	local dh = to_h - from_h
	local t,dt = 0,0
	while t < duration do 
		o:set_h(from_h + dh * math.bezier({0,0,1,1}, t/duration))
		o:set_top(top)
		dt = coroutine.yield()
		t = t + dt
	end
	o:set_h(to_h)
	o:set_top(top)
	if cb then 
		cb(o)
	end
end

-- grow width, align to right
function AnimateLibrary.animate_grow_w_right(o,cb,duration,from_w,to_w)
	local right = o:right()
	from_w = from_w or o:w()
	local dw = to_w - from_w
	local t,dt = 0,0
	while t < duration do 
		o:set_w(from_w + dw * math.bezier({0,0,1,1}, t/duration))
		o:set_right(right)
		dt = coroutine.yield()
		t = t + dt
	end
	o:set_w(to_w)
	o:set_right(right)
	if cb then 
		cb(o)
	end
end

function AnimateLibrary.animate_grow_w_left(o,cb,duration,from_w,to_w)
	local left = o:left()
	from_w = from_w or o:w()
	local dw = to_w - from_w
	local t,dt = 0,0
	while t < duration do 
		o:set_w(from_w + dw * math.bezier({0,0,1,1}, t/duration))
		o:set_left(left)
		dt = coroutine.yield()
		t = t + dt
	end
	o:set_w(to_w)
	o:set_left(left)
	if cb then 
		cb(o)
	end
end

function AnimateLibrary.animate_move_lerp(o,cb,duration,to_x,to_y,from_x,from_y)
	local dx,dy
	if to_x then
		from_x = from_x or o:x()
		dx = to_x - from_x
	end
	if to_y then
		from_y = from_y or o:y()
		dy = to_y - from_y
	end
	local bez = {0,0,1,1}
	local t,dt = 0,0
	while t < duration do
		local progress = t/duration
		if dx then
			o:set_x(from_x + dx * math.bezier(bez, progress))
		end
		if dy then
			o:set_y(from_y + dy * math.bezier(bez, progress))
		end
		dt = coroutine.yield()
		t = t + dt
	end
	
	if dx then
		o:set_x(to_x)
	end
	if dy then
		o:set_y(to_y)
	end
	
	if cb then 
		cb(o)
	end
end

function AnimateLibrary.animate_text_gradual(o,cb,duration,text)
	o:set_text("")
	local num_chars = string.len(text) -- use utf8?
	if num_chars == 0 then
		o:set_text(text)
		return
	end
	local t = 0
	while t < duration do 
		o:set_text(string.sub(text,1,math.round(num_chars * t/duration)))
		t = t + coroutine.yield()
	end
	o:set_text(text)
	if cb then
		cb(o)
	end
end


-- recreation of the gameover text in hl2 that appears when you reach a non-death gameover/fail condition- eg. "mission-critical personnel" npc like Barney dying
-- similar to animate_text_gradual with a few key differences: 
-- it colors the text via color ranges as the text appears,
-- and the text is technically all placed at once, just invisible and gradually revealed-
-- this means that the individual characters won't move as the animation progress like they would with animate_text_gradual.

-- total_duration is the total length of the animation,
-- col_1 is the primary color,
-- col_2 is the "fresh ink" color, which text is initially colored as it appears
-- trail_len is the number of characters
function AnimateLibrary.animate_text_mission(o,cb,text,total_duration,col_1,col_2,trail_len)
	text = text or o:text()
	o:set_text(text)
	local num_chars = string.len(text) -- use utf8?
	if num_chars == 0 then
		return
	end
	
	total_duration = total_duration or (num_chars / 35) -- if none given, assume a rate based on number of chars- 35 char/sec
	trail_len = trail_len or 15
	
	local invis_color = col_1:with_alpha(0)
	o:set_range_color(0,num_chars+1,invis_color)
	
	local duration = total_duration / (1 + (trail_len/num_chars))
	local hold_duration = total_duration - duration
--	local total_duration = duration + (duration * trail_len / num_chars) -- formula for getting subdurations from total duration

	local trail_colors = {}
	local d_col = col_1 - col_2
	for i=1,trail_len,1 do 
		trail_colors[i] = col_2 + (d_col * i/trail_len)
	end
	local t = 0
	while t < total_duration do 
		local current_num_chars = math.round(num_chars * t/duration)
		-- animate color trail
		if current_num_chars > 0 then
			
			for i=trail_len,1,-1 do 
				local trail_upper = current_num_chars - i
				if trail_upper <= current_num_chars then
					if trail_colors[i] then
						o:set_range_color(trail_upper,trail_upper+1,trail_colors[i])
					end
				end
			end
			
			-- clear the character just behind the trail
			local behind_trail = -1 + current_num_chars - trail_len
			if behind_trail > 0 then
				o:clear_range_color(behind_trail-1,behind_trail)
			end
		end
		t = t + coroutine.yield()
	end
	
	o:clear_range_color(0,num_chars+1)
	o:set_text(text)
	if cb then
		cb(o)
	end
end


function AnimateLibrary.animate_timer(o,cb,duration,format_str)
	format_str = format_str or "%i"
	repeat
		o:set_text(string.format(format_str,duration))
		duration = duration - coroutine.yield()
	until duration <= 0
	o:set_text(string.format(format_str,0))
	if cb then
		cb(o)
	end
end

return AnimateLibrary