extends Button

func _on_decrement_button_pressed():
	var store = get_node("/root/StateManager").get("store")
	
	store.get("dispatch").call([
		CounterActions.get_instance().get("decrement_counter").call()
	] as Array[Dictionary])
