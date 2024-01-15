extends Node

var defaults = func() -> Dictionary:
	var counter_reducer = preload("res://features/counter/reducers/counter_reducer.gd").new()
	
	return {
		"counter": counter_reducer.get("initial_setup").call()
	}
	
func _init():
	defaults = defaults.call()

func get_instance() -> Dictionary:
	return defaults
