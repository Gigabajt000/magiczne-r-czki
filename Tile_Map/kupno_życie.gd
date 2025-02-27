extends Area2D

@export var wartosc:int
@export var cena: int

@export var label:Label
@export var label_cena:Label

func _process(delta: float) -> void:
	label.text = str(wartosc)
	label_cena.text = str(cena)
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	if Global.money >= cena and Global.życie < Global.max_życie:
		Global.Obrażenia(-(wartosc))
		Global.money -= cena
