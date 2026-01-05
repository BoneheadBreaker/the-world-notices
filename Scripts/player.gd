# Player.gd
extends CharacterBody2D

@export var SPEED := 200

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("D") - Input.get_action_strength("A")
	input_vector.y = Input.get_action_strength("S") - Input.get_action_strength("W")
	input_vector = input_vector.normalized()
	
	velocity = input_vector * SPEED
	move_and_slide()
