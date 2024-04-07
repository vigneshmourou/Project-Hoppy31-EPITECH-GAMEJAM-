extends CharacterBody2D


var has_talk = false

func _on_joffrey_area_body_entered(body):
	if body.has_node("main_caract"):
		if has_talk == false:
			has_talk = true
			DialogueManager.show_example_dialogue_balloon(load("res://dialogue/joffrey.dialogue"), "start")
