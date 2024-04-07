extends Node2D

var motion
var current_scene = "kb2"
# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.last_scene == "ape":
		$Character.position = Vector2(641, 477)
		$Character/character_animation.animation = "player_left"
		$Character/character_animation.flip_h = false
		$Character/hoppy/hoppy_ani.animation = "hoppy_left"
	if Global.last_scene == "kb4":
		$Character.position = Vector2(943, 73)
		$Character/character_animation.animation = "player_backward"
		$Character/hoppy/hoppy_ani.animation = "hoppy_backward"
	Global.last_scene = current_scene

func _on_CollisionShape2D_body_entered(body):
	if body.is_in_group("wall"):
		motion = Vector2.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
