extends PanelContainer
@onready var label: Label = $HBoxContainer/Label
@onready var h_slider: HSlider = $HBoxContainer/HSlider

func _ready() -> void:
	h_slider.value = Engine.max_fps

func _process(_delta: float) -> void:
	if Engine.max_fps == 0:
		label.text = "unlimited"
	else:
		label.text = str(Engine.max_fps)

func _on_h_slider_value_changed(value: float) -> void:
	if int(value) == 257:
		Engine.max_fps = 0
	else:
		Engine.max_fps = floor(value)
