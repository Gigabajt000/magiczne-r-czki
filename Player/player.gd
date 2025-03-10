extends CharacterBody2D

class_name Player

@onready var pistolet_path = preload("res://Player/pistolet.tscn")
@onready var strzelba_path = preload("res://Player/strzelba.tscn")
@onready var PM_path = preload("res://Player/pistolet_maszynowy.tscn")

var SPEED = 300.0
var JUMP_VELOCITY = -400.0

func Player():
	pass

@export var current_weapon: Node2D

func _process(delta: float) -> void:
	Global.speed = SPEED
	current_weapon.position = position
	
	if Global.zmiana_broni == true:
		
		Global.zmiana_broni = false
		current_weapon.queue_free()
	
		if Global.broń == "Pistolet":
			var pistolet = pistolet_path.instantiate()
			current_weapon = pistolet
			pistolet.global_position = global_position
			get_parent().add_child(pistolet)
			
		if Global.broń == "Strzelba":
			var strzelba = strzelba_path.instantiate()
			current_weapon = strzelba
			strzelba.global_position = global_position
			get_parent().add_child(strzelba)
			
		if Global.broń == "PM":
			var PM = PM_path.instantiate()
			current_weapon = PM
			PM.global_position = global_position
			get_parent().add_child(PM)
			
func _physics_process(delta: float) -> void:
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * Global.speed
	else:
		velocity.x = move_toward(velocity.x, 0, Global.speed)
	
	
	var direction2 := Input.get_axis("move_up", "move_down")
	if direction2:
		velocity.y = direction2 * Global.speed
	else:
		velocity.y = move_toward(velocity.y, 0, Global.speed)
	move_and_slide()
