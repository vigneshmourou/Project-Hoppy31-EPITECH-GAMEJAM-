extends Node2D

var motion
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_CollisionShape2D_body_entered(body):
	if body.is_in_group("wall"):
		motion = Vector2.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
