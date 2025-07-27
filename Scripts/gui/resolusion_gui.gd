extends Control

func _on_scale_text_submitted(new_text: String) -> void:
	get_viewport().scaling_3d_scale = int(new_text)
