extends Control

class_name Sprint

@export var progress_bar: ProgressBar

var player = Player.new()

#Stamina
var sprint_value : float
var max_sprint : float

func _ready() -> void:
	sprint_value = 100
	max_sprint = 100
	progress_bar.max_value = max_sprint
	
func _physics_process(delta: float) -> void:
	progress_bar.value = sprint_value
	print(player.SPEED)
	Sprinting()


func Sprinting():
	if Input.is_action_pressed("sprint") and sprint_value >= 0:
		player.SPEED = 600
		sprint_value = move_toward(sprint_value,0,1)
	
