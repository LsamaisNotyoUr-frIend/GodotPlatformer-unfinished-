extends Area2D

var full_world_scene = "res://Scenes/full_world.tscn"
@onready var player = $"../Player"

func _on_body_entered(body):
	get_tree().change_scene_to_file(full_world_scene)
	
