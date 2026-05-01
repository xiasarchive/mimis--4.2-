extends Node

class_name Meme_Behavior

func _physics_process(delta: float) -> void:
	for behavior in get_children():
		if behavior.has_method("process_behavior"):
			behavior.process_behavior(delta)
