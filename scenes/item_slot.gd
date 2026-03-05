extends Panel

@onready var icon: TextureRect = $Icon
var draggable = false
var is_inside_dropable = false
var body_ref

func _get_drag_data(at_position: Vector2) -> Variant:
	if icon.texture == null:
		return
	
	var preview = duplicate()
	var c = Control.new()
	c.add_child(preview)
	preview.position -= Vector2(50,50)
	preview.scale = Vector2(0.8, 0.8)
	preview.self_modulate = Color.TRANSPARENT
	c.modulate = Color(c.modulate, 0.5)
	set_drag_preview(c)
	return icon

func _on_icon_mouse_entered() -> void:
	if not global.is_dragging:
		draggable = true
		scale = Vector2(1.05, 1.05)

func _on_icon_mouse_exited() -> void:
	if not global.is_dragging:
		draggable = false
		scale = Vector2(1.0, 1.00)
	pass # Replace with function body.
	
func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true
	
