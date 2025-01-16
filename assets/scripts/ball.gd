extends RigidBody2D
@export var speed = 400
var screen_size
var loop = true
# Called when the node enters the scene tree for the first time.
func _ready(): 
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("start"):
		velocity.x += 1
	if velocity.length() > 0:
		while(loop):
			velocity = velocity.normalized() * speed
			start(time_sec: float = -1 )
		
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
