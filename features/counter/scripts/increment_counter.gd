extends Button

#@onready var store = get_node("/root/StateManager").get("store")

func _on_increment_button_pressed():
	var store = get_node("/root/StateManager").get("store")
	
	store.get("dispatch").call([
		CounterActions.get_instance().get("increment_counter").call()
	] as Array[Dictionary])

