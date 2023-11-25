extends AnimatableBody2D

@export var speed = 250

func _physics_process(delta: float) -> void:
	var velocity := Vector2(-speed, 0)
	
	move_and_collide(delta * velocity)
