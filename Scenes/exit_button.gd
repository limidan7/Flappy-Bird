extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 0
	position.y = 130
	hide()
	
	Autoload.game_over.connect(exit_button_appear)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
	
func exit_button_appear():
	print("exit button here")
	show()


func _on_pressed() -> void:
	get_tree().quit()
