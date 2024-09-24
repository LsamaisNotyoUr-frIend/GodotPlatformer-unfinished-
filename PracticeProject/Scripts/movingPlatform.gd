extends AnimatableBody2D

@onready var animation_player_5 = $AnimationPlayer5
@onready var timer = $"../EnteredListener/Timer"
@onready var timer_2 = $"../EnteredListener/Timer2"
@onready var timer_3 = $"../EnteredListener/Timer3"
@onready var collision_shape_2d = $"../EnteredListener/CollisionShape2D"


func _on_timer_timeout():
	collision_shape_2d.disabled = true
	animation_player_5.play("new_animation")
	timer.stop()
	timer_2.start()


func _on_timer_2_timeout():
	animation_player_5.stop()
	timer_2.stop()
	timer_3.start()
	
func _on_timer_3_timeout():
	collision_shape_2d.disabled = false
	timer_3.stop()
