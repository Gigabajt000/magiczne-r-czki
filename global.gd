extends Node

var broń: String
var zmiana_broni: bool = false

var życie:int = 80
var max_życie:int = 100

var tarcza:int = 50
var regeneracja_tarczy:int = 50

var stamina:int = 100
var speed: float

var money:int = 0

#true jeśli runda jest
var Is_Round_Playing: bool = false
var Round_Time: float = 60
var Round: int = 1

var Is_Alive: bool = true

func _physics_process(delta: float) -> void:
	
	if Is_Round_Playing == true:
		Round_Time -= delta
	if Round_Time <= 0:
		tarcza = regeneracja_tarczy
		Is_Round_Playing = false
		
	if życie <= 0:
		Is_Alive = false
func Obrażenia(x):
	if tarcza > 0:
		tarcza -= x
	else:
		życie -= x
		
func Leczenie(x):
	życie += x
