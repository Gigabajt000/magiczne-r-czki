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

#true jeśli runda jest
var Is_Round_Playing: bool = false
var Round_Time: float = 60
var Round: int = 0

var Is_Alive: bool = true

func _physics_process(delta: float) -> void:
	cooldown = cooldown - delta
	if Is_Round_Playing == true:
		Round_Time -= delta
	if Round_Time <= 0:
		Is_Round_Playing = false
		
	if życie <= 0:
		Is_Alive = false
func Obrażenia(x):
	życie -= x
