@tool
extends Area2D

@export_file var target_map_path = ""

func _get_configuration_warnings():
	if target_map_path == "":
		return "path must be a non void value"
	else:
		return ""
func _on_body_entered(body):
		if get_tree().change_scene_to_file(target_map_path) != OK:
			print("Error: scene path seems to be wrong.")
