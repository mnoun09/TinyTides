extends Area2D

@onready var tank = $"."
const sandOptions = preload("res://scenes/sand_type.tscn")
const coral = preload("res://scenes/decor/coral_draggable.tscn")
const coralRock = preload("res://scenes/decor/coral_rock_draggable.tscn")
const pinkRock = preload("res://scenes/decor/pinkRock_draggable.tscn")
var spawned = false

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

func _on_area_entered(area: Area2D) -> void:
	if (area.is_in_group("sand")):
		await get_tree().create_timer(.2).timeout
		global.sandType = "white"
		$"../sandType".visible = true
		$"../sandType/MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button/Squarewater/Sand1".visible = true
		$"../sandType/MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button2/Squarewater2/Sand2".visible = true
		$"../sandType/MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button3/Squarewater3/Sand3".visible = true
		print ("sand entered")
	elif (area.is_in_group("blackSand")):
		print ("black sand entered")
		global.sandType = "black"
		$"../sandType".visible = true
		$"../sandType/MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button/Squarewater/BlackSand1".visible = true
		$"../sandType/MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button2/Squarewater2/Blacksand2".visible = true
		$"../sandType/MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button3/Squarewater3/Blacksand3".visible = true
	elif (area.is_in_group("coralRock")):
		print ("coralRock entered")
		spawnCoralRock()
	elif (area.is_in_group("coral")):
		print ("coral entered")
		spawnCoral()
	elif (area.is_in_group("pinkRock")):
		print ("pinkRock entered")
		spawnPinkRock()
	
func spawnCoralRock():
	var coralRock_instance = coralRock.instantiate()
	coralRock_instance.position = (Vector2i(330, 390))
	add_child(coralRock_instance)
	
func spawnCoral():
	var coral_instance = coral.instantiate()
	coral_instance.position = (Vector2i(330, 390))
	add_child(coral_instance)
	
func spawnPinkRock():
	var pinkRock_instance = pinkRock.instantiate()
	pinkRock_instance.position = (Vector2i(330, 390))
	add_child(pinkRock_instance)
	
func noSandVisible():
	$Sand1.visible = false
	$Sand2.visible = false
	$Sand3.visible = false
	$BlackSand1.visible = false
	$BlackSand2.visible = false
	$BlackSand3.visible = false

func _on_button_pressed() -> void:
	noSandVisible()
	$"../sandType".visible = false
	if global.sandType == "white":
		$Sand1.visible = true
	elif global.sandType == "black":
		$BlackSand1.visible = true
	
func _on_button_2_pressed() -> void:
	noSandVisible()
	$"../sandType".visible = false
	if global.sandType == "white":
		$Sand2.visible = true
	elif global.sandType == "black":
		$BlackSand2.visible = true

func _on_button_3_pressed() -> void:
	noSandVisible()
	$"../sandType".visible = false
	if global.sandType == "white":
		$Sand3.visible = true
	elif global.sandType == "black":
		$BlackSand3.visible = true
