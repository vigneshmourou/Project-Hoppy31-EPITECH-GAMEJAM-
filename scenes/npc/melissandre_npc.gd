extends CharacterBody2D

func _on_melissandre_area_body_entered(body):
	if body.has_method("main_caract"):
		Global.melissandre_status = true
		DialogueManager.show_example_dialogue_balloon(load("res://dialogue/Mélissandre.dialogue"), "Melissandre")
