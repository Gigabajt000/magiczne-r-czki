extends CharacterBody2D

var SPEED = 80
@export var target: CharacterBody2D

func Enemy():
	pass

func _physics_process(delta: float) -> void:
	
	position.x = move_toward(position.x, target.position.x, SPEED * delta)
	position.y = move_toward(position.y, target.position.y, SPEED * delta)
	
	move_and_slide()
