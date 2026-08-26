extends Area3D


func _on_mouse_entered():
	print("Estoy apuntando al NPC")


func _on_mouse_exited():
	print("He dejado de apuntar al NPC")


func _on_input_event(_camera, event, _position, _normal, _shape_idx):
	if event is InputEventMouseButton:
		if event.is_action_pressed("interact"):
			Dialogic.start("patalvaro")
