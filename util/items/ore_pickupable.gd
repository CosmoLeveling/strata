class_name OrePickupable
extends PickupableItem
var ore:Ores.ores
@onready var rock: MeshInstance3D = $blank_ore_drop/rock

func _ready() -> void:
	var mat:StandardMaterial3D = rock.get_surface_override_material(0).duplicate()
	mat.albedo_color = Ores.get_color_for_ore(ore)
	rock.set_surface_override_material(0,mat)
