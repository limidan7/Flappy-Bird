extends Area2D

var collision_count = 0 


	
	


func _on_body_entered(body: Node2D) -> void:
	if collision_count < 1:
		if body is Bird:
			print("collision detected")
			Score.Game_Score += 1
			collision_count += 1
		
