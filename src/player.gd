extends CharacterBody2D

@export var jump_velocity = 2500.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: int = ProjectSettings.get_setting('physics/2d/default_gravity')

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_pressed('ui_accept'):
		velocity.y -= jump_velocity * delta

	move_and_collide(delta * velocity)
