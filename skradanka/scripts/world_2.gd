extends Node2D


signal world_changed(world_name)
var entered = false

@export var world_name: String = "world"

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			print("entered")
			emit_signal("world_changed", world_name)


func _on_items_body_entered(body: PhysicsBody2D):
	entered = true
func _on_items_body_exited(body):
	entered = false


func _on_area_2d_body_entered(body:PhysicsBody2D):
	entered = true
func _on_area_2d_body_exited(body):
	entered = false
