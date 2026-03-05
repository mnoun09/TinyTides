extends Area2D

@onready var tank = $"."

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return true
	
func _drop_data(at_position: Vector2, data: Variant) -> void:
	pass

#make a new child to add to scene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$Sand1.visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if Node2D:
		print ("shape entered")
	pass # Replace with function body.


func _on_area_entered(area: Area2D) -> void:
	if Node2D:
		print ("sand entered")
		$Sand1.visible = true
	pass # Replace with function body.
