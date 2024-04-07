extends Node2D

var current_scene = "kb4"
# Called when the node enters the scene tree for the first time.
func _ready():
	$Character/character_animation.animation = "player_backward"
	$Laura_npc/laura_animation.flip_h = true
	Global.last_scene = current_scene


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
