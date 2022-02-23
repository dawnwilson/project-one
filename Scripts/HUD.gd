extends CanvasLayer


onready var p1Health = $HBoxContainer/P1HealthLabel
onready var p2Health = $HBoxContainer/P2HealthLabel


func _ready() -> void:
	Events.connect("reduceHealth", self, "updateUI")


func updateUI(playerNum: int) -> void:
	if playerNum == 1:
		p1Health.text = "P1 Lives: 0%d" % [Health.playerHealth[1]]
	if playerNum == 2:
		p2Health.text = "P2 Lives: 0%d" % [Health.playerHealth[2]]
