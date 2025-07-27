extends Control


func _on_resume_game_pressed() -> void:
	visible=false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	get_tree().paused = false


func _on_options_pressed() -> void:
	visible = false
	MainCanvas.find_child("OptionsMenu").start = false
	MainCanvas.find_child("OptionsMenu").visible = true
