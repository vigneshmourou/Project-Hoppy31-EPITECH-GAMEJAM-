extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name != "hoppy":
		if Global.exit_status == true:
			await get_tree().create_timer(3.0).timeout
			get_tree().quit(0)
