extends Button


func _ready() -> void:
	connect("pressed", self, "onButtonPressed")


func onButtonPressed() -> void:
	get_tree().quit()
