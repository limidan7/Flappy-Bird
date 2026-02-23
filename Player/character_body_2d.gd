extends CharacterBody2D

@export var gravity: float = 1750
@export var jump_force: float = -500
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 35
	rotation_degrees = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	position.x = 35
	$AnimatedSprite2D.play("Flying")
	
	
	
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = jump_force
		
		
		
	move_and_slide()
