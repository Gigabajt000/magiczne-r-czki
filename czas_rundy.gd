extends Control



func _process(delta):
	var x = int(Global.Round_Time)
	$Label.text= str(x) + "s"
	
	$Label2.text = str(Global.Round) + " runda"
