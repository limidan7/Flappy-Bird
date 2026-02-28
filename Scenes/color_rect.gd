extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	Autoload.game_over.connect(dark_screen)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func dark_screen():
	show()
