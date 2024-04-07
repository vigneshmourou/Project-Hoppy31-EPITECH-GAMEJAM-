extends CharacterBody2D


func _on_joffrey_area_body_entered(body):
	if body.has_method("main_caract"):
		if Global.joffrey_status == false:
			Global.joffrey_status = true
			DialogueManager.show_example_dialogue_balloon(load("res://dialogue/joffrey.dialogue"), "start")
		if Global.allowed_card == true:
			Global.doors_status = true
			DialogueManager.show_example_dialogue_balloon(load("res://dialogue/joffrey.dialogue"), "help")
