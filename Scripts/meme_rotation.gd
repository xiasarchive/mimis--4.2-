extends Node

@export var rotation_range := Vector2(-.25,.25)
@export var meme : CharacterBody2D

var rotation_speed := 0.0

func _ready() -> void:
	rotation_speed = randf_range(rotation_range.x, rotation_range.y)


func _process(delta: float) -> void:
	meme.rotation += rotation_speed * delta
