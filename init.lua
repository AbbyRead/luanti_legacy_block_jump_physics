-- Enable the old player block jump physics (huzzah!)

local _upward_rejump = core.settings:get_bool("upward_rejump.use_old_code")
if _upward_rejump == nil then
	-- Default to the new block jump physics code
	_upward_rejump = false
end

core.register_on_joinplayer(function(player)
	player:set_physics_override({
		upward_rejump = _upward_rejump,
		loose_lips = _loose_lips,
		new_move = not use_old_code
	})
end)
