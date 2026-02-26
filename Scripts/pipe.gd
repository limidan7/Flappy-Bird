extends StaticBody2D

const movespeed = -150
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = randf_range(0, 160)
	position.x = 800
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Score.can_move == true:
		position.x += movespeed*delta


	


func _on_upper_pipe_body_entered(body: Node2D) -> void:
	if body is Bird:
		Score.can_move = false
		body.die()
		


func _on_lower_pipe_body_entered(body: Node2D) -> void:
		if body is Bird:
			Score.can_move = false
			body.die()
