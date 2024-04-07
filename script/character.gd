extends CharacterBody2D

var speed = 200
var screen_size
var motion = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	$character_animation.animation = "player_left"
	$character_animation.flip_h = true
	$hoppy/hoppy_ani.animation = "hoppy_left"

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		position -= velocity * delta

func _process(delta):
	motion = Vector2.ZERO
	if Input.is_action_pressed("move_forward"):
		motion.y -= 2
		$character_animation.animation = "player_forward"
		$hoppy/hoppy_ani.animation = "hoppy_forward"
	if Input.is_action_pressed("move_backward"):
		motion.y += 2
		$character_animation.animation = "player_backward"
		$hoppy/hoppy_ani.animation = "hoppy_backward"
	if Input.is_action_pressed("move_left"):
		motion.x -= 2
		$character_animation.animation = "player_left"
		$hoppy/hoppy_ani.animation = "hoppy_left"
		$hoppy.position = Vector2(21, 7)
	if Input.is_action_pressed("move_right"):
		motion.x += 2
		$character_animation.animation = "player_left"
		$hoppy/hoppy_ani.animation = "hoppy_left"
		$hoppy.position = Vector2(-21, 7)
		
	if motion.x != 0:
		if motion.x < 0:
			$character_animation.flip_h = false
			$hoppy/hoppy_ani.flip_h = false
		else:
			$character_animation.flip_h = true
			$hoppy/hoppy_ani.flip_h = true
	if motion.length() > 0:
		motion = motion.normalized() * speed
		$character_animation.play()
		$hoppy/hoppy_ani.play()
	else:
		$character_animation.stop()
		$hoppy/hoppy_ani.stop()
		
	position += motion * delta
	position = position.clamp(Vector2.ZERO, screen_size)


func main_caract():
	pass
