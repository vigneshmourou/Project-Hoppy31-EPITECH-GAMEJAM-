extends CharacterBody2D

func _on_area_2d_body_entered(body):
	if body.has_method("main_caract"):
		DialogueManager.show_example_dialogue_balloon(load("res://dialogue/Alexandre.dialogue"), "Alexandre")

