extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Character/character_animation.animation = "player_left"
	$Character/character_animation.flip_h = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
