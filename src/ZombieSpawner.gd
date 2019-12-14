extends Node2D

var counter: float = 0.0

func _ready():
	randomize()

func _process(delta):
	counter += delta
	if counter >= 0.05:
		var cur_zombie: Node2D = preload("res://Zombie.tscn").instance()
		add_child(cur_zombie)
		var max_size: float = 1000
		cur_zombie.global_position = Vector2(max_size*2.0, 0).rotated(rand_range(0, 2*PI))
		cur_zombie.rotation = cur_zombie.global_position.angle_to_point(get_global_mouse_position())+PI
		counter = 0.0
