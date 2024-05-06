extends RigidBody2D

var movementSpeed: float = 1050.0
# Called when the node enters the scene tree for the first time.
func _ready():
	#apply_impulse(Vector2(25,0))
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if(Input.is_action_pressed("move_right")):
		apply_force(Vector2(movementSpeed,0))
	if(Input.is_action_pressed("move_left")):
		apply_force(Vector2(-movementSpeed,0))
	if(Input.is_action_pressed("move_up")):
		apply_force(Vector2(0,-movementSpeed))
	if(Input.is_action_pressed("move_down")):
		apply_force(Vector2(0,movementSpeed))
