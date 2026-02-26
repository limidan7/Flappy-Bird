class_name Bird extends CharacterBody2D
@export var can_click: bool = true
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
	
	

	if can_click == true:
		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = jump_force
			$AnimatedSprite2D.play("Flying")
	
		
		
		
	move_and_slide()

func die():
	can_click = false
	$AnimatedSprite2D.play("Death")
	Autoload.game_over.emit()
	
	gravity = 1500
