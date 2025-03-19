extends Control

func _ready() -> void:
	visible = false
	
func _process(delta: float) -> void:
	if visible == true and Input.is_action_just_pressed("escape"):
		visible = false
		
	if visible == false and Input.is_action_just_pressed("escape"):
		visible = true
		
		
	if visible == true:
		get_tree().paused = true
		
	if visible == false:
		get_tree().paused = false

func _on_resume_pressed() -> void:
	visible = false


func _on_quit_pressed() -> void:
	get_tree().quit()
