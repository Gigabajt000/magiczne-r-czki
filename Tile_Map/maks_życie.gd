extends StaticBody2D

@export var label_wartość:Label
@export var label_cena:Label

@export var wartość:int
@export var cena:int

func _ready():
	label_cena.text = str(cena) + "$"
	label_wartość.text = str(wartość)

func _process(delta):
	label_cena.text = str(cena) + "$"
	
func _on_area_2d_body_entered(body):
	
	if Global.money >= cena:
		Global.money -= cena
		cena = cena * 2
		Global.max_życie = Global.max_życie + wartość
		Global.życie = Global.życie + wartość
		
