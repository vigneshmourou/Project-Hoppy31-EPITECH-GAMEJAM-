extends Area2D
signal hit

@export var speed = 200
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	$player_animation.animation = "left"
	$player_animation.flip_h = true
	$hoppy/hoppy_animation.animation = "hoppy_left"
	$".".position = Vector2(720.1543, 316.5107)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("move_forward"):
		velocity.y -= 2
		$player_animation.animation = "forward"
		$hoppy/hoppy_animation.animation = "hoppy_forward"
	if Input.is_action_pressed("move_backward"):
		velocity.y += 2
		$player_animation.animation = "backward"
		$hoppy/hoppy_animation.animation = "hoppy_backward"
	if Input.is_action_pressed("move_left"):
		velocity.x -= 2
		$player_animation.animation = "left"
		$hoppy/hoppy_animation.animation = "hoppy_left"
		$hoppy.position = Vector2(21, 10)
	if Input.is_action_pressed("move_right"):
		velocity.x += 2
		$player_animation.animation = "left"
		$hoppy/hoppy_animation.animation = "hoppy_left"
		$hoppy.position = Vector2(-21, 10)
		
	if velocity.x != 0:
		if velocity.x < 0:
			$player_animation.flip_h = false
			$hoppy/hoppy_animation.flip_h = false
		else:
			$player_animation.flip_h = true
			$hoppy/hoppy_animation.flip_h = true
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$player_animation.play()
		$hoppy/hoppy_animation.play()
	else:
		$player_animation.stop()
		$hoppy/hoppy_animation.stop()
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
