extends Label
var str_label = str(Autoload.Game_Score)
@onready var game_over_variable : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Autoload.game_over.connect(game_over_text)
	text = str(Autoload.Game_Score )


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		if game_over_variable == false:
			text = str(Autoload.Game_Score )
	
func game_over_text():
	game_over_variable = true
	print(str(Autoload.Game_Score))
	text = "GAMEOVER \n Your score was " + str(Autoload.Game_Score)
	
