extends Control

@export var progress_bar: ProgressBar

func _ready():
	progress_bar.max_value = 50
	progress_bar.value = Global.tarcza


func _process(delta):
	
	progress_bar.value = Global.tarcza
