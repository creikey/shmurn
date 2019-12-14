extends Area2D

func _physics_process(delta):
	var horizontal: float = float(Input.is_action_pressed("g_right")) - float(Input.is_action_pressed("g_left"))
	var vertical: float = -float(Input.is_action_pressed("g_up")) + float(Input.is_action_pressed("g_down"))
	
	rotation = Vector2(horizontal, vertical).angle()
	
	global_position += Vector2(horizontal, vertical)*400.0*delta
	global_position.x = clamp(global_position.x, 0.0, get_viewport().size.x)
	global_position.y = clamp(global_position.y, 0.0, get_viewport().size.y)
