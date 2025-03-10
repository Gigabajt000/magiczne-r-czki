extends Control

func _ready():
	visible = false

func _process(delta):
	if Global.Is_Alive == false:
		visible = true

func _on_quit_pressed():
	get_tree().quit()


func _on_retry_pressed():
	visible = false
	Global.życie = Global.max_życie
	Global.Is_Alive = true
	Global.Is_Round_Playing = false
	Global.Round_Time = 60
	Global.Round = 1
	Global.money = 0
	Global.tarcza = 0
	Global.regeneracja_tarczy = 0
	get_tree().reload_current_scene()
