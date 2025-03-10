extends Node2D

var x
var can_spawn: bool = true

@export var player: CharacterBody2D

func _ready():
	Losowanie()

@onready var enemy_path = preload("res://Enemy/enemy.tscn")

func _process(delta):
	
	if Global.Is_Round_Playing == true:
		x = x - delta
	if x <= 0:
		Losowanie()
		var enemy = enemy_path.instantiate()
		enemy.position = position
		enemy.target = player
		get_parent().add_child(enemy)
	
	
func Losowanie():
	x = randi_range(5 / Global.Round, 25 / Global.Round)	
	

func _on_area_2d_body_entered(body):
	if body.has_method("Player"):
		can_spawn = true


func _on_area_2d_body_exited(body):
	if body.has_method("Player"):
		can_spawn = false
