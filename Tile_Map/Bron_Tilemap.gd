extends Area2D

@export var label: String
@export var weapon :int
# 1 - Pistolet
# 2 - Strzelba
# 3 - PM

func _ready():
	$Label.text = label
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	match(weapon):
		1:
			Global.broń = "Pistolet"
			Global.zmiana_broni = true
		2:
			Global.broń = "Strzelba"
			Global.zmiana_broni = true
		3:
			Global.broń = "PM"
			Global.zmiana_broni = true
