extends Node2D

@onready var sandSound = $sand

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	if (global.sandType == "white"):
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button/Squarewater/Sand1.visible = true
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button2/Squarewater2/Sand2.visible = true
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button3/Squarewater3/Sand3.visible = true
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button/Squarewater/BlackSand1.visible = false
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button2/Squarewater2/Blacksand2.visible = false
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button3/Squarewater3/Blacksand3.visible = false
	elif (global.sandType == "black"):
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button/Squarewater/Sand1.visible = false
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button2/Squarewater2/Sand2.visible = false
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button3/Squarewater3/Sand3.visible = false
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button/Squarewater/BlackSand1.visible = true
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button2/Squarewater2/Blacksand2.visible = true
		$MarginContainer/MarginContainer/NinePatchRect/HBoxContainer/Button3/Squarewater3/Blacksand3.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#unnecessary functions
func _on_button_pressed() -> void:
	sandSound.play()
	global.sandNum = 1
	global.sandChosen.emit(1)
	print (global.sandNum)
	$".".visible = false

func _on_button_2_pressed() -> void:
	sandSound.play()
	global.sandNum = 2
	global.sandChosen.emit(2)
	$".".visible = false

func _on_button_3_pressed() -> void:
	sandSound.play()
	global.sandNum = 3
	global.sandChosen.emit(3)
	$".".visible = false
	
