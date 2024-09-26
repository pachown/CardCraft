class_name PlayerStats
extends Resource

@export var starting_deck: CardPile
@export var cards_per_turn: int
@export var max_gold: int
@export var current_gold: int

var gold: int: set = set_gold
var deck: CardPile
var discard: CardPile
var draw_pile: CardPile

func set_gold(value: int):
	gold = value
#	stats_changed.emit()

func reset_gold():
	self.gold = max_gold

func can_play_card(card: Card) -> bool:
	return gold >= card.cost
 
func fight(attackers):
	var attackers_att = 0
	for i in attackers:
		attackers_att += attackers[i].Attack
	if attackers_att <= 2:
		attackers.clear()
		return
#	if attackers_att > attack:
#		location_death()
#	calculate_losses(attackers, units)

func calculate_losses(enemyUnits, friendlyUnits):
		var defense_advantage = 2
