extends CharacterBody2D

class_name Player


var SPEED = 300.0
var JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
	var direction2 := Input.get_axis("move_up", "move_down")
	if direction2:
		velocity.y = direction2 * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()
