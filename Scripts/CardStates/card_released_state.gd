extends CardState

var played: bool

func enter():
	card_ui.card_name.text = "Released"

	played = false
	
	if not card_ui.targets.is_empty():
		played = true
		
func on_input(_event: InputEvent):
	if played: 
		return
	
	transition_requested.emit(self, CardState.State.BASE)
