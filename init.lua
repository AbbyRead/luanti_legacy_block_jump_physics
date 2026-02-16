-- Enable the old player block jump physics (huzzah!)

local _upward_rejump = core.settings:get_bool("upward_rejump.use_old_code")
if _upward_rejump == nil then
	_upward_rejump = false
end

local _loose_lips = core.settings:get_bool("loose_lips.use_old_code")
if _loose_lips == nil then
	_loose_lips = false
end

core.register_on_joinplayer(function(player)
	player:set_physics_override({
		upward_rejump = _upward_rejump,
		loose_lips = _loose_lips
	})
end)
