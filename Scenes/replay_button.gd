extends TextureButton

var indexz = z_index
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 0
	position.y = 0
	hide()
	
	Autoload.game_over.connect(replay_button_appear)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func replay_button_appear():
	print("replay")
	show()
	
	
	


func _on_pressed() -> void:
	get_tree().reload_current_scene()
	Autoload.can_move = true
