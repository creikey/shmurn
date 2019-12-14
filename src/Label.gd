extends Label

func _ready():
	text = str(stepify(GameState.score, 0.1), "\nDead.\n", "Click or press enter to continue")

func _input(event):
	if event.is_action_pressed("g_continue"):
		get_tree().change_scene("res://Main.tscn")
