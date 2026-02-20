-- Enable the old player block jump physics (huzzah!)

local _upward_rejump = core.settings:get_bool("upward_rejump.use_old_code")
if _upward_rejump == nil then
	_upward_rejump = false
end

local _upward_step = core.settings:get_bool("upward_step.use_old_code")
if _upward_step == nil then
	_upward_step = false
end

core.register_on_joinplayer(function(player)
	player:set_physics_override({
		upward_rejump = _upward_rejump,
		upward_step = _upward_step
	})
end)
