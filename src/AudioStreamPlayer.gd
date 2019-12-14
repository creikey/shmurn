extends AudioStreamPlayer

func _ready():
	play(GameState.audio_position)


func _on_AudioStreamPlayer_tree_exiting():
	GameState.audio_position = get_playback_position()
