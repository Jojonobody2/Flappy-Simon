extends Node2D

func _process(delta):
	global_position.x -= 420 * delta * Global.speed
	
	if global_position.x < -40:
		global_position.x = 1340
		global_position.y = rand_range(-180, 180)
	
	if(Global.hard):
		Global.speed += delta * 0.01
