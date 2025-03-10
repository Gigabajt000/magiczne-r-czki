extends Node2D



func _process(delta):
	if Input.is_action_just_pressed("enter") and Global.Is_Round_Playing == false:
		Global.Is_Round_Playing = true
		Global.Round_Time = 60
		Global.Round += 1
