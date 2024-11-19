extends CharacterBody2D


const speed = 300
const jump_velocity = -400

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_just_released("jump") and velocity.y < 0:
		velocity.y = jump_velocity / 4
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
	
	if Input.is_action_just_pressed("attack"):
		var new_dialog = Dialogic.start("test")
		add_child(new_dialog)

	
	
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
