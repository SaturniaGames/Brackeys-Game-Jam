extends Area3D

@onready var player: CharacterBody3D = $"../../Player"

var already_interacted = false

func interactuar():
	if already_interacted:
		return
	
	already_interacted = true
	player.can_move = false
	Dialogic.timeline_ended.connect(_on_dialogic_finished)
	Dialogic.start("patalvaro")
	
	
	
	
func _on_dialogic_finished():
	Dialogic.timeline_ended.disconnect(_on_dialogic_finished)
	player.can_move = true	
