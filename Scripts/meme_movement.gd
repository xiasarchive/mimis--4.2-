extends Node

@export var speed_range = Vector2(0.15, 1.0)
@export var meme: CharacterBody2D
var direction := Vector2.ZERO
var speed : float = 0.0

func _ready() -> void:
	direction = Vector2.RIGHT.rotated(randf_range(0, TAU))
	speed = randf_range(speed_range.x, speed_range.y)
	
func process_behavior(_delta: float) -> void:
	meme.velocity = direction * speed
	
	var pos = meme.global_position
	var size = meme.get_viewport().size * 3
	
	const BUFFER : float = 200.0
	
	meme.global_position = Vector2(
		wrapf(pos.x, -BUFFER, size.x + BUFFER),
		wrapf(pos.y, -BUFFER, size.y + BUFFER)
	)
