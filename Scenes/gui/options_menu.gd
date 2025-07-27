extends Control

var start: bool = false

func _on_button_pressed() -> void:
	if start:
		MainCanvas.find_child("StartGui").visible = true
	else:
		MainCanvas.find_child("PauseMenu").visible = true
	visible = false
