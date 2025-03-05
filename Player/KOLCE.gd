extends Node2D

var życie = Zycie.new()
var timer :float = 0
var start_timer : bool = false

func _process(delta: float) -> void:
	if start_timer == true:
		timer = timer + delta
	if timer >= 2:
		timer = 0
		Global.Obrażenia(20)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("Player"):
		start_timer = true
		Global.Obrażenia(20)


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.has_method("Player"):
		start_timer = false
		timer = 0
