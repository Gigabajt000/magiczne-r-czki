extends Node


var życie:int = 20
var max_życie:int = 100

var tarcza:int = 0
var regeneracja_tarczy:int = 0

var stamina:int = 100
var speed: float

var money:int = 100

func Obrażenia(x):
	życie -= x
