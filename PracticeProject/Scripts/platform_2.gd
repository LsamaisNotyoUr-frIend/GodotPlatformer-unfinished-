extends AnimatableBody2D

@onready var elevator = $Elevator
@onready var enteredtimer = $"../EnteredListener2/enteredtimer"
@onready var enteredtimer_2 = $"../EnteredListener2/enteredtimer2"
@onready var enteredtimer_3 = $"../EnteredListener2/enteredtimer3"
@onready var collision_shape_2d = $"../EnteredListener2/CollisionShape2D"

func _on_enteredtimer_timeout():
	elevator.play("move")
	enteredtimer.stop()
	enteredtimer_2.start()
	
func _on_enteredtimer_2_timeout():
	elevator.stop()
	enteredtimer_2.stop()
	enteredtimer_3.start()

func _on_enteredtimer_3_timeout():
	collision_shape_2d.disabled = false
	
