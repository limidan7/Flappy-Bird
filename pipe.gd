extends StaticBody2D

const movespeed = -25
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = randf_range(0, 160)
	position.x = 800
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
