extends Control

class_name Zycie

@export var progress_bar: ProgressBar

func _ready():
	progress_bar.min_value = 0
	
	progress_bar.max_value = Global.max_zycie

	

func _process(delta: float):
	
	
	progress_bar.value = Global.życie
	
