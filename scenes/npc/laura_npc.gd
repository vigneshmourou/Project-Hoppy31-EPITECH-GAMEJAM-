extends CharacterBody2D


func _on_laura_area_body_entered(body):
	if body.has_node("main_caract"):
		DialogueManager.show_example_dialogue_balloon(load("res://dialogue/Laura.dialogue"), "Laura")

