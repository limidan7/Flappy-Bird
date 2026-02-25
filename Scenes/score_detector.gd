extends Area2D



func _on_area_entered(area: Area2D) -> void:
	Score.Game_Score += 1
	print(Score.Game_Score)
	
