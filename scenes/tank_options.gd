extends Node2D

func _on_circle_pressed() -> void:
	global.tank = "circle"
	$".".visible = false
	$"../circletank".visible = true
	print (global.tank)

func _on_sq_pressed() -> void:
	global.tank = "square"
	$".".visible = false
	$"../Squaretank".visible = true
	print (global.tank)

func _on_rec_pressed() -> void:
	global.tank = "rectangle"
	$".".visible = false
	$"../rectTank".visible = true
	print (global.tank)
