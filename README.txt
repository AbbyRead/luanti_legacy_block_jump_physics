 Luanti mod: Legacy Block Jump Physics
============================
This mod, like the sneak_glitch mod re-enables legacy player physics.
In this case, it enables upward_rejump and upward_step.  

upward_rejump:
	The behavior of being able to jump while jumping already if you connect
	with a jumpable surface.  So, if you clip an edge while holding jump,
	you go immediately into another jump, despite not actually landing yet.

upward_step:
	Snapping to the surface of a block while jumping if you're a fifth of
	the way up the side of it (0.2f * BS).  I find this visually jarring, 
	but it can have some actual benefit to mobility.


License: CC0
Dependencies: (none)


 Old sneak behaviour
----------------------
If you dislike the new block jumping physics, add the following setting
to your minetest.conf file:

  upward_rejump.use_old_code = true
  upward_step.use_old_code = true

In case you used the ingame command `/set` to do this change,
rejoin the world in order to apply the new settings for this mod.


 Credits
----------
This mod's structure was largely plagiarized (with implicit permission) from:
https://github.com/SmallJoker/sneak_glitch