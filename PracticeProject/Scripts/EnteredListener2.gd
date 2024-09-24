extends Area2D

@onready var enteredtimer = $enteredtimer
@onready var collision_shape_2d = $CollisionShape2D


func _on_body_entered(body):
	collision_shape_2d.disabled = true
	enteredtimer.start()
	
