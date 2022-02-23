extends Node


var playerHealth: Dictionary = {"1": 3, "2": 3}


func _ready() -> void:
	playerHealth[1] = 3
	playerHealth[2] = 3


func reduceHealth(playerNum: int) -> void:
	playerHealth[playerNum] -= 1
	Events.emit_signal("reduceHealth", playerNum)
	if playerHealth[playerNum] == 0:
		# Go to End Game Screen!
		pass


# FOR TESTING ONLY
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("die"):
		reduceHealth(1)
