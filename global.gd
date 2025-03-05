extends Node

# Broń
var cooldown: float = 1

var życie:int = 80
var max_życie:int = 100

var tarcza:int = 0
var regeneracja_tarczy:int = 0

var stamina:int = 100
var speed: float

var money:int = 100

func _physics_process(delta: float) -> void:
	cooldown = cooldown - delta

func Obrażenia(x):
	życie -= x
