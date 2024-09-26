extends Node
#@onready var Cards = preload("res://Scripts/Cards.gd").new()
@onready var hand_console = $HandConsole

var playerState = {
	"workers": 2,
	"soldiers": 0,
	"scouts": 0,
	"knights": 0,
	"stables": 0,
	"expansions": 0,
	"worker_max": 5,
	"hand_max": 4,
	"hand_max_possible": 6,
	"gold": 0,
	"hand": [],
	"deck": []
}
#
#func _ready():
#	start_turn()
#
#func start_turn():
#	create_deck(playerState)
#	draw_hand(playerState.deck)
#	gold_change(playerState.workers)
#
#func create_deck(state):
#	var cards = Cards.cards
#	var startingDeck = [cards.building.stables, cards.building.town, cards.unit.worker, cards.unit.worker, cards.unit.worker, cards.unit.soldier, cards.unit.soldier, cards.unit.soldier, cards.unit.scout, cards.unit.scout]
#	for i in state.stables:
#		startingDeck.append(cards.unit.knight)
#		startingDeck.append(cards.unit.knight)
#	for i in state.expansions:
#		startingDeck.append(cards.unit.worker)
#		startingDeck.append(cards.unit.worker)
#	#remove workers from deck if max workers achieved
#	if state.workers >= state.worker_max:
#		for i in startingDeck:
#			if startingDeck.name == "Worker":
#				startingDeck.remove(i)
#	playerState.deck = startingDeck
#
#func draw_hand(d):
#	#randomize the seed
#	randomize()
#	d.shuffle()
#	var hand = d.slice(0, playerState.hand_max)
#	playerState.hand = hand
#	hand_console.add_cards(hand)
#
#func gold_change(num):
#	playerState.gold += num
#
#

	

#Backend functions to match turn cycle
#0. Func: Income generation - find income numbers based on active worker cards - DONE
#0. Func: Income Display - triggered each card played and start of turn - DONE
#1. Func: Create deck - based on played base cards. Playing base cards increases deck size and possible draws - DONE
#1. Func: Draw from deck - draw randomly from deck based on max hand - DONE
#2. Func: Play card - does specific action based on the played card. Needs a library of card effects - DONE
#2. Func: Remove from hand - played cards should be removed from the player's hand after use
#3. Func: Player Tactics - lock in the player's selected tactics for the turn
#4. Func: End turn - Triggers the next steps of the turn cycle
#5. Func: AI turn - AI cards and tactics are locked in. For MVP this is a set of static instructions the ai takes every turn
#6. Func: Turn resolver - Units move according to tactics, buildings build according to played cards, 
#6. Func: Battle resolver - Player and ai units in the same space fight. Resolver figures out who wins and by how much
#7. Func: Player Log - In MVP logs of the turn resolver and battle resolver are relayed to the player in the logs
#Turn Cycle
#0. Generate income based on played worker cards
#1. Draw hand
#2. Allow player to play cards
#3. Allow player to choose tactics: offense, defence or balance
#4. Player ends turn
#5. Enemy ai plays 
#6. Interactions happen in map
#7. Communicate interactions to player
