extends CharacterBody2D


func _on_thomas_area_body_entered(body):
	if body.has_method("main_caract"):
		Global.thomas_status = true
		DialogueManager.show_example_dialogue_balloon(load("res://dialogue/Thomas.dialogue"), "Thomas")
