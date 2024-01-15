extends Node

var defaults = func() -> Dictionary:
	const increment_counter = preload("res://features/counter/actions/increment_counter.gd")
	const decrement_counter = preload("res://features/counter/actions/decrement_counter.gd")

	return {
		"increment_counter": increment_counter.new().get("increment_counter"),
		"decrement_counter": decrement_counter.new().get("decrement_counter")
	}

func _init():
	defaults = defaults.call()

func get_instance() -> Dictionary:
	return defaults
