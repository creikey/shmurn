extends Label

func _ready():
	GameState.score = 0.0

func _process(delta):
	GameState.score += delta
	text = str(stepify(GameState.score, 0.1))
