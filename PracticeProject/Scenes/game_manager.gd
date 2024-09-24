extends Node2D

@onready var score_counter = $score_counter
var score = 0

func add_point():
	score += 1
	score_counter.text = "You collected " + str(score) + " coins"
