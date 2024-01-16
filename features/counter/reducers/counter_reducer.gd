var initial_setup = func():
	return {
		"name": "counter",
		"state": {
			"value": 0,
			"notifier": true,
			"sign": Sentinela.get_instance().get("sign").call(str(0)),
		},
		"accept_action": [
			CounterConstants.INCREMENT_COUNTER,
			CounterConstants.DECREMENT_COUNTER,
		],
		"method": counter,
		"listeners": []
	}

var counter = func(current_state: Dictionary, action: Dictionary) -> Dictionary:
	var next_state = Collections.get("shallow_copy").call(current_state)
	
	match action.get("type"):
		CounterConstants.INCREMENT_COUNTER:
			next_state["value"] = current_state.get("value")+1
			
			return next_state
			
		CounterConstants.DECREMENT_COUNTER:
			next_state["value"] = current_state.get("value")-1
			
			return next_state
			
		_:
			return current_state
