extends Area3D

@onready var player: CharacterBody3D = $"../../Player"

func interactuar():
	player.can_move = false
	Dialogic.timeline_ended.connect(_on_dialogic_finished)
	Dialogic.start("patalvaro")
	
	
	
	
func _on_dialogic_finished():
	Dialogic.timeline_ended.disconnect(_on_dialogic_finished)
	player.can_move = true	
