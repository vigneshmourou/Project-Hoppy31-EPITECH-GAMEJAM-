extends CharacterBody2D

var has_talk = false

func _on_ilyas_area_body_entered(body):
	if body.has_method("main_caract"):
		if Global.exit_status == false:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogue/Ilyas.dialogue"), "Ilyas")
		if Global.exit_status == true:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogue/Ilyas_end.dialogue"), "Ilyas_end")
