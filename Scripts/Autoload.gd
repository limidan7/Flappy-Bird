extends Node

var Game_Score := 0
var can_move : bool = true
signal game_over()
# Called when the node enters the scene tree for the first time.
func _game_over() -> void:
	game_over.emit()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
