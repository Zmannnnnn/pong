extends Label
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	score = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_players_goal_body_entered(body: Node2D) -> void:
	score += 1
	$OpponentScore.text = score
