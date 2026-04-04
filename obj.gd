extends Sprite2D
var dragging = false
var offSet = Vector2i.ZERO
var rotating = false
var rotationSpeed = 0.9
@onready var trashSound = $"../trash"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dragging:
		global_position = get_global_mouse_position() - offSet
	elif rotating:
		if global.rotate:
			rotate(rotationSpeed * delta)
		elif global.rotateccw:
			rotate(-rotationSpeed * delta)

func _on_button_button_down() -> void:
	if global.remove:
		print ("remove")
		queue_free()
		trashSound.play()
	elif global.rotate:
		print ("rotate")
		rotating = true
	elif global.rotateccw:
		print ("ccw")
		rotating = true
	elif global.flip:
		flip_h = !flip_h
	else:
		dragging = true
		if is_in_group("coral"):
			global.draggingItem = "coral"
		elif is_in_group("coralRock"):
			global.draggingItem = "coralRock"
		elif is_in_group("kelp"):
			global.draggingItem = "kelp"
		elif is_in_group("pinkRock"):
			global.draggingItem = "pinkRock"
		elif is_in_group("kelpRock"):
			global.draggingItem = "kelpRock"
		elif is_in_group("biggerKelpRock"):
			global.draggingItem = "biggerKelpRock"
		print (global.draggingItem)
		offSet = get_global_mouse_position() - global_position
		get_viewport().get_mouse_position()


func _on_button_button_up() -> void:
	dragging = false
	global.draggingItem = null
	rotating = false
