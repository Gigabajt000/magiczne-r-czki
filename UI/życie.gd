extends Control

class_name Zycie

@export var progress_bar: ProgressBar

var max_zycie :int 
var zycie :int = 60


func _ready():
	progress_bar.min_value = 0
	max_zycie = 100
	zycie = 60
	progress_bar.max_value = max_zycie

	

func _process(delta: float):
	
	
	progress_bar.value = zycie
	
