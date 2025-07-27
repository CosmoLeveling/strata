extends Node

var gameData:SaveGame
var task = "test"
var next_scene = "res://Scenes/main_scenes/team_hub.tscn"
var pause_menu: bool = false

func _input(event: InputEvent) -> void:
	if pause_menu:
		if event.is_action_pressed("pause"):
			MainCanvas.find_child("PauseMenu").visible = true
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			get_tree().paused = true
