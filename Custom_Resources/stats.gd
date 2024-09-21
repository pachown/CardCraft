class_name Stats
extends Resource

signal stats_changed
#should I even have a defense stat? calculating attack vs attack is 
#easier and simpler to understand
@export var total_defense := 2
@export var total_attack := 2
@export var units := []
@export var workers:= []
@export var buildings := []

var defense = set_defense(units, true)
var attack = set_attack(units, true)

func set_defense(u, home):
	var def_calc = 0
	if home:
		def_calc += 2
	for i in u:
		def_calc += u[i].defense
	attack = def_calc
	stats_changed.emit()
	
func set_attack(u, home):
	var att_calc = 0
	if home:
		att_calc += 2
	for i in u:
		att_calc += u[i].Attack
	attack = att_calc
	stats_changed.emit()
	
func fight(attackers):
	var attackers_att = 0
	var attackers_def = 0
	for i in attackers:
		attackers_att += attackers[i].Attack
		attackers_def += attackers[i].Defense
	if attackers_att <= 2:
		attackers.clear()
		return
	if attackers_att > defense:
		location_death()
	calculate_losses(attackers, units)

func calculate_losses(enemyUnits, friendlyUnits):
		var defense_cost = 2
	

func location_death():
	units.clear()
	buildings.clear()
	workers.clear()
