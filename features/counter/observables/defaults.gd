extends Node

#var defaults = func() -> Dictionary:
	#var _on_update_counter = load("res://features/counter/observables/_on_update_counter.gd").new()
	#
	#return {
		#"_on_update_counter": _on_update_counter.get("_on_update_counter"),
	#}
#
#
#func _init():
	#defaults = defaults.call()
#
#func get_instance():
	#return defaults

@onready var label = get_node("/root/StateManager/Counter/MarginContainer/VBoxContainer/CounterLabel")

var _on_update_counter = func(current_state: Dictionary, next_state: Dictionary) -> bool:
	label.text = str(next_state.get("value"))
	
	return true
