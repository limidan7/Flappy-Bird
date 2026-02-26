extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Autoload.game_over.connect(game_over_text)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func game_over_text():
	print("GameOVER")
	text = "GameOver"
