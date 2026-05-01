extends Node2D

var meme = preload("res://Scenes/meme.tscn")
@export var audioplayer: AudioStreamPlayer2D

func _on_button_button_down() -> void:
	
	audioplayer.play()
	
	var instance = meme.instantiate()
	instance.global_position = get_local_mouse_position()
	add_child(instance)
