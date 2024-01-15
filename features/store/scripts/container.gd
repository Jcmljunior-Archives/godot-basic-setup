extends Node

@onready var store: Dictionary = Store.get_instance()


func _ready():
	
	# Registro dos redutores.
	store.get("register").call(
		CounterReducers.get_instance().get("counter")
	)
	
	# Registro dos observadores.
	store.get("add_listener").call(
		CounterReducers.get_instance().get("counter").get("name"),
		[CounterConstants.INCREMENT_COUNTER, CounterConstants.DECREMENT_COUNTER],
		#Observables.get_instance().get("_on_update_counter"),
		Observables._on_update_counter,
	)
	
	#print(get_tree().get_root())
	
