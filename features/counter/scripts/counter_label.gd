extends Label

var _block_counter_when_value_equals_zero = func(current_state: Dictionary, next_state: Dictionary) -> bool:
	if current_state.get("value") == 0:
		print("Uma ou mais ações foram  bloqueadas por um middleware.")
		
		return false
	
	return true

var _show_increment_counter = func(current_state: Dictionary, next_state: Dictionary) -> bool:
	print("A ação %s foi executada alterando o seu valor de estado de %s para %s." % [ CounterConstants.INCREMENT_COUNTER, current_state.get("value"), next_state.get("value") ])
	
	return true

var _show_decrement_counter = func(current_state: Dictionary, next_state: Dictionary) -> bool:
	print("A ação %s foi executada alterando o seu valor de estado de %s para %s." % [ CounterConstants.DECREMENT_COUNTER, current_state.get("value"), next_state.get("value") ])
	
	return true

var _on_update_counter = func(_current_state: Dictionary, next_state: Dictionary) -> bool:
	text = str(next_state.get("value"))
	
	return true
