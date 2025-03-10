extends CharacterBody2D

var SPEED = 100
@export var target: CharacterBody2D
@export var navigation: NavigationAgent2D

var can_attack: bool = false

var życie:int 

#Funkcja do rozpoznawania enemy
func Enemy():
	pass

#timer do Pathfindingu
var timer: float

var timer_smierci: float
var start_timer: bool

func _ready():
	życie = 20
	$ProgressBar.max_value = życie
	$ProgressBar.value = życie
func _physics_process(delta: float) -> void:
	$ProgressBar.value = życie
	timer += delta
	
	if życie <= 0:
		Smierc()
	
	if start_timer == true:
		timer_smierci += delta
		timer = 0
		
	if timer_smierci >= 0.3:
		Global.money += randi_range(0,2)
		queue_free()
	
	if can_attack == true:
		Atak(delta)
	
	if timer >= (5 / Global.Round) - 1:
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
		
func Obrażenia(x):
	życie -= x
	
func Smierc():
	$CPUParticles2D_Atak.position = position
	$CPUParticles2D_Atak.emitting = true
	start_timer = true
	
