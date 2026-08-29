extends Area3D

@onready var player: CharacterBody3D = $"../../Player"
@onready var outline: MeshInstance3D = $"../Outline"


var already_interacted = false

func interactuar():
	if already_interacted:
		return
	
	
	player.can_move = false
	Dialogic.timeline_ended.connect(_on_dialogic_finished)
	Dialogic.start("patalvaro")
	await Dialogic.timeline_ended
	
	already_interacted = true
	
	
func _on_dialogic_finished():
	Dialogic.timeline_ended.disconnect(_on_dialogic_finished)
	player.can_move = true	

func destacar():
	outline.visible = true


func quitar_destacado():
	outline.visible = false
