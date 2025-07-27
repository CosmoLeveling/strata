class_name Drill
extends Node3D
signal button_clicked
@onready var anim: AnimationPlayer = $AnimatableBody3D/AnimationPlayer
@onready var player_spawn: Marker3D = $PlayerSpawn
@onready var ore_detector: Area3D = $OreDetector
@onready var task: Label = $SubViewport/CanvasLayer/Control/ColorRect/VBoxContainer/Label
@onready var complete: Label = $SubViewport/CanvasLayer/Control/ColorRect/VBoxContainer/Label3

@export var open = true

func _physics_process(_delta: float) -> void:
	var amount = 0
	for c in ore_detector.get_overlapping_bodies():
		if c is OrePickupable:
			if c.ore == Ores.ores.Uranium:
				amount+=1
	complete.text = str(amount)

func _open_close():
	if open:
		open=false
		anim.play_backwards("open")
	else:
		open=true
		anim.play("open")


func _on_interaction_area_interact() -> void:
	button_clicked.emit()
