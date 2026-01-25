extends Panel

@onready var icon: TextureRect = $Icon

func _get_drag_data(at_position: Vector2) -> Variant:
	if icon.texture == null:
		return
	
	var preview = duplicate()
	var c = Control.new()
	c.add_child(preview)
	preview.position -= Vector2(50,50)
	preview.scale = Vector2(0.5, 0.5)
	preview.self_modulate = Color.TRANSPARENT
	c.modulate = Color(c.modulate, 0.5)
	set_drag_preview(c)
	return icon

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	pass
