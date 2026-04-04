extends Node2D
@onready var player = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_done_pressed() -> void:
	player.play("cameraAnimation")
	$SideMenu.visible = false
	$trash.visible = false
	$rotate.visible = false
	$rotateccw.visible = false
	$flip.visible = false
	$done.visible = false
