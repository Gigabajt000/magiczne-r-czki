extends Node2D

@onready var bullet = preload("res://Player/bullet.tscn")



func _physics_process(delta: float) -> void:
	$"miejsce spawnu pocisku".position = position
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("strzał") and Global.cooldown <= 0:
		Global.cooldown = 1
		
		var bullet_in = bullet.instantiate()
		bullet_in.position = $"miejsce spawnu pocisku".position
		bullet_in.dire = global_rotation
		get_parent().add_child(bullet_in)
		
