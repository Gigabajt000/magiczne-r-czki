extends Area2D

@export var wartosc: String
@export var cena: int

@export var label:Label
@export var label_cena:Label

func _process(delta: float) -> void:
	label.text = str(wartosc) 
	label_cena.text = str(cena) + "$"
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	if wartosc != "all" and Global.money >= cena and Global.życie < Global.max_życie:
		Global.Leczenie(int(wartosc))
		Global.money -= cena
	if wartosc == "all" and Global.money >= cena and Global.życie < Global.max_życie:
		Global.Leczenie((Global.max_życie))
		Global.money -= cena
