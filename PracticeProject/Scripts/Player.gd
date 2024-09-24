extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -300.0

var isRolling = false
@onready var knight = $Knight

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	if Input.is_action_just_pressed("Roll") and !isRolling:
		knight.play("Roll")
		isRolling = true
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if is_on_floor():
		if direction > 0:
			knight.play("Run")
			knight.flip_h = false
		elif direction == 0:
			knight.play("idle")
		elif direction < 0:
			knight.play("Run")
			knight.flip_h = true
	else:
		knight.play("Jump")

	move_and_slide()

