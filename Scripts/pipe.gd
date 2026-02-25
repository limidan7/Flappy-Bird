extends CharacterBody2D

const movespeed = -100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = randf_range(0, 160)
	position.x = 800
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity.x = movespeed


	move_and_slide()
