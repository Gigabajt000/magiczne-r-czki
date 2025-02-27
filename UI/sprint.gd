extends Control

class_name Sprint

@export var progress_bar: ProgressBar

var player = Player.new()
var is_sprinting := false

#Stamina
var stamina : float
var max_stamina : float
var is_regenerating := false


func _process(delta: float) -> void:
	Sprinting()
	progress_bar.value = stamina

func _ready() -> void:
	stamina = 100
	max_stamina = 100
	progress_bar.max_value = max_stamina


func Sprinting():
	if Input.is_action_pressed("sprint") and stamina > 0:
		is_sprinting = true
	elif not Input.is_action_pressed("sprint") or stamina == 0:
		is_sprinting = false

	if is_sprinting == true and stamina > 0 and is_regenerating == false:
		Global.speed *= 1.5
		stamina = move_toward(stamina, 0 , 0.2)
	elif is_sprinting == false or stamina == 0:
		Global.speed /= 1.5
		if stamina != max_stamina:
			await get_tree().create_timer(2).timeout
			is_regenerating = true

	if is_regenerating == true:
		stamina = move_toward(stamina, max_stamina , 0.5)
		
	if stamina == max_stamina:
		is_regenerating = false
	
