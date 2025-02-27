extends Area2D

@export var wartosc:int
@export var cena: int

@export var label:Label

func _process(delta: float) -> void:
	label.text = str(wartosc)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if Global.money >= cena:
		Global.Obrażenia(-(wartosc))
		Global.money -= cena
