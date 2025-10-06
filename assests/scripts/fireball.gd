extends CharacterBody2D

var dir: float = 0.0
var speed: float = 600.0

func _physics_process(delta: float) -> void:
	var motion = Vector2(speed, 0).rotated(dir) * delta
	var collision = move_and_collide(motion)
	
	if collision:
		queue_free()  # Remove bullet on collision
