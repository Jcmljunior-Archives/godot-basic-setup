extends Node

@onready var store: Dictionary = Store.get_instance()

func _ready():
	
	# Registro dos redutores.
	store.get("register").call(
		CounterReducers.get_instance().get("counter")
	)
	
	# Registro dos observadores.
	store.get("add_listener").call(
		"counter",
		[CounterConstants.INCREMENT_COUNTER, CounterConstants.DECREMENT_COUNTER],
		$Counter/MarginContainer/VBoxContainer/CounterLabel.get("_on_update_counter")
	)
	
	# Registro dos observadores de entrada/saída.
	store.get("add_listener").call(
		"counter",
		[CounterConstants.INCREMENT_COUNTER],
		$Counter/MarginContainer/VBoxContainer/CounterLabel.get("_show_increment_counter")
	)
	
	store.get("add_listener").call(
		"counter",
		[CounterConstants.DECREMENT_COUNTER],
		$Counter/MarginContainer/VBoxContainer/CounterLabel.get("_show_decrement_counter")
	)
	
	# Observador de bloqueio.
	store.get("add_listener").call(
		"counter",
		[CounterConstants.DECREMENT_COUNTER],
		$Counter/MarginContainer/VBoxContainer/CounterLabel.get("_block_counter_when_value_equals_zero"),
		Store.ListenerEventMode.ON_READY,
	)
	
