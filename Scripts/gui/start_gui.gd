extends Control

func _on_singleplayer_pressed() -> void:
	MainCanvas.find_child("GameChooseMenu").visible = true
	visible = false


func _on_button_pressed() -> void:
	MainCanvas.find_child("OptionsMenu").visible = true
	MainCanvas.find_child("OptionsMenu").start = true
	visible = false
