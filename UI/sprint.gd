extends Control

class_name Sprint

@export var progress_bar: ProgressBar

var player = Player.new()
var is_sprinting := false

#Stamina
var sprint_value : float
var max_sprint : float

func _process(delta: float) -> void:
		Sprinting()
		print(player.SPEED)

func _ready() -> void:
	sprint_value = 100
	max_sprint = 100
	progress_bar.max_value = max_sprint
	
func _physics_process(delta: float) -> void:
	progress_bar.value = sprint_value


func Sprinting():
	if Input.is_action_pressed("sprint") and sprint_value >= 0:
		is_sprinting = true
	elif not Input.is_action_pressed("sprint"):
		is_sprinting = false
		
	if is_sprinting == true:
		player.SPEED *= 1.5
		sprint_value = move_toward(sprint_value,0,1)
	
	else:
		pass
	
