extends Node2D

func _on_remove_button_pressed() -> void:
	global.remove = !global.remove
	if global.remove == true:
		$AnimatedSprite2D.play("open")
	else:
		$AnimatedSprite2D.play("closed")
	print (global.remove)
