extends Node2D

@onready var timer = $Timer
var pipe = preload("res://Scenes/pipe.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("spawned2")
	timer.wait_time = 3.5
	timer.start
	timer.timeout.connect(pipe_spawner)
	print("spawned")
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func pipe_spawner():
	var pipe_instance = pipe.instantiate()
	add_child(pipe_instance)
