extends PanelContainer
@onready var option_button: OptionButton = $HBoxContainer/OptionButton

func _ready():
	match DisplayServer.window_get_vsync_mode():
		DisplayServer.VSYNC_DISABLED:
			option_button.select(0)
		DisplayServer.VSYNC_ENABLED:
			option_button.select(1)
		DisplayServer.VSYNC_ADAPTIVE:
			option_button.select(2)
		DisplayServer.VSYNC_MAILBOX:
			option_button.select(3)

func _on_option_button_item_selected(index: int) -> void:
	match index:
		0:
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		1:
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
		2:
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ADAPTIVE)
		3:
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_MAILBOX)
