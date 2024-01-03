extends Area2D

signal player_hit

@export var speed = 250

func _ready() -> void:
	body_entered.connect(_on_player_hit)

func _physics_process(delta: float) -> void:
	var velocity := Vector2(-speed, 0)
	
	position += delta * velocity

func _on_player_hit(_body) -> void:
	print('Player hit!')
	queue_free()
	emit_signal('player_hit')
