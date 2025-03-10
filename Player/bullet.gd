extends CharacterBody2D

var dire
var pos
var rot
var obrażenia
var speed = 500
# Called when the node enters thse scene tree for the first time.


	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = Vector2(speed,0).rotated(dire)
	move_and_slide()


func _on_timer_timeout() -> void:
	queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("Enemy"):
		Global.money += randi_range(0,2)
		body.queue_free()
