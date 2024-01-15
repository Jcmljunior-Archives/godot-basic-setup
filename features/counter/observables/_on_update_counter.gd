extends Node

@onready var counter_label = get_node("/root/StateManager/Counter/MarginContainer/VBoxContainer/CounterLabel")

var _on_update_counter = func(current_state: Dictionary, next_state: Dictionary) -> bool:
	#var label = get_node("/root/StateManager/Counter/MarginContainer/VBoxContainer/CounterLabel")
	#label.text = str(next_state.get("value"))
	print(counter_label)
	print(next_state)
	#print(get_tree().get_root())
	
	return true
