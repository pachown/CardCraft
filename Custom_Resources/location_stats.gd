class_name LocationStats
extends Stats

func create_instance() -> Resource:
	var instance: LocationStats = self.duplicate()
#	instance.buildings = [town]
#	instance.workers = [worker, worker, worker, worker]
#	instance.reset_gold()
#	instance.deck = instance.starting_deck.duplicate()
#	instance.draw_pile = CardPile.new()
#	instance.discard = CardPile.new()
	return instance
#

