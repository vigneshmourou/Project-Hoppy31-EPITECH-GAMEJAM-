extends CharacterBody2D


func _on_arthur_area_body_entered(body):
	if body.has_method("main_caract"):
		if Global.joffrey_status == true:
			Global.arthur_status = true
			DialogueManager.show_example_dialogue_balloon(load("res://dialogue/arthur_jordan.dialogue"), "arthur")
