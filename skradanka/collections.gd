extends Area2D

@export var target_scene: PackedScene	

func _ready():
	pass
	
func _input(event):
	if event.is_action_pressed("ui_accept"):
		if !target_scene: #is null
			print ("nothing special")
			return
		if get_overlapping_bodies().size() > 0:
			next_level()
			
func next_level():
	var ERR = get_tree().change_scene_to(target_scene)

	if ERR != OK:
		print("something failed")
