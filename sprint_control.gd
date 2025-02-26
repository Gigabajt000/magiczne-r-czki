extends Control

class_name Sprint

@export var progress_bar: ProgressBar

var sprint_value 
var max_sprint 

func _ready() -> void:
	sprint_value = 100
	max_sprint = 100
	
	
func _physics_process(delta: float) -> void:
	Shifting()


func Shifting():
	pass
