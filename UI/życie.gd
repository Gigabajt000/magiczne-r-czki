extends Control

class_name Zycie

@export var progress_bar: ProgressBar

var max_zycie:int
var zycie:int

func _ready():
	max_zycie = 100
	progress_bar.max_value = max_zycie
	zycie = 60
	

func _process(delta: float):
	progress_bar.value = zycie

func Obrazenia(x):
	print(zycie)
	zycie = zycie - x
	
func Leczenie(x):
	zycie = zycie + x
