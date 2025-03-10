extends Node2D

@export var stats: Stats

@onready var bullet = preload("res://Player/bullet.tscn")

var przeładowanie 
var speed 
var obrażenia

func _ready():
	przeładowanie = stats.czas_przeładowania
	speed = stats.speed
	obrażenia = stats.obrażenia
func _process(delta):
	$"miejsce spawnu pocisku".position = position
	look_at(get_global_mouse_position())
	
	przeładowanie -= delta
	
	if Input.is_action_just_pressed("strzał") and przeładowanie <= 0:
		przeładowanie = 1.5
		
		var bullet_in = bullet.instantiate()
		bullet_in.position = $"miejsce spawnu pocisku".position
		bullet_in.dire = global_rotation
		bullet_in.speed = speed
		bullet_in.obrażenia = obrażenia
		get_parent().add_child(bullet_in)
		
		var bullet_in2 = bullet.instantiate()
		bullet_in2.position = $"miejsce spawnu pocisku".position
		bullet_in2.dire = global_rotation + 0.15
		bullet_in2.speed = speed
		bullet_in2.obrażenia = obrażenia
		get_parent().add_child(bullet_in2)
		
		var bullet_in3 = bullet.instantiate()
		bullet_in3.position = $"miejsce spawnu pocisku".position
		bullet_in3.dire = global_rotation - 0.15
		bullet_in3.speed = speed
		bullet_in3.obrażenia = obrażenia
		get_parent().add_child(bullet_in3)
		
