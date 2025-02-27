extends Node2D

@export var player: CharacterBody2D

@export var x: int
@export var y: int

@export var napis: String
@export var label: Label
func _ready():
	label.text = napis

func _on_area_2d_body_entered(body):
	player.position.x = x
	player.position.y = y
