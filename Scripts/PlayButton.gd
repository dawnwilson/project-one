extends Button


func _ready() -> void:
	grab_focus()
	connect("pressed", self, "onButtonPressed")


func onButtonPressed() -> void:
	get_tree().change_scene("res://Scenes/Game.tscn")
