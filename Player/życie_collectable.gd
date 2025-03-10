extends StaticBody2D

var time:float

@export var sprite : Sprite2D

@export var label: Label

func _process(delta: float) -> void:
	if time < 15:
		var x :int = 15 - time
		label.text = str(x)
	else:
		label.text = ""

	if time <= 15 and Global.Is_Round_Playing == true:
		time = time + delta
		
	if time >= 15:
		sprite.visible = true
	if time < 15:
		sprite.visible = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if time >= 15 and Global.życie < Global.max_życie and Global.Is_Round_Playing == true:
		time = 0
		Global.Leczenie(30)
