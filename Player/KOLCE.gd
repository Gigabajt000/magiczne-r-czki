extends Node2D

var życie = Zycie.new()


func _on_area_2d_body_entered(body: Node2D) -> void:
	
	życie.zycie = życie.zycie - 20
