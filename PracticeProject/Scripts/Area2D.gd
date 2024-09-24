extends Area2D

@onready var timer = $Timer
@onready var timer_2 = $Timer2
@onready var platform = $Platform 
@onready var falling_platform = $"."

var is_freed = true

func _on_body_entered(body):
	timer.start()

func _on_timer_timeout():
	if is_freed:
		platform.queue_free()
		is_freed = false
		

