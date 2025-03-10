extends CharacterBody2D

var SPEED = 50
@export var target: CharacterBody2D
@export var navigation: NavigationAgent2D

func Enemy():
	pass

var timer: float

func _physics_process(delta: float) -> void:
	timer += delta
	
	if timer >= 0.5:
		Pathifinding()
	
	var dir = to_local(navigation.get_next_path_position()).normalized()
	velocity = dir * SPEED
	move_and_slide()


func Pathifinding():
	navigation.target_position = target.global_position
