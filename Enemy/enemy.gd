extends CharacterBody2D

var SPEED = 50
@export var target: CharacterBody2D
@export var navigation: NavigationAgent2D

var can_attack: bool = false

#Funkcja do rozpoznawania enemy
func Enemy():
	pass

#timer do Pathfindingu
var timer: float

func _physics_process(delta: float) -> void:
	timer += delta
	
	if can_attack == true:
		Atak(delta)
	
	if timer >= 0.5:
		Pathifinding()
	
	var dir = to_local(navigation.get_next_path_position()).normalized()
	velocity = dir * SPEED
	move_and_slide()

#Pathfinding wroga
func Pathifinding():
	navigation.target_position = target.global_position

#timer do Ataku
var time: float

#Atak
func Atak(x):
	time = time + x
	if time >= 0.5:
		$CPUParticles2D_Atak.global_position = target.global_position
		$CPUParticles2D_Atak.emitting = true
		Global.Obrażenia(10)
		time = 0

#Do Ataku Sprawdzanie
func _on_area_2d_body_entered(body):
	if body.has_method("Player"):
		can_attack = true

#Do Ataku Sprawdzanie
func _on_area_2d_body_exited(body):
	if body.has_method("Player"):
		time = 0
		can_attack = false
