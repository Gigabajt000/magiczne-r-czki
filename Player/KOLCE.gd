extends Node2D

var Życie = Zycie.new()


func _on_area_2d_area_entered(area: Area2D) -> void:
	print(Życie.zycie)
	Życie.Obrazenia(20)
