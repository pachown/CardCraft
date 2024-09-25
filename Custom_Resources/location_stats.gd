class_name LocationStats
extends Stats
#
#@export var starting_deck: CardPile
#@export var cards_per_turn: int
#@export var max_gold: int
#
#var gold: int: set = set_gold
#var deck: CardPile
#var discard: CardPile
#var draw_pile: CardPile

#func set_gold(value: int):
#	gold = value
#	stats_changed.emit()
#
#func reset_gold():
#	self.gold = max_gold
#
#func can_play_card(card: Card) -> bool:
#	return gold >= card.cost
#
func create_instance() -> Resource:
	var instance: LocationStats = self.duplicate()
	instance.buildings = [preload("res://Factions/Gothic/Cards/Town.tres")]
	instance.workers = [preload("res://Factions/Gothic/Cards/Worker.tres"), preload("res://Factions/Gothic/Cards/Worker.tres")]
#	instance.reset_gold()
#	instance.deck = instance.starting_deck.duplicate()
#	instance.draw_pile = CardPile.new()
#	instance.discard = CardPile.new()
	return instance
	

