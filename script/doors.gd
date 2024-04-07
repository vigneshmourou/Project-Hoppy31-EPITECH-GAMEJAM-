extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.alexandre_status == true:
		if Global.arthur_status == true:
			if Global.laura_status == true:
				if Global.melissandre_status == true:
					if Global.thomas_status == true:
						Global.doors_status = true

func _on_body_entered(body):
	if body.name != "hoppy":
		if Global.doors_status == false:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogue/doors_closed.dialogue"), "doors_closed")
		if Global.doors_status == true:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogue/doors_open.dialogue"), "doors_open")
			Global.exit_status = true
