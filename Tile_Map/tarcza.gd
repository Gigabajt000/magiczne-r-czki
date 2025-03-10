extends StaticBody2D

@export var label_wartość:Label
@export var label_cena:Label



func _ready():
	label_cena.text = "100" + "$"
	label_wartość.text = "tarcza"

func _process(delta):
	label_cena.text = "100" + "$"

func _on_area_2d_body_entered(body):
	if Global.money >= 100:
		Global.money -= 100
		Global.regeneracja_tarczy = 50
		Global.tarcza = 50
		queue_free()
		
