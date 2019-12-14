extends Area2D

func _physics_process(delta):
	global_position += Vector2(300, 0).rotated(rotation)*delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
