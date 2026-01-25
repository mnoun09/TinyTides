class_name SceneManager extends CanvasLayer

@onready var animation : AnimationPlayer = $AnimationPlayer


var last_scene_name : String

var scene_dir_path = "res://scenes/"


func changeScene(from, to_scene_name : String) -> void:
	last_scene_name = from.name
	var full_path = scene_dir_path + to_scene_name + ".tscn"
	
	animation.play("transition_out")
	await animation.animation_finished
	
	from.get_tree().call_deferred("change_scene_to_file", full_path)
	
	animation.play_backwards("transition_out")
	
